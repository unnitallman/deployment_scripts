def create_folder(folder_path)
  `mkdir -p #{folder_path}`
end

def copy_code(source, target)
  `cp -r #{source} #{target}`
end

def copy_routes(target, site)
  `cp #{target}/config/site_specific_routes/#{site}_routes.rb #{target}/config/site_specific_routes.rb`
end

def copy_timezone(target, site)
  `cp #{target}/config/site_specific_timezones/#{site}_timezone.rb #{target}/config/site_specific_timezone.rb`
end

def setup_database_conf(target, site)
  `echo 'database: btt_#{site}' > #{target}/config/production_db.yml`
end
