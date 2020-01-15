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

  def set_name(name)
    @name = name
  end

  def self.create
    human_instance = HumanClass.new
    human_instance.save

    puts "log: #{self} was created!"
  end

  def self.find(name)
    the_human = nil

    $humans_table.each do |human|
       if human.name == name
         the_human = human
       end
    end

    the_human
  end

  def name
    @name
  end

  def to_s
    @name
  end
end

# Model.new
human_instance = HumanClass.new
human_instance.set_name('ben')
puts "human(ben) = #{human_instance}"
# Model#save
human_instance.save

# Model.new no.2
human_instance = HumanClass.new
human_instance.set_name('cate')
human_instance.save

# Model.create
HumanClass.create
puts "humans_table = #{$humans_table}"

# クラスとインスタンスのちがい
# クラス       -> 概念
# インスタンス -> 具体的なもの

# クラスとインスタンスのちがい
# クラス       -> 規格
# インスタンス -> 1つの物
#
# CD -> クラス
# あいみょん シングル CD - マリーゴールド -> インスタンス
# あいみょん アルバム - 瞬間的シックスセンス -> インスタンス

# Model.find
ben = HumanClass.find('ben')
puts "ben = #{ben}"
