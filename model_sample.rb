# frozen_string_literal: true

# Model.new
# Model#save
# Model.create
# Model.find

# database
$humans_table = []

# User Model
class HumanClass
  def save
    $humans_table << self
    puts "log: #{self} was saved!"
  end
end

# Model.new
human_instance = HumanClass.new
puts "human = #{human_instance}"

# Model#save
puts "humans_table = #{$humans_table}"
human_instance.save
puts "humans_table = #{$humans_table}"
