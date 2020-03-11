package com.gajendra

class Blog {
    String userBlog
    User user
    static constraints = {
        userBlog nullable: false,blank: false
    }
}
