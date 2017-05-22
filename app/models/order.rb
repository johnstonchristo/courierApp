class Order < ApplicationRecord

  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :courier, class_name: 'User', foreign_key: 'courier_id'

  enum state: [ :created, :receiver_accepted, :courier_accepted, :on_journey, :delivered, :delivery_confirmed ]

end

# 0 - Created (sender_id has been assigned)
# 1 - Receiver accepted (sender_id and receiver_id have been assigned)
# 2 - Courier accepted (sender_id, receiver_id and courier_id have been assigned)
# 3 - Picked up/on journey
# 4 - Delivered (Courier has marked as delivered)
# 5 - Confirmed delivery (Courier and Sender mark as delivered)
