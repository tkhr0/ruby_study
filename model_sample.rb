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

  def set_name
    @name = 'ben'
  end

  def self.create
    human_instance = HumanClass.new
    human_instance.save

    puts "log: #{self} was created!"
  end
end

# # Model.new
# human_instance = HumanClass.new
# human_instance.set_name('ben')
# puts "human(ben) = #{human_instance}"
# # Model#save
# puts "humans_table = #{$humans_table}"
# human_instance.save
# puts "humans_table = #{$humans_table}"
#
# # Model.new no.2
# human_instance = HumanClass.new
# human_instance.set_name('cate')
# puts "human(cate) = #{human_instance}"
# human_instance.save
# puts "humans_table = #{$humans_table}"
#
# # Model.create
# HumanClass.create
# puts "humans_table = #{$humans_table}"

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
