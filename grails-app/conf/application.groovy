// Added by the Spring Security Core plugin:
grails.plugin.databasemigration.reports.updateOnStart = true
grails.plugin.databasemigration.reports.changelogFileName = changelog-reports.groovy
grails.plugin.databasemigration.updateAllOnStart = true
grails.plugin.databasemigration.changelogFileName = changelog.groovy
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.gajendra.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.gajendra.UserRole'
grails.plugin.springsecurity.authority.className = 'com.gajendra.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]
