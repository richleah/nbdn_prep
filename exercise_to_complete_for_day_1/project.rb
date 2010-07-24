require 'fileutils'

class Project
  attr_reader :name 
  attr_reader :startup_dir 
  attr_reader :tests_dir 
  attr_reader :startup_config
  attr_reader :startup_extension

  def self.name
    @name = "nothinbutdotnetprep"
  end

  def self.startup_dir
    @startup_dir = "artifacts"
  end

  def self.specs_dir
    @specs_dir = "artifacts/specs"
  end

  def self.spec_assemblies
    @spec_assemblies = Dir.glob(File.join('artifacts',"nothin*specs.dll"))
  end

  def self.startup_config
    @startup_config = "app.config"
  end

  def self.startup_extension
    @startup_extension = ".dll"
  end

end
