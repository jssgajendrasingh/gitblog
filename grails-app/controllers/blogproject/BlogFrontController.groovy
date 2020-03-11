package blogproject

import com.gajendra.Address
import com.gajendra.Blog
import com.gajendra.Role
import com.gajendra.User
import com.gajendra.UserRole
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class BlogFrontController {
    def springSecurityService
    SaveInformationService saveInformationService
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
    def abc(){
        User user=new User(params)
        User currentUser = springSecurityService.currentUser as User
      //  def userId=currentUser.id
        println(user.mobileNumber)
        println(user.emailId)
        println(user.occupation)
        currentUser.mobileNumber = params.mobileNumber
        currentUser.emailId = params.emailId
        currentUser.occupation = params.occupation
        //println(userId)
//        User userDetail=User.get(currentUser.id)
//        println("BLOG " +userDetail)
//        println(userDetail.id)
//        userDetail.mobileNumber=user.mobileNumber
//        userDetail.emailId=user.emailId
//        userDetail.occupation=user.occupation
        if (currentUser.validate()) {
            try {
                currentUser.save(failOnError: true)
            }
            catch (Exception)
                println("if block")
        } else {
            log.error("GAJENDRASingh Error while saving Group Object $currentUser")
        }







    }

}
