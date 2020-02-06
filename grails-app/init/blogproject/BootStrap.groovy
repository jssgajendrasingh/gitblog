package blogproject

import com.gajendra.Role
import com.gajendra.User
import com.gajendra.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role(authority: 'ROLE_ADMIN').save()

        def testUser = new User(username: 'root', password: '1234').save()

        UserRole.create(testUser, adminRole,false)
    }
    def destroy = {
    }
}
