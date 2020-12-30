def nyc_pigeon_organizer(data)
  # write your code here!
  
  require "pry"

    
    data.each_with_object({}) do |(key,item),pigeon_list|
      #binding.pry
      item.each do |key2,names|
        #binding.pry
        names.each do |name|
          #binding.pry
          if !pigeon_list[name]
            pigeon_list[name] ={}
          end
          if !pigeon_list[name][key]
            pigeon_list[name][key]=[]
          end
          binding.pry
        end
      end
    end
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
