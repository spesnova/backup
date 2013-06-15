maintainer       "Seigo Uchida"
maintainer_email "spesnova@gmail.com"
license          "Apache 2.0"
description      "Installs/Configures backup"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.5"

%W{ ubuntu debian centos redhat amazon }.each do |os|
  supports os
end

%w{build-essential}.each do |cb|
  depends cb
end

suggests "ruby_installer"
suggests "bag_config"
suggests "discovery"

