package blogproject

import com.gajendra.Address
import com.gajendra.User
import grails.gorm.transactions.Transactional

@Transactional
class UpdateInformationService {

    def serviceMethod() {

    }
    def springSecurityService

    //User user1
    def insertUpdatedValue(String firstName, String lastName,String emailId, String mobileNumber, String occupation, user) {
        user.firstName=firstName
        user.lastName=lastName
        user.emailId = emailId
        user.mobileNumber = mobileNumber
        user.occupation = occupation
        if (user.validate()) {

            user.save(flush: true, failOnError: true)
        } else {
            log.error("UPDATE Error while saving Group Object $user")
        }


    }


    Address insertUpdatedAddressValue(List houseNumber = [], List roadName = [], List areaName = []) {
        User currentUser = springSecurityService.currentUser as User
        def userAddressId = currentUser.addresses

        /* println(currentUser.addresses)
         println(userAddressId[0])
         println(houseNumber)
         println(areaName)
         println(roadName)*/

        for (int i = 0; i < houseNumber.size(); i++) {
            userAddressId[i].houseNumber = houseNumber[i]
            userAddressId[i].areaName = roadName[i]
            userAddressId[i].roadName = areaName[i]
            if (userAddressId[i].validate()) {
                userAddressId[i].save(flush: true, failOnError: true)

            } else {
                log.error("address  Error while saving Group Object $userAddressId")
            }
            //   user.addToAddresses(address)

        }
    }
}
