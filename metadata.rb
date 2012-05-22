maintainer       "Klaus Alfer"
maintainer_email "klaus.alfert@googlemail.com"
license          "All rights reserved"
description      "Installs/Configures camp-pg-demo-chef"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w{ database postgresql }.each do |cb|
  depends cb
end

%w{ debian ubuntu }.each do |os|
  supports os
end