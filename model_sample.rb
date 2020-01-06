# Model.new
# Model#save
# Model.create
# Model.find


# database
$users_table = []

# User Model
class UserClass
  def save
    $users_table << self
    puts "log: #{self} was saved!"
  end

  def set_name
    @name = 'ben'
  end

  def self.create
    user = UserClass.new
    user.save

    puts "log: #{user} was created!"
  end
end


# Model.new
user_instance = UserClass.new
user_instance.set_name

puts "user = #{user_instance}"

# Model#save
puts "users_table = #{$users_table}"

user_instance.save

puts "users_table = #{$users_table}"

# Model.create
UserClass.create

puts "users_table = #{$users_table}"

# クラスとインスタンスのちがい
# クラスが規格
# インスタンスが 1つの物
#
# CD -> クラス
# あいみょん シングル CD - マリーゴールド -> インスタンス
# あいみょん アルバム - 瞬間的シックスセンス -> インスタンス
