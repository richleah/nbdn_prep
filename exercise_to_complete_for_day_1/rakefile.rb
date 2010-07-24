require 'build_utilities.rb'
require 'project.rb'
require 'rake/clean'
require 'fileutils'

local_settings = LocalSettings.new
mspec_options = []

COMPILE_TARGET = 'debug'
CLEAN.include("artifacts",'**/bin','**/obj')


#target folders that can be run from VS
project_startup_dir  = File.join('product',"#{Project.startup_dir}")
project_test_dir  = 'artifacts'

output_folders = [project_startup_dir,project_test_dir]

task :default => ["specs:run"]

task :init  => :clean do
  mkdir "artifacts"
  mkdir "artifacts/specs"
  cp_r "thirdparty/machine.specifications/.","artifacts"
end


desc 'compiles the project'
task :compile do
  MSBuildRunner.compile :compile_target => COMPILE_TARGET, :solution_file => 'solution.sln'
end

namespace :specs do
  desc 'view the spec report'
  task :view do
    system "start #{Project.specs_dir}/#{Project.name}.specs.html"
  end

  desc 'run the specs for the project'
  task :run  => [:init,:compile] do
    sh "artifacts/mspec.exe", "--html", "#{Project.specs_dir}/#{Project.name}.specs.html", "-x", "example", *(mspec_options + Project.spec_assemblies)
  end
end

desc "open the solution"
task :sln do
  Thread.new do
    system "devenv solution.sln"
  end
end
