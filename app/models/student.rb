class Student < ApplicationRecord

  scope :by_name, ->(name) { where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%") }

  def to_s
    "#{first_name} #{last_name}"
  end

  # def self.by_name name
  #   Student.all.where("first_name == '#{name}'").or(Student.all.where("last_name == '#{name}'"))
  # end

end
