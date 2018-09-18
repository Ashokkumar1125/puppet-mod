class roles::role_nexus_server {

  # puppetlabs-java
  # NOTE: Nexus requires
  class{ 'java8': }

  class{ '::nexus':
    version    => '2.8.0',
    revision   => '05',
    nexus_root => '/srv', # All directories and files will be relative to this
  }

  Class['java8'] ->
  Class['::nexus']
}
