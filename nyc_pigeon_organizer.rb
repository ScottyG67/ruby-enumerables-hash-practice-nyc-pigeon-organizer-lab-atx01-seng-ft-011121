def nyc_pigeon_organizer(data)
  # write your code here!
  
  require "pry"

    
    pigeon_list_final = data.each_with_object({}) do |(attribute_type,item),pigeon_list|
      #binding.pry
      item.each do |key2,names|
        #binding.pry
        names.each do |name|
          binding.pry
          if !pigeon_list[name]
            pigeon_list[name] ={}
          end
          if !pigeon_list[name][key]
            pigeon_list[name][key]=[]
          end
          attribute_s=key2.to_s
          if !pigeon_list[name][key].include?(attribute_s)
            pigeon_list[name][key] << attribute_s
          end
          #binding.pry
        end
      end
    end
pigeon_list_final
end
