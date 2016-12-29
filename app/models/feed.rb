class Feed < ActiveRecord::Base
  belongs_to :record, polymorphic: true
  belongs_to :staff


end
