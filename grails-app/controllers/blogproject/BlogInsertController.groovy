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
        render(view: 'blog')
    }

    def blogUpdate() {
        println(params.userBlog)
        List list = params.keySet() as List
        println(list)
        def blogid = list.get(1)
        println(blogid)
        Blog blogdetails = Blog.findById(blogid)
        println(blogdetails)
        println(blogdetails.userBlog)
        blogdetails.userBlog = params.userBlog
        if (blogdetails.validate()) {
            blogdetails.save(flush: true, failOnError: true)
        } else {
            blogdetails.errors.each {
                println(it)
            }
            log.error("Error while update Group Object $blogdetails")
        }
        render(view: 'blogUpdate')

    }
}
