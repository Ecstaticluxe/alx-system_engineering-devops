# Create a Puppet manifest file, e.g., flask_install.pp

# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Install Flask using pip3 with the specific version
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'], # Ensure python3-pip is installed first
}
