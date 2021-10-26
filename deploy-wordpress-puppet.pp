service { 'firewalld':
  ensure      => 'running',
  enable      => 'true',
}

class { 'docker':
  docker_users => ['vagrant'],
}

docker::run { 'wordpress':
  image   => 'wordpress',
  ports   => '8080:80',
}