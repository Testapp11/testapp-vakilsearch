class Departmentfield < ActiveRecord::Base
  belongs_to :userform
  validates :dept_name, presence: true
  validates :dept_description, presence: true
end
