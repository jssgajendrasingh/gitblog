package com.gajendra

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic
@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1
    static hasMany = [addresses: Address]
    String firstName
    String lastName
    String emailId
    String mobileNumber
    String occupation
    String userName
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }

    static constraints = {
        firstName nullable: false ,blank: false
        lastName nullable: true,blank: true
        emailId nullable: false,blank: false,email: true
        mobileNumber nullable:false,blank: false
        occupation nullable: false,blank: false
        userName nullable: false,blank: false,unique: true
        password nullable: false,blank: false
    }

  /*  static mapping = {
    password column: '`password`'
    }*/
}
