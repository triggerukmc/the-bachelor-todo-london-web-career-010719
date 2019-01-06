def get_first_name_of_season_winner(data, season)
  data.each do |seasons, bio|
  if seasons == season
    bio.each do |x|
      return x["name"].split(" ")[0] if x["status"] == "Winner"
  end
end
end
end

def get_contestant_name(data, occupation)
   data.each do |season_name, season_data|
    season_data.each do |person|
      return person["name"] if person["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  i = 0
  data.each do |season_name, season_data|
    season_data.each do |person|
      i += 1 if person["hometown"] == hometown
    end
  end
  i
end

def get_occupation(data, hometown)
  data.each do |season_name, season_data|
    season_data.each do |person|
      return person["occupation"] if person["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  i = 0
  ages_total = 0
  data.each do |season_name, season_data|
    if season_name == season
      season_data.each do |x|
        ages_total += x["age"].to_f
        i += 1
      end
    end
  end
 
end
