package com.gajendra

class Address {
    static hasMany = [user:User]
    String houseNumber
    String roadName
    String areaName

    static constraints = {
        houseNumber nullable: false ,blank: false
        roadName nullable: false,blank: false
        areaName nullable: false,blank: false

    }
}
