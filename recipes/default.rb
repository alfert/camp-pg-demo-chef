#
# Cookbook Name:: camp-pg-demo-chef
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

conn_db = ({:host => "127.0.0.1", :port => node['postgresql']['port'], :username => 'postgres', :password => node['postgresql']['password']['postgres']})

# create a postgresql database
postgresql_database 'camp2012db' do
  connection conn_db
  action :create
end

postgresql_database_user 'zeg' do
	connection conn_db
	password 'geheim!'
	action :create
end;

postgresql_database_user 'zeg' do
	connection conn_db
	password 'geheim!'
    database_name 'camp2012db'
#    host '%'
#    privileges [:select,:update,:insert]
	action :grant
end;