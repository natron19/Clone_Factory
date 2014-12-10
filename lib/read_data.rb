require 'csv' 

class ReadData 

  attr_accessor :return_val

  def initialize(file)
    @file = file
  end 

  def read_file()
    return unless File.exists?(@file)
    return_val = []

    CSV.foreach(@file, headers: true, quote_char: '"', col_sep: ',') do |row|
      return_val << row
    end

    return_val
   end
end 
