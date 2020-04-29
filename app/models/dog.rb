class Dog < ApplicationRecord
  has_many :employees

  def self.sorted_list
    hash = {}
    self.all.each { |dog| hash[dog] = dog.employees.count }
    hash.sort_by { |k,v| -v }
  end

end
