# Author: Sirupsen
# https://gist.github.com/1110471
#
# requires root permissions in /usr/bin/

star = String.new
8.times { star += "*" }
Star = "\n#{star * 3}\n"

def newblock string
    puts "\n#{Star}#{string}#{Star}\n"
end

newblock "compiling with system ruby"
system 'rvm system'

newblock " move to /tmp/"
Dir.chdir("/tmp\/")
pwd = Dir.pwd

newblock "curl & expand vim73 source"
system 'curl ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2 | tar -xz'

Dir.chdir"#{pwd}/vim73/"
newblock = "Start configure"
system "./configure"

newblock "Start options configuration"
# Will complain about xterm and clipboard - but they're enabled so...
system "./configure --with-features=huge --enable-cscope --enable-pythoninterp --enable-rubyinterp --enable-perlinterp --enable-gui=macvim --enable-multibyte --enable-clipboard=yes --enable-xterm_clipboard=yes"

newblock "Set arch in LDFlags"
arch = "-arch x86_64"
config = File.read("#{Dir.pwd}/src/auto/config.mk")
r = config.gsub(/.*LDFLAGS.*/,"LDFLAGS     = -L. #{arch} -L/usr/local/lib")
File.open("#{Dir.pwd}/src/auto/config.mk", "w") { |file| file.puts r }

newblock "Make"
system "make"

newblock "new vim is in /tmp/vim73/src/vim. please verify by typing /tmp/vim73/src/vim --version\n
you may symlink it to /usr/bin if you'd like. 'sudo make install' will install to /usr/local/share/"
newblock "sudo Make"
system "sudo make install"

newblock "old vim symlink moved to /usr/bin/vim.old"
system "sudo mv /usr/bin/vim /usr/bin/vim.old"
system "sudo ln -s /usr/local/bin/vim /usr/bin/vim"
