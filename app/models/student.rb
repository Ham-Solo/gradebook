class Student < ActiveRecord::Base
  has_secure_password
  has_many :assignments
  belongs_to :teacher
  belongs_to :parent

end
