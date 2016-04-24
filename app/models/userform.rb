class Userform < ActiveRecord::Base
  validates :name, presence: true
  validates :age, presence: true,:numericality => true
  validates :email, presence: true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  validates :contact_no, presence: true, :numericality => true
  validates :interest, presence: true
  has_many :teams, class_name: "Teamfield"
  has_many :departments, class_name: "Departmentfield"
  accepts_nested_attributes_for :teams,:departments, allow_destroy: true

  def self.to_csv
     CSV.generate do |csv|
      csv << column_names
       all.each do |details|
         csv << details.attributes.values_at(*column_names)
       end
     end
  end

end
