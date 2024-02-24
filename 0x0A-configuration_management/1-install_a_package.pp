#!/usr/bin/pup
# Install Flask using pip3 with the specific version

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'], # Ensure python3-pip is installed first
}
