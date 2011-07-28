require File.expand_path(File.dirname(__FILE__) + "/spec_helper")

describe CucumberStandalone do

  before do
    @dir_name = File.dirname(__FILE__)
    @cucumber_standalone = CucumberStandalone.new(:dir_name => @dir_name)
    CucumberStandalone.stub!(:new).and_return(@cucumber_standalone)
  end

  it 'should include the Thor::Actions module' do
    CucumberStandalone.included_modules.include?(Thor::Actions)
  end

  it 'should call create_new_cucumber_directory' do
    @cucumber_standalone.should_receive(:create_new_cucumber_directory)
    CucumberStandalone.start
  end

  context "#create_new_cucumber_directory" do

    before do
      File.stub!(:expand_path)
      FileUtils.stub!(:cd)
    end

    it 'should make an empty directory' do
      @cucumber_standalone.stub!(:gemfile_rakefile_cukeyml)
      @cucumber_standalone.stub!(:features_directory_and_files)
      @cucumber_standalone.should_receive(:make_empty_directory)
      CucumberStandalone.start
    end

    it 'should create a new Gemfile, Rakefile, and cucumber.yml' do
      @cucumber_standalone.stub!(:features_directory_and_files)
      @cucumber_standalone.stub!(:make_empty_directory)
      @cucumber_standalone.should_receive(:gemfile_rakefile_cukeyml)
      CucumberStandalone.start
    end

    it 'should create a new features directory'  do
      @cucumber_standalone.stub!(:gemfile_rakefile_cukeyml)
      @cucumber_standalone.stub!(:make_empty_directory)
      @cucumber_standalone.should_receive(:features_directory_and_files)
      CucumberStandalone.start
    end

  end

end