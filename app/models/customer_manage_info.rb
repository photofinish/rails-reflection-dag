class CustomerManageInfo < ActiveRecord::Base
  belongs_to :customer
  belongs_to :waiter, foreign_key: :waiter_id, class_name: 'Staff'
  belongs_to :service_warehouse
  belongs_to :customer_classify
  belongs_to :channel_brand



end
