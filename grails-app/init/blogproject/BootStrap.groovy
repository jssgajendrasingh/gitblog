package blogproject

import com.gajendra.Address
import com.gajendra.Role
import com.gajendra.User
import com.gajendra.UserRole

class BootStrap {
    InsertAddressService insertAddressService

    def init = { servletContext ->
        Role adminRole = new Role(authority: 'ROLE_ADMIN').save()
       //Role adminRole = new Role(authority: 'ROLE_USER').save()

        User testUser = new User(firstName: 'gajendra',lastName: 'singh',emailId: 'mailmegajendra14@gmail.com', mobileNumber: '8922026861',occupation: 'student',userName: 'gajendraadmin@12345', password: '12345')
        if(testUser.validate()){
            testUser.save()
        }
        else{
            log.error("Error while saving Group Object in BootStrap $testUser")
        }
        UserRole.create(testUser, adminRole,false)
    }
    def destroy = {
    }
}
