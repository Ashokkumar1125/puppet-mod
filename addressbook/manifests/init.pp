class addressbook{
class {'tomcat':}

class {'nexus':
	url => "http://nexus.example.com:8081/nexus",
	username => "admin",
	password => "admin123"
}

nexus::artifact {'public':
	gav => "com.edurekademo.tutorial:addressbook:2.0",
	repository => "spring-releases",
        packaging => 'war',
	output => "/var/lib/tomcat7/webapps/addressbook.war",
}
      

}
