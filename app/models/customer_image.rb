class CustomerImage < ActiveRecord::Base
  belongs_to :image
  belongs_to :customer


end
