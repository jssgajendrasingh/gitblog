package blogproject

import com.gajendra.Address
import com.gajendra.User
import grails.gorm.transactions.Transactional

@Transactional
class InserUserService {

    def serviceMethod() {

    }

    User insertValue(String firstName,String lastName,String emailId,String mobileNumber,String occupation,String userName,String password)
    {
        User user=new User()
        user.firstName=firstName
        user.lastName=lastName
        user.emailId=emailId
        user.mobileNumber=mobileNumber
        user.occupation=occupation
        user.userName=userName
        user.password=password

      /*if (user.validate()) {
            user.save(failOnError: true)

       } else {
            log.error("GAJENDRASingh Error while saving Group Object $user")
        }*/
        return user
    }
}
