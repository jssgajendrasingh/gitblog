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
        println(allBlog)
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
        println(name1)
        render(view: "home",  model: [name:name1])

    }
    def success(){
        //render "account successfully create Please login "
    }
    def demo(){}
    def viewData(){
        def user = springSecurityService.currentUser as User
        def uname=user.userName
        List<User> userData=User.findAllByUserName(uname)
        def userAddressId=user.addresses
       /* println(userData)
         println(userAddressId[0])
        def a=userAddressId[0].houseNumber
         println(a)
        def add=Address.findAllById()
        print(add)*/
        render(view: "home",  model:[userAddresses: userAddressId,userRecords: userData,name:uname])
    }
    def edit(){

    }
    def abc() {
        User currentUser = springSecurityService.currentUser as User
        println(currentUser.id)
        /*currentUser.mobileNumber = params.mobileNumber
        currentUser.emailId = params.emailId
        currentUser.occupation = params.occupation
        if (currentUser.validate()) {

                currentUser.save(flush: true,failOnError: true)
        } else {
            log.error("UPDATE Error while saving Group Object $currentUser")
        }*/
        updateInformationService.insertUpdatedValue(params.emailId, params.mobileNumber, params.occupation, currentUser)
        updateInformationService.insertUpdatedAddressValue(params.houseNumber as List, params.roadName as List, params.areaName as List)


    }

}
