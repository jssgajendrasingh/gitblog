package com.gajendra

class Address {
    //User user
    String houseNumber
    String roadName
    String areaName

    static constraints = {
        houseNumber nullable: false ,blank: false
        roadName nullable: false,blank: false
        areaName nullable: false,blank: false

    }
}
