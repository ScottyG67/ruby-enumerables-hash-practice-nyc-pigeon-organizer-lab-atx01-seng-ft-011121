def nyc_pigeon_organizer(data)
   require "pry"

array = {}
array[:key] ={}
array[:key][:key2] = {}
binding.pry
  # write your code here!

  pigeon_list = {}
  attribute= {}

  data.each do |key,item|
    attribute[key]= []
    #binding.pry
      item.each do |key2,item2|
        item2.each do |name|
          pigeon_list[name] = {}
        end
      end
  end
  
  
  attribute_types_array = data.keys
  attribute_types_hash = Hash[attribute_types_array.collect { |item| [item, [] ] }]
  #binding.pry

      
i=0
length = attribute_types_array.length
binding.pry
pigeon_list.each do |name|
  binding.pry
  while i < length do
    binding.pry
    pigeon_list[name][attribute_types_array[i]]
    i+=1
  end
end

  #    binding.pry
  #    pigeon_list[name][attribute_type] = []
  #  end
  #end
  
binding.pry
#pigeon_list["Theo"] = attribute
#binding.pry
#  pigeon_list.each do |name,item|
#    pigeon_list[name] = pigeon_list[name].merge(attribute_types_hash)
#  end
binding.pry
pigeon_list["Theo"][:lives] << "male"
pigeon_list["Alex"][:lives] << "notmale"
binding.pry

data.each do |attribute_type,attribute_hash|
  binding.pry
  pigeon_list.each do |name,new_attribute_hash|
    binding.pry
    data[attribute_type].each do |old_attribute, name_array| 
        binding.pry
        value = name_array.any? {|string| string == name}
        if value then
          binding.pry

          #pigeon_list[name][attribute_type] << attribute.to_s
          binding.pry
        end
    end
  end
end

pigeon_list
end
