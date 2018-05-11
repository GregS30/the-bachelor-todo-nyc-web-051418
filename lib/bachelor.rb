require 'pry'

def get_first_name_of_season_winner(data, season)

  data.each do |s_num, peeps|
    if s_num == season
      peeps.each do |peep_hash|
        if peep_hash["status"] == "Winner"
            name = peep_hash["name"].split
            return name[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)

  data.each do |s_num, peeps|
    peeps.each do |peep_hash|
      if peep_hash["occupation"] == occupation
        return peep_hash["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |s_num, peeps|
    peeps.each do |peep_hash|
      if peep_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)

  data.each do |s_num, peeps|
    peeps.each do |peep_hash|
      if peep_hash["hometown"] == hometown
        return peep_hash["occupation"]
      end
    end
  end

end

def get_average_age_for_season(data, season)

  age = []

  data.each do |s_num, peeps|
    if s_num == season
      peeps.each do |peep_hash|
        age << peep_hash["age"].to_f
      end
    end
  end

  len = age.size
  i = 0
  age_tot = 0.0

  while i < len
    age_tot += age[i]
    i += 1
  end

  (age_tot / len).round

end
