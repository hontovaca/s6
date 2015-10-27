#!/usr/bin/ruby
require 'fiddle/import'

module F_libc
  extend Fiddle::Importer
  dlload '/bin/sh' # XXX how to find libc

  extern 'unsigned int alarm(unsigned int)'
  extern 'int mkfifo(char *, unsigned int)'
  extern 'void perror(char *)'
end
