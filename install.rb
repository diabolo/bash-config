#!/usr/bin/env ruby

def link_links
  puts `echo "Sym linking ..."`
  puts  `pwd`
  targets = Dir.new("~/.bash/links").entries
  targets.each do |target|
    puts target.inspect
    debugger
    FileUtils.symlink(src, dest) 
  end
end

def backup_old_config
  `echo "Backing up old config"`
  `mkdir ~/.bash_old_config`
  `mv ~/.profile ~/.bash_old_config/profile`
  `mv ~/.bashrc ~/.bash_old_config/bashrc`
end

def write_config
  `echo "Writing new config"`
end


# backup_old_config
link_links
write_config
