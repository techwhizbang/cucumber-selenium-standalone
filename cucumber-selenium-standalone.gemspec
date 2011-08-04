# -*- encoding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + "/lib/cucumber_standalone")

Gem::Specification.new do |s|
  s.name             = %q{cucumber-selenium-standalone}
  s.summary          = %q{A basic archetype for a standalone Cucumber/Capybara/Selenium test suite}
  s.description      = %q{generates directory and required files for any type of project needing to test with Cucumber/Capybara/Selenium}
  s.homepage         = %q{http://github.com/techwhizbang/cucumber-selenium-standalone}
  s.version          = CucumberStandalone::VERSION
  s.authors          = "Nick Zalabak"
  s.email            = %q{techwhizbang@gmail.com}
  s.rubygems_version = %q{1.3.7}
  s.date             = %q{2011-07-26}
  s.require_paths    = ["lib"]
  s.files = ["bin/cucumber-selenium-standalone", "lib/cucumber_standalone.rb",
             "templates/cucumber.yml", "templates/Gemfile",
             "templates/Rakefile"] + Dir.glob("templates/features/**/*")
  s.has_rdoc         = false
  s.executables      = ["cucumber-selenium-standalone"]

  s.add_dependency("thor", "0.14.6")
  s.add_dependency("rake", "0.9.2")
  s.add_dependency('cucumber-rails', "1.0.2")
  s.add_dependency("cucumber", "1.0.2")
  s.add_dependency("selenium-webdriver",  "0.2.2")
  s.add_dependency("capybara", "1.0")
  s.add_dependency("bundler", "~> 1.0.15")
  s.add_dependency("nokogiri", "1.5.0")
  s.add_dependency("rspec", "2.6.0")

end
