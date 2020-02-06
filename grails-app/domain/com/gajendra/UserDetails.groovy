package com.gajendra
class UserDetails {
    String firstName
    String middleName
    String lastName
    String emailId
    long mobileNUmber
    String occupation
    Date birthDate
   // static hasOne = [loginDetails : LoginDetails]
    static constraints = {
        firstName nullable: false ,blank: false
        middleName nullable: true,blank: true
        lastName nullable: true,blank: true
        emailId nullable: false,blank: false,email: true
        mobileNUmber nullable:false,blank: false, matches:"9[0-9]{10}"
        occupation nullable: false,blank: false
        birthDate nullable: false,blank: false

    }
}
