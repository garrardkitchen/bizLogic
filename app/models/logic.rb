class Logic < ActiveRecord::Base
  attr_accessible :code, :description, :logic_order, :user_id, :page_id
  belongs_to :user, :foreign_key => "user_id"
  belongs_to :page, :foreign_key => "page_id"

end
