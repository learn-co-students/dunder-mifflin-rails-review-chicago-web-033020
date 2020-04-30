class Employee < ApplicationRecord
    belongs_to :dog
    validates_presence_of :first_name, :last_name, :title, :office, :dog
    validates_uniqueness_of :title, :alias
end