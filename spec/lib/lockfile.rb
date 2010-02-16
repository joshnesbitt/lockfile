describe LockFile do
  
  before do
    @lockfile_args = [File.expand_path(File.join(File.dirname(__FILE__), "..", "tmp")), "example.lock"]
    
    File.delete(@lockfile_args.join("/")) if File.exists?(@lockfile_args.join("/"))
  end
  
  it "should return a qualified pathname" do
    @lockfile = LockFile.new(*@lockfile_args)
    
    @lockfile.path.should =~ /tmp/
    @lockfile.filename.should == "example.lock"
    @lockfile.qualified_path.should =~ /tmp\/example.lock/
  end
  
  it "should have the correct error classes present" do
    LockFile::LockFileError.ancestors.should include(StandardError)
    LockFile::LockFileExists.ancestors.should include(StandardError)
    LockFile::LockFileMissing.ancestors.should include(StandardError)
  end
  
  it "should not initially be locked" do
    @lockfile = LockFile.new(*@lockfile_args)
    
    @lockfile.locked?.should be_false
  end
  
  it "should be able to lock" do
    @lockfile = LockFile.new(*@lockfile_args)
    
    @lockfile.lock!.should be_true
    @lockfile.locked?.should be_true
    @lockfile.unlocked?.should be_false
  end
  
  it "should be able to unlock" do
    @lockfile = LockFile.new(*@lockfile_args)
    
    @lockfile.lock!.should be_true
    @lockfile.locked?.should be_true
    @lockfile.unlocked?.should be_false
    @lockfile.unlock!.should be_true
    @lockfile.locked?.should be_false
    @lockfile.unlocked?.should be_true
  end
  
  it "should return the process ID of the lockfile if it exists" do
    @lockfile = LockFile.new(*@lockfile_args)
    
    @lockfile.process_id.should be_nil
    @lockfile.lock!
    @lockfile.process_id.should_not be_nil
    @lockfile.process_id.class.should == Fixnum
  end
  
end
