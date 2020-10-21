require 'pry'
data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }
      
def nyc_pigeon_organizer(data)
  # write your code here!
  organized_data = data.each_with_object({}) do |(k, v), re_data| 
    v.each do |k2, v2|
      v2.each do |name|
        if !re_data[name]
          re_data[name] = {}
        end
        re_data[name][k] = v2
      end 
    end 
  end 
end
