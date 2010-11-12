require 'spec_helper'
require 'tempfile'

describe Pygments do
  
  it "should default to text formatter" do
    syntaxer = Pygments.new(File.new(__FILE__))
    cmd = Pygments.bin + ' -l text -f html'
    syntaxer.should_receive(:execute).with(cmd).and_return(true)
    syntaxer.colorize
  end

  it "should accept options" do
    syntaxer = Pygments.new(File.new(__FILE__), :ruby)
    cmd = Pygments.bin + ' -l ruby -f html'
    syntaxer.should_receive(:execute).with(cmd).and_return(true)
    syntaxer.colorize
  end

  it "should work with strings" do
    syntaxer = Pygments.new("class New\nend", :ruby)
    syntaxer.colorize.should =~ /highlight/
  end

  it "should work with files" do
    contents = "class New\nend"
    syntaxer = Pygments.new(contents, :ruby)
    file_output = syntaxer.colorize

    Tempfile.open 'pygments-test' do |tmp|
      tmp << contents
      tmp.flush
      syntaxer = Pygments.new(File.new(tmp.path), :ruby)
      syntaxer.colorize.should == file_output
    end
  end

  it "should alias to_s" do
    @expected = Pygments.new(File.new(__FILE__), :ruby).colorize
    
    syntaxer = Pygments.new(File.new(__FILE__), :ruby)
    syntaxer.to_s.should == @expected
  end

  it "should have a colorize class method" do
    @expected = Pygments.new(File.new(__FILE__), :ruby).colorize
    
    Pygments.colorize(File.new(__FILE__), :ruby).should == @expected
  end
  
end