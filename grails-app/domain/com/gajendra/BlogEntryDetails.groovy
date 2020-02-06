package com.gajendra

class BlogEntryDetails {
    String userBlog
    LoginDetails loginDetails
    static constraints = {
        userBlog nullable: false,blank: false,maxSize: 300
    }
}
