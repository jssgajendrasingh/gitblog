package blogproject

import com.gajendra.Blog
import com.gajendra.User
import grails.plugin.springsecurity.annotation.Secured
@Secured('permitAll')
class BlogInsertController {
    def springSecurityService
    def index() { }
    def blog(){
        Blog blog = new Blog(params)
        def currentUser = springSecurityService.currentUser as User
        blog.user = currentUser
        if (blog.validate()) {
            blog.save(flush: true, failOnError: true)
        } else {
            blog.errors.each {
                println(it)
            }
            log.error("Error while saving Group Object $blog")
        }
    }
}
