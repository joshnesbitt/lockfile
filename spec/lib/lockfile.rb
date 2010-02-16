describe LockFile do
  
  before :each do
    @lockfile_args = ["../tmp", "example.lock"]
    
    File.delete(@lockfile_args.join("/")) if File.exists?(@lockfile_args.join("/"))
  end
  
  it "should return a qualified pathname" do
    @lockfile = LockFile.new(*@lockfile_args)
    
    @lockfile.path.should == "../tmp"
    @lockfile.filename.should == "example.lock"
    @lockfile.qualified_path.should == "../tmp/example.lock"
  end
  
  it "should have the correct error classes present" do
    LockFile::LockFileError.ancestors.should include(StandardError)
    LockFile::LockFileExists.ancestors.should include(StandardError)
    LockFile::LockFileMissing.ancestors.should include(StandardError)
  end
  
end
