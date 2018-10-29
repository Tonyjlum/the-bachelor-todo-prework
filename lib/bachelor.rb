def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if contestant.values.include?("Winner")
      return contestant["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
      contestants.each do |contestant|
        if contestant["occupation"] == occupation
          return contestant["name"]
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      hometown_count +=1 if contestant["hometown"] == hometown
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  avg_age = []
  data[season].each do |contestant|
    avg_age << contestant["age"].to_f
  end
  (avg_age.reduce(:+)/avg_age.length).round
end
