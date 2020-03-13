package blogproject

import com.gajendra.*
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class BlogFrontController {
    def springSecurityService
    SaveInformationService saveInformationService
    UpdateInformationService updateInformationService
    def index()
    {
        def allBlog=Blog.createCriteria().list {
            projections {
                property('userBlog')
             }
        }
       [blogname:allBlog]
    }
    def insert(){
        User user=saveInformationService.insertValue(params.firstName,params.lastName,params.emailId,params.mobileNumber,params.occupation,params.userName,params.password)
        if (user.validate()) {
            user.save(failOnError: true)
        } else {
            log.error("GAJENDRASingh Error while saving Group Object $user")
        }
        Address address=saveInformationService.insertAddValue(params.houseNumber as List,params.roadName as List,params.areaName as List)
        def role= Role.findByAuthority("ROLE_USER")
        UserRole userRole=UserRole.create(user, role,true)
        if(userRole!=null){
             redirect(action:'success')
        }
        else {
            render "Account not be create please try Again! "
        }
     }
    def home(){
        redirect(action: 'login')
    }
    def login(){
        def user = springSecurityService.currentUser as User
        def name1=user.userName
        if (user.authorities.any { it.authority == "ROLE_ADMIN" }) {
            render(view: 'admin',  model: [name:name1])
        }
        else {
            render(view: "home",  model: [name:name1])
        }

    }
    def success(){
        //render "account successfully create Please login "
    }
    def denied(){}
    def demo() {}

    def viewData() {
        def user = springSecurityService.currentUser as User
        def uname = user.userName
        List<User> userData = User.findAllByUserName(uname)
        def userAddressId = user.addresses
        render(view: "viewData", model: [userAddresses: userAddressId, userRecords: userData, name: uname])
    }

    def viewBlog() {
        def user = springSecurityService.currentUser as User
        List<Blog> blogList = Blog.findAllByUser(user)
        if (!blogList.isEmpty()) {
            render(view: "viewBlog", model: [blogdetails: blogList])
        } else {
            render(view: 'demo')
        }
    }

    def edit() {
        def user = springSecurityService.currentUser as User
        def uname = user.userName
        List<User> userData = User.findAllByUserName(uname)
        def userAddressId = user.addresses
        render(view: "edit", model: [userAddresses: userAddressId, userRecords: userData, name: uname])
    }

    def abc() {
        User currentUser = springSecurityService.currentUser as User
        println(currentUser.id)
        updateInformationService.insertUpdatedValue(params.firstName, params.lastName, params.emailId, params.mobileNumber, params.occupation, currentUser)
        updateInformationService.insertUpdatedAddressValue(params.houseNumber as List, params.roadName as List, params.areaName as List)

        redirect(action: 'login')
    }

    def admin() {

    }

    def editBlog() {
        List list =params.keySet() as List
        def  blogid=list.get(0)
        def  blogdetails = Blog.findById(blogid)
       render(view: "editBlog", model: [blogdetails: blogdetails])
    }
    def deletedBlog(){
        println(params)
        List list =params.keySet() as List
        def  blogid=list.get(0)
        def  blogdetails = Blog.get(blogid)
         blogdetails.delete(flush: true, failOnError: true)
        render(view: 'deletedBlog')

    }
    def view() {
        String s1 = "userString"
        String s2 = "address"
        String s3 = "blog"
        def table = params.value
        switch (table) {
            case s1:
                def usersDetails = User.list()
                render(view: "user", model: [userRecords: usersDetails])
                break
            case s2:
                def addressDetails = Address.list()
                render(view: "address", model: [userRecords: addressDetails])
                break
            case s3:
                def blogDetails = Blog.list()
                render(view: "blog", model: [userRecords: blogDetails])
                break
            default:
                render(view: 'admin')


        }


    }
}
