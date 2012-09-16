class User < ActiveRecord::Base
  attr_accessible :first_name, :is_active, :is_deleted, :last_name, :username
  has_many :logic

  def full_name
    "#{first_name} #{last_name}"
  end
end
