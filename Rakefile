#!/usr/bin/env rake

desc "Runs foodcritic linter"
task :foodcritic do
  sh "foodcritic --tags ~FC019 ."
end

desc "Runs tailor"
task :tailor do
  sh "tailor"
end

desc "Provision vagrant"
task :provision do
  system("bundle exec vagrant provision")
end

task :default => 'foodcritic'

