require './db/questions_table_populator.rb'

task :db_create do
  sh('psql', '-c', 'CREATE DATABASE quizzical_development;')
  sh('psql', '-c', 'CREATE DATABASE quizzical_test;')
end

task :db_populate do
  populate_questions_table
end

task :db_create_and_populate do
  sh('psql', '-c', 'CREATE DATABASE quizzical_development;')
  sh('psql', '-c', 'CREATE DATABASE quizzical_test;')
  populate_questions_table
end

task :db_create_pruduction do
  sh('psql', '-c', 'CREATE DATABASE quizzical_production;')
end
