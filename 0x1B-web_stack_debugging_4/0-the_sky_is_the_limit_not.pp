# Increase the ULIMIT for Nginx
exec { 'fix-for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/usr/local/bin', '/bin'],
  onlyif  => "grep -q '4096' /etc/default/nginx",
  require => File['/etc/default/nginx'],
}

# Define a file resource to manage the Nginx config
file { '/etc/default/nginx':
  ensure  => file,
  content => template('nginx/default.nginx.erb'), # Use a Puppet template or provide the content here.
}

# Restart Nginx service when the config changes
service { 'nginx':
  ensure  => running,
  enable  => true,
  subscribe => Exec['fix-for-nginx'],
}

