package blogproject
import grails.plugin.springsecurity.annotation.Secured

class BlogFrontController {
    @Secured('ROLE_ADMIN')
    def index() { }
}
