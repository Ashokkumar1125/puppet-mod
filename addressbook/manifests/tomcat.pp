class addressbook::tomcat{

# jenkins package
    package { 'tomcat7':
        ensure  => latest,
    }
 
    # jenkins service
    service { 'tomcat7':
        ensure  => running,
        require => Package['tomcat7'],
}

}
