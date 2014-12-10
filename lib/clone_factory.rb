require "clone_factory/version"
require "read_data" 
 
class CombineData

  attr_accessor :num, :data, :boys, :girls, :last, :street, :zip_combos 

  #read files and out put several arrays and pull random values for each array 

  def initialize (num=200)
    @num = num
  end 

  def generate
    get_data 
    number_of_boys = (@num / 2).to_i
    number_of_girls = (@num - number_of_boys).to_i
    return_val = []

    number_of_boys.times { return_val << return_random_boy }
    number_of_girls.times { return_val << return_random_girl }

    return_val
  end

  def files
    {
      boys: '../db/boys_names.csv',
      girls: '../db/girls_names.csv',
      last_names: '../db/last_names.csv',
      street_names: '../db/street_names.csv',
      zip_combinations: '../db/zip_combinations.csv',
    }
  end

  def get_data
    return_val = {}
    files.each do |k, v|
      d = ReadData.new(v).read_file
      return_val[k] = d
    end
    @data = return_val
  end

  def return_random_boy
    return_val = return_random_last_name_and_address

    return_val[:first_name] = @data[:boys].sample(1)[0]
    
    return_val
  end

  def return_random_girl
    return_val = return_random_last_name_and_address

    return_val[:first_name] = @data[:girls].sample(1)[0]
    
    return_val
  end

  #zip,primary_city,state,area_codes
  def return_random_last_name_and_address
    ln = @data[:last_names].sample(1)[0]
    s = @data[:street_names].sample(1)[0]
    zc = @data[:zip_combinations].sample
    z = zc['zip']
    c = zc['primary_city']
    st = zc['state']
    a = zc['area_code']

    {
      last_name: ln, 
      street: s, 
      zip: z, 
      city: c, 
      state: st, 
      area_code: a
    }
  end
end


