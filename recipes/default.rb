#
# Cookbook Name:: camp-pg-demo-chef
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# create a postgresql database
postgresql_database 'camp2012db' do
  connection ({:host => "127.0.0.1", :port => 5432, :username => 'postgres', :password => node['postgresql']['password']['postgres']})
  action :create
end

postgresql_database_user 'zeg' do
	connection ({:host => "127.0.0.1", :port => 5432, :username => 'postgres', :password => node['postgresql']['password']['postgres']})
	password 'geheim!'
	action :create
end;

postgresql_database_user 'zeg' do
	connection ({:host => "127.0.0.1", :port => 5432, :username => 'postgres', :password => node['postgresql']['password']['postgres']})
	password 'geheim!'
    database_name 'camp2012db'
#    host '%'
#    privileges [:select,:update,:insert]
	action :grant
end;