User.destroy_all

user_1 = User.create({
  first_name: "Chris",
  last_name: "Johnston",
  email: "johnstonchristo@gmail.com",
  password: "chicken",
  password_confirmation: "chicken",
  username: "johnstonchristo"
  })

user_2 = User.create({
  first_name: "James",
  last_name: "Nugent", email: "jnugent1311@gmail.com",
  password: "password",
  password_confirmation: "password",
  username: "nugget"
  })

user_3 = User.create({
  first_name: "Ja",
  last_name: "Rule",
  email: "johnstonchristo@gmail.com",
  password: "fyre",
  password_confirmation: "fyre",
  username: "monicaaaa"
  })

puts "User Count: #{User.all.count}"


Order.destroy_all

order_1 = Order.create({
  item_description: "Important files",
  item_weight: 5,
  item_height: 10,
  item_depth: 15,
  sender_id: user_1.id,
  state: 0,
  })

order_2 = Order.create(item_description: "Crack", item_weight: 3, item_height: 10, item_depth: 15, sender_id: user_1.id, receiver_id: user_2.id, state: 1)

order_3 = Order.create(item_description: "House keys", item_weight: 7, item_height: 4, item_depth: 17, sender_id: user_1.id, receiver_id: user_2.id, courier_id: user_3.id, state: 2)

order_4 = Order.create(item_description: "Xmas present", item_weight: 9, item_height: 3, item_depth: 11, sender_id: user_1.id, receiver_id: user_2.id, courier_id: user_3.id, state: 3)

order_5 = Order.create(item_description: "Nosé", item_weight: 5, item_height: 10, item_depth: 15, sender_id: user_1.id, receiver_id: user_2.id, courier_id: user_3.id, state: 4)

order_6 = Order.create(item_description: "12 bananas", item_weight: 15, item_height: 8, item_depth: 15, sender_id: user_1.id, receiver_id: user_2.id, courier_id: user_3.id, state: 5)

order_7 = Order.create({
  item_description: "Important files",
  item_weight: 5,
  item_height: 10,
  item_depth: 15,
  sender_id: user_1.id,
  state: 0,
  })

order_8 = Order.create(item_description: "Rocks", item_weight: 3, item_height: 10, item_depth: 15, sender_id: user_1.id, receiver_id: user_2.id, state: 0)

order_9 = Order.create(item_description: "Octopus", item_weight: 7, item_height: 4, item_depth: 17, sender_id: user_1.id, receiver_id: user_2.id, state: 0)

order_10 = Order.create(item_description: "Indoor Plants", item_weight: 9, item_height: 3, item_depth: 11, sender_id: user_1.id, receiver_id: user_2.id, state: 0)

order_11 = Order.create(item_description: "Nose beers", item_weight: 5, item_height: 10, item_depth: 15, sender_id: user_1.id, receiver_id: user_2.id, state: 0)

order_12 = Order.create(item_description: "Chairs x 4", item_weight: 15, item_height: 8, item_depth: 15, sender_id: user_1.id, receiver_id: user_2.id, state: 0)




puts "Order Count #{Order.all.count}"
