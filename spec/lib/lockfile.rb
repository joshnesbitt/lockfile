describe LockFile do
  
  before do
    # create tmpfile
  end
  
  it "should return a qualified pathname" do
    @lockfile = LockFile.new("../tmp", "example.lock")
    
    @lockfile.path.should == "../tmp"
    @lockfile.filename.should == "example.lock"
    @lockfile.qualified_path.should == "../tmp/example.lock"
  end
  
end
