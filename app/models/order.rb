class Order < ApplicationRecord

  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
#   belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'
#   belongs_to :courier, class_name: 'User', foreign_key: 'courier_id'

  def receiver
    User.find_by id: self.receiver_id
  end

  def courier
    User.find_by id: self.courier_id
  end

end


# t.integer  "sender_id"
# t.integer  "receiver_id"
# t.integer  "courier_id"
