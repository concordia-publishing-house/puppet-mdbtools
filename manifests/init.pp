# Examples
#
#  include mbdtools

class mdbtools {
  require homebrew
  require libffi
  include boxen::config
  
  exec { "install glib":
    command => "brew boxen-install glib",
    before  => Package["mdbtools"],
    cwd     => ${boxen::config::home}
  }
  
  package { 'mdbtools':
    ensure   => installed,
    provider => homebrew,
  }
}
