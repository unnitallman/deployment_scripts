require 'helper'

sites = open("apps.list").read.split("\n")

sources_folder = "/home/dpc/sources"
targets_folder = "/home/dpc/app/"

branch = "patches"

sites.each do |site|
  source = "#{sources_folder}/#{branch}"
  target = "#{targets_folder}/app/#{site}/current"

  create_folder target

  copy_code source target

  copy_routes target, site
  copy_timezone target, site
  setup_database_conf
end

#-------------------------------------------------------------------------------------

