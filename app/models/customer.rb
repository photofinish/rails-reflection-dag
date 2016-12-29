class Customer < ActiveRecord::Base
  belongs_to :applicant, :foreign_key => "applicant_id", :class_name => "Staff"
  has_many :discusses, -> {order "id DESC"}, :foreign_key => "customer_no", :primary_key => "work_number", :class_name => "Discuss"
  has_one :customer_manage_info

  has_one :contact
  has_many :customer_images, dependent: :destroy


end
