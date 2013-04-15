# Examples
#
#  include mbdtools

class mdbtools {
  require homebrew
  require libtool
  require automake
  include boxen::config

  # fixes libffi dependency by rolling back to v3.0.11
  package { 'https://raw.github.com/mxcl/homebrew/d1319dfa0662af5bb18cf530061adf64cc59c349/Library/Formula/libffi.rb':
    ensure   => installed,
    provider => homebrew,
    before   => Package['mdbtools'],
  }
  
  package { 'mdbtools':
    ensure   => installed,
    provider => homebrew,
  }
}
