require "rake/testtask"

Rake::TestTask.new(:test) do |t|
    t.libs << "lib"
    t.test_files = FileList.new ['test/**/test_*.rb']
end