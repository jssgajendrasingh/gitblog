package blogproject

import com.gajendra.Address
import com.gajendra.User
import grails.gorm.transactions.Transactional

@Transactional
class InsertAddressService {

    def serviceMethod() {

    }

    Address insertAddValue(List houseNumber=[], List roadName=[], List areaName=[], User user)
    {   Address address
        for(int i=0;i<houseNumber.size();i++){
            address=new Address()
            address.houseNumber=houseNumber[i]
            address.roadName=roadName[i]
            address.areaName=areaName[i]
            address.user=user
            /*if (address.validate()) {
                address.save(failOnError: true)

            } else {
                log.error("GAJENDRASingh Error while saving Group Object $address")
            }*/
        }
        return address
    }
}
