package com.gajendra

class LoginDetails {
    String userName
    String password
   // static belongsTo =[userDetails : UserDetails]
    UserDetails userDetails
    static constraints = {
        userName nullable: false,blank: false,unique: true,size: 5..10
        password nullable: false,blank: false,size: 6..15
    }
}
