require 'spec_helper' 
require 'clone_factory'


describe CloneFactory do 

	context "run clone_factory and create base set of user" do
		

    it "generates a list of users as an array" do 
      c = CombineData.new()
      expect(c.generate).to be_kind_of(Array) 
    end 

    it "generates a list of users" do 
      c = CombineData.new() 
      expect(c.generate.size).to be > 0 
    end 

	end 

	context "run clone_factory with custom number of users" do 
		
    it "generates "

	end 	


end
