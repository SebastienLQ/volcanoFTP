#!/usr/bin/ruby
require 'yaml'
#Clear and test complete application

#Load parameters File
file_Parameters = YAML.load_file(Dir.pwd + "/volcano.conf")
#Loggin

if ARGV[0] == "start"
  puts "Starting Volcano Server"
  puts "Run to #{file_Parameters['ip']}:#{file_Parameters['port']}"
elsif ARGV[0] == "stop"
  puts "Stopping Volcano Serveur"
  if ARGV[1].exist?
    puts "Arret via PID"
  else
    puts "Commande Arret"
  end
#elsif ARGV[0] == "configure"
#  File.open(Dir.pwd + "/config.yml", "w") do |file|
#    puts file
else
  puts "Command fail"
end
