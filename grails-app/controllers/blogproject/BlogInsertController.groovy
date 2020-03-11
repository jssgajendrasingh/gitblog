package blogproject

import com.gajendra.Blog
import com.gajendra.User
import grails.plugin.springsecurity.annotation.Secured
@Secured('permitAll')
class BlogInsertController {
    def springSecurityService
    def index() { }
    def blog(){
        Blog blog=new Blog(params)
       // println("BLOG"+params)
        //println(blog)
         def us = springSecurityService.currentUser as User
         //println(user)
         blog.user=us
        if (blog.validate()) {
            blog.save(failOnError: true)
           // redirect(action:'home')
        } else {
            blog.errors.each {
                println(it)
            }
            log.error("Error while saving Group Object $blog")
        }
    }
}
