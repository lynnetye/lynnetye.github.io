tv_array = ["Gossip Girl (drama)", "The Bachelor (reality)", "Shark Tank (reality)", "Modern Family (comedy)", "Jane the Virgin (comedy)", "Parks and Recreation (comedy)", "Law and Order (drama)", "Scandal (drama)", "The Big Bang Theory (comedy)", "Nikita (drama"]

tv_array.group_by do |show|
  case show
  when /.*comedy.*/
  "Comedy"
  when /.*drama.*/
  "Drama"
  when /.*reality.*/
  "Reality"
  end
end


tv_hash = Hash.new
tv_hash = {"Gossip Girl (drama)" => "Monday",
  "The Bachelor (reality)" => "Monday",
  "Modern Family (comedy)" => "Wednesday",
  "Shark Tank (reality)" => "Friday",
  "New Girl (comedy)" => "Tuesday",
  "Jane the Virgin (comedy)" => "Monday",
  "Parks and Recreation (comedy)" => "Tuesday",
  "Law and Order (drama)" => "Wednesday",
  "Scandal (drama)" => "Thursday",
  "The Big Bang Theory (comedy)" => "Thursday",
  "Nikita (drama)" => "Friday"
}

tv_hash.group_by { |show, night| night }

#EXAMPLE 1

ages = [25, 32, 22, 29, 26, 21, 26, 30, 31, 20]
ages.group_by { |age| age > 21 }

=> {true=>[25, 32, 22, 29, 26, 26, 30, 31], false=>[21, 20]}



#EXAMPLE 2

ages = [25, 32, 22, 29, 26, 21, 26, 30, 31, 20]
ages.group_by do |age|
  if age > 21
    age = "Party Peoples!"
  else
    age = "Too Young..."
  end
end

=> {"Party Peoples!"=>[25, 32, 22, 29, 26, 26, 30, 31], "Too Young..."=>[21, 20]}

#EXAMPLE 3

friends_ages = Hash.new
friends_ages = {
  "Oliver" => 25,
  "Bae" => 32,
  "Ramsey" => 22,
  "Allyson" => 29,
  "Courtland" => 26,
  "Emerson" => 21,
  "Jay" => 26,
  "David" => 30,
  "Robyn" => 31,
  "Abbey" => 20
}

friends_ages.group_by do |name, age|
  if age > 21
     age = "Party Peoples!"
  else
    age = "Too Young..."
  end
end

=> {"Party Peoples!"=>[["Oliver", 25], ["Bae", 32], ["Ramsey", 22], ["Allyson", 29], ["Courtland", 26], ["Jay", 26], ["David", 30], ["Robyn", 31]], "Too Young..."=>[["Emerson", 21], ["Abbey", 20]]}


friends_ages.group_by do |name, age|
  if age < 22
    age = "Too Young"
  elsif age < 30
    age = "Twenties"
  else
    age = "Thirties"
  end
end

=> {"Twenties"=>[["Oliver", 25], ["Ramsey", 22], ["Allyson", 29], ["Courtland", 26], ["Jay", 26]], "Thirties"=>[["Bae", 32], ["David", 30], ["Robyn", 31]], "Too Young"=>[["Emerson", 21], ["Abbey", 20]]}




friends_ages.group_by {[:bring_chasers, :bring_snacks][rand(2)]}

=> {:bring_chasers=>[["Oliver", 25], ["Bae", 32], ["Allyson", 29], ["Abbey", 20]], :bring_snacks=>[["Ramsey", 22], ["Courtland", 26], ["Emerson", 21], ["Jay", 26], ["David", 30], ["Robyn", 31]]}
