def connect_to ymlName
	filename = File.join(Rails.root,'config',ymlName+'.yml')
	mp = YAML.load_file(filename)[Rails.env]
	c = ActiveRecord::Base.establish_connection mp 
  return c.connection 
end 

