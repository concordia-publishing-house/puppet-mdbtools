# Examples
#
#  include mbdtools

class mdbtools {
  require homebrew
  
  exec { "install glib":
    command => "brew boxen-install",
    before  => Package["mdbtools"],
  }
  
  package { 'mdbtools':
    ensure   => installed,
    provider => homebrew,
  }
}
