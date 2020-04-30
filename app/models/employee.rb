class Employee < ActiveRecord::Base
    belongs_to :dog

    def dog_name=(name)
        self.dog = Dog.find_by(name: name)
    end

    def dog_name
        self.dog ? self.dog.name : nil
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
