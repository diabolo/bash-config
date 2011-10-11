#!/usr/bin/env ruby

def link_links
end

def backup_old_config
  `echo "Backing up old config"`
  `mkdir ~/bash_old_config`
  `mv ~/.bashrc ~/.bash_old_config/bashrc`
end

def write_config
end


backup_old_config
write_config
link_links
