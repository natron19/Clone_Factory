require 'read_data' 

describe ReadData do

  context '#read_file' do

    before(:all) do
      @content = ReadData.new("../db/boys_names.csv").read_file
    end

    it 'returns the array' do 
      expect(@content.class).to be_kind_of(Array)
    end

    it 'returns correct number of data' do
      expect(@content.size).to eq 100
    end

    it 'returns correct data' do
      expect(@content.first['boys_names']).to eq "Noah"
    end

  end

end 
