package blogproject

import com.gajendra.Address
import com.gajendra.User
import grails.gorm.transactions.Transactional

@Transactional
class SaveInformationService {

    def serviceMethod() {

    }
    User user=new User()
    Address address

    User insertValue(String firstName, String lastName, String emailId, String mobileNumber, String occupation, String userName, String password)
    {
        user.firstName=firstName
        user.lastName=lastName
        user.emailId=emailId
        user.mobileNumber=mobileNumber
        user.occupation=occupation
        user.userName=userName
        user.password=password
        return user
    }

    Address insertAddValue(List houseNumber = [], List roadName = [], List areaName = []) {
        address = new Address()
        for (int i = 0; i < houseNumber.size(); i++) {
            address = new Address()
            address.houseNumber = houseNumber[i]
            address.roadName = roadName[i]
            address.areaName = areaName[i]
            if (address.validate()) {
                address.save(failOnError: true)

            } else {
                log.error("address  Error while saving Group Object $address")
            }
            user.addToAddresses(address)

        }
    }
}
