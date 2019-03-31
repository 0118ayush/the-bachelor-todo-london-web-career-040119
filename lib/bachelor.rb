require "pry"

def get_first_name_of_season_winner(data, season)
  
  data.each {|seasons, contestants_arrays|
    if seasons == season
      contestants_arrays.each {|contestant|
        contestant.each {|info_name, info|
          if contestant["status"] == "Winner"
            name = contestant["name"]
            name_array = name.split()
            first_name = name_array[0]
            return first_name
            
          end 
        }
      }
    end 
  }
end



def get_contestant_name(data, occupation)
  
  data.each {|seasons, contestants_arrays|
    contestants_arrays.each {|contestant|
      contestant.each {|info_name, info|
        if contestant["occupation"] == occupation
            name = contestant["name"]
            return name
        end 
      }
    }
  }
end




def count_contestants_by_hometown(data, hometown)
  
  new_array = []
  
  data.each {|seasons, contestant_arrays|
    contestant_arrays.each {|contestant|
      if contestant["hometown"] == hometown
        new_array.push(contestant["hometown"])
      end
    }
  }
new_array.length 
end




def get_occupation(data, hometown)
  
  data.each {|seasons, contestants_arrays|
    contestants_arrays.each {|contestant|
      contestant.each {|info_name, info|
        if contestant["hometown"] == hometown
          return contestant["occupation"]
        end
      }
    }
  }
  
end

def get_average_age_for_season(data, season)
  
  new_array = []
   data.each {|seasons, contestants_arrays|
    if seasons == season
      contestants_arrays.each {|contestant|
          age = contestant["age"].to_i
          new_array.push(age)
      }
     average_age = new_array.inject{ |a, b| a + b }.to_f / new_array.length
     return average_age.round
  end
  } 
end
