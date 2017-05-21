User.destroy_all

user_1 = User.create(first_name: "Chris", last_name: "Johnston", email: "johnstonchristo@gmail.com", password: "chicken", password_confirmation: "chicken")

user_2 = User.create(first_name: "James", last_name: "Nugent", email: "jnugent1311@gmail.com", password: "password", password_confirmation: "password")

user_3 = User.create(first_name: "Ja", last_name: "Rule", email: "johnstonchristo@gmail.com", password: "fyre", password_confirmation: "fyre")




Order.destroy_all

order_1 = Order.create(item_description: "Important files", item_weight: 5, item_height: 10, item_depth: 15, sender_id: user_1.id, state: 0)

order_2 = Order.create(item_description: "Crack", item_weight: 3, item_height: 10, item_depth: 15, sender_id: user_1.id, receiver_id: user_2.id, state: 1)

order_3 = Order.create(item_description: "House keys", item_weight: 7, item_height: 4, item_depth: 17, sender_id: user_1.id, receiver_id: user_2.id, courier_id: user_3.id, state: 2)

order_4 = Order.create(item_description: "Xmas present", item_weight: 9, item_height: 3, item_depth: 11, sender_id: user_1.id, receiver_id: user_2.id, courier_id: user_3.id, state: 3)

order_5 = Order.create(item_description: "Nosé", item_weight: 5, item_height: 10, item_depth: 15, sender_id: user_1.id, receiver_id: user_2.id, courier_id: user_3.id, state: 4)

order_6 = Order.create(item_description: "12 bananas", item_weight: 15, item_height: 8, item_depth: 15, sender_id: user_1.id, receiver_id: user_2.id, courier_id: user_3.id, state: 5)



# 0 - Created (sender_id has been assigned)
# 1 - Receiver accepted (sender_id and receiver_id have been assigned)
# 2 - Courier accepted (sender_id, receiver_id and courier_id have been assigned)
# 3 - Picked up/on journey
# 4 - Delivered (Courier has marked as delivered)
# 5 - Confirmed delivery (Courier and Sender mark as delivered)
