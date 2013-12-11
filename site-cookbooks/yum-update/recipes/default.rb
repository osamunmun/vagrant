#
# Cookbook Name:: yum-update
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

yum_package "yum-fastestmirror" do
  action :install
end

execute "yum-update" do
  user "root"
  command "yum -y update"
  action :run
end

%w[zsh vim mlocate httpd].each do |pkg|
  yum_package pkg do
    action :install
  end
end
