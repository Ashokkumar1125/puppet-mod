class jdk {
Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ] }
# get key
     package { "software-properties-common":
        ensure  => latest,
     }

 
    exec { 'setrepojdk':
        command => 'add-apt-repository ppa:webupd8team/java -y ',
        require => Package['software-properties-common'],
    }
    # update
    exec { 'apt-get update':
        command => "apt-get update",
        require => Exec['setrepojdk']
    }
 
 
    # jdk package
    package { "oracle-java8-installer":
        ensure  => latest,
        require => Exec['apt-get update']
}
}
