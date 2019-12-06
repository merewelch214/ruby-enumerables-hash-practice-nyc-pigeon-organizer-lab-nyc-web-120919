def nyc_pigeon_organizer(data)
  final_hash = {}
  new_arr = []
  data.each do |color, purple_hash|
    purple_hash.each do |col, names|
      names.each do |pigs|
        if final_hash.has_key?(pigs)
          if final_hash[pigs].has_key?(color) 
            final_hash[pigs][color] << col.to_s
          else 
            new_arr = []
            new_arr << col.to_s
            final_hash[pigs][color] = col.to_s
          end
        else 
          new_arr << col.to_s
          final_hash[pigs] = {color => new_arr}
          new_arr = []
        end
      end
    end
  end
  p final_hash
  return final_hash
end  
