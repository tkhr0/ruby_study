# Model.new
# Model#save
# Model.create
# Model.find


# database
$users_table = []

# User Model
class User
  def save
    $users_table << self
    puts "log: #{self} was saved!"
  end

  def self.create
    user = User.new
    user.save

    puts "log: #{user} was created!"
  end
end


# Model.new
user = User.new

puts "user = #{user}"

# Model#save
puts "users_table = #{$users_table}"

user.save

puts "users_table = #{$users_table}"

# Model.create
User.create

puts "users_table = #{$users_table}"
