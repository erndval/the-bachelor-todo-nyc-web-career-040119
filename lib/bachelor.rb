require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |cour, cour_data|
    if cour == season
      cour_data.each do |contestant|
        contestant.each do |key, value|
          if key == "status" && value == "Winner"
            return contestant["name"].split(" ")[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |cour, cour_data|
      cour_data.each do |contestant|
        contestant.each do |key, value|
          if key == "occupation" && value == occupation
            return contestant["name"]
          end
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |cour, cour_data|
      cour_data.each do |contestant|
        contestant.each do |key, value|
          if key = "hometown" && value = hometown
            counter += 1
        end
      end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
