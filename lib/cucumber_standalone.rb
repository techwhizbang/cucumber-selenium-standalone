require 'thor'
require 'thor/group'
require 'fileutils'

class CucumberStandalone < Thor::Group
  include Thor::Actions

  VERSION = "0.0.3"

  argument :dir_name

  def self.source_root
    File.join(File.dirname(__FILE__), '..', 'templates')
  end

  def create_new_cucumber_directory
    self.destination_root = File.expand_path(dir_name, destination_root)
    make_empty_directory
    FileUtils.cd(destination_root)
    gemfile_rakefile_cukeyml
    features_directory_and_files
  end

  protected

  def make_empty_directory
    empty_directory '.'
  end

  def features_directory_and_files
    empty_directory 'features'

    inside 'features' do
      template 'example.feature', 'example.feature'
      empty_directory 'support'
      template 'support/env.rb', 'support/env.rb'
      template 'support/hooks.rb', 'support/hooks.rb'
      template 'support/paths.rb', 'support/paths.rb'
      template 'step_definitions/web_steps.rb'
    end
  end

  def gemfile_rakefile_cukeyml
    inside destination_root do
      template 'Gemfile'
      template 'Rakefile'
      template 'cucumber.yml'
    end
  end

end
