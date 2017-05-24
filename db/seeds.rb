
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
  last_name: "Nugent", email: "jnugent@test.com",
  password: "password",
  password_confirmation: "password",
  username: "jnugent"
  })

user_3 = User.create({
  first_name: "John",
  last_name: "Smith",
  email: "john.smith@test.com",
  password: "test",
  password_confirmation: "test",
  username: "monicaaaa"
  })

  #
  # user_4 = User.create({
  #   first_name: "Ron",
  #   last_name: "Jeremy",
  #   email: "johnstonchristo@gmail.com",
  #   password: "chicken",
  #   password_confirmation: "chicken",
  #   username: "bigron"
  #   })
  #
  #
  #   user_4 = User.create({
  #     first_name: "George",
  #     last_name: "Costanza",
  #     email: "johnstonchristo@gmail.com",
  #     password: "chicken",
  #     password_confirmation: "chicken",
  #     username: "baldman"
  #     })
  #

puts "User Count: #{User.all.count}"


Order.destroy_all

# order_1 = Order.create({
#   item_description: "Important files",
#   item_weight: 5,
#   item_height: 10,
#   item_depth: 15,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   state: 0,
#   })
#
# order_2 = Order.create(
#   item_description: "Crack",
#   item_weight: 3,
#   item_height: 10,
#   item_depth: 15,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   state: 1)
#
# order_3 = Order.create(
#   item_description: "House keys",
#   item_weight: 7,
#   item_height: 4,
#   item_depth: 17,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   courier_id: user_3.id,
#   state: 2)
#
# order_4 = Order.create(
#   item_description: "Xmas present",
#   item_weight: 9,
#   item_height: 3,
#   item_depth: 11,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   courier_id: user_3.id,
#   state: 3)
#
# order_5 = Order.create(
#   item_description: "Nosé",
#   item_weight: 5,
#   item_height: 10,
#   item_depth: 15,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   courier_id: user_3.id,
#   state: 4)
#
# order_6 = Order.create(
#   item_description: "12 bananas",
#   item_weight: 15,
#   item_height: 8,
#   item_depth: 15,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   courier_id: user_3.id,
#   state: 5)
#
# order_7 = Order.create({
#   item_description: "Important files",
#   item_weight: 5,
#   item_height: 10,
#   item_depth: 15,
#   sender_id: user_1.id,
#   state: 0,
#   })
#
# order_8 = Order.create(
#   item_description: "Rocks",
#   item_weight: 3,
#   item_height: 10,
#   item_depth: 15,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   state: 0)
#
# order_9 = Order.create(
#   item_description: "Octopus",
#   item_weight: 7,
#   item_height: 4,
#   item_depth: 17,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   state: 0)
#
# order_10 = Order.create(
#   item_description: "Indoor Plants",
#   item_weight: 9,
#   item_height: 3,
#   item_depth: 11,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   state: 0)
#
# order_11 = Order.create(
#   item_description: "Nose beers",
#   item_weight: 5,
#   item_height: 10,
#   item_depth: 15,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   state: 0)
#
# order_12 = Order.create(
#   item_description: "Chairs x 4",
#   item_weight: 15,
#   item_height: 8,
#   item_depth: 15,
#   sender_id: user_1.id,
#   receiver_id: user_2.id,
#   state: 0)
#
# order_13 = Order.create({
#   item_description: "Non-Important Files",
#   item_weight: 5,
#   item_height: 10,
#   item_depth: 15,
#   sender_id: user_2.id,
#   state: 0,
#   })
#
# order_14 = Order.create(
#   item_description: "Bag of bricks",
#   item_weight: 3,
#   item_height: 10,
#   item_depth: 15,
#   sender_id: user_2.id,
#   receiver_id: user_1.id,
#   state: 0)
#
# order_15 = Order.create(
#   item_description: "A front door of a house",
#   item_weight: 7,
#   item_height: 4,
#   item_depth: 17,
#   sender_id: user_2.id,
#   receiver_id: user_1.id,
#   state: 0)
#
# order_16 = Order.create(
#   item_description: "Bike",
#   item_weight: 9,
#   item_height: 3,
#   item_depth: 11,
#   sender_id: user_2.id,
#   receiver_id: user_1.id,
#   state: 0)
#
# order_17 = Order.create(
#   item_description: "A 40 volt electric engine",
#   item_weight: 5,
#   item_height: 10,
#   item_depth: 15,
#   sender_id: user_2.id,
#   receiver_id: user_1.id,
#   state: 0)
#
# order_18 = Order.create(
#   item_description: "A 12ft roll of fencing wire",
#   item_weight: 15,
#   item_height: 8,
#   item_depth: 15,
#   sender_id: user_2.id,
#   receiver_id: user_1.id,
#   state: 0)
#


puts "Order Count #{Order.all.count}"


Location.destroy_all

# location_1 = SenderLocation.create(
# full_street_address: "55 York Street Sydney Australia",
# order_id: order_1.id
# )
#
# location_2 = ReceiverLocation.create(
# full_street_address: "1 August Road Manly Australia",
# order_id: order_1.id
# )


# location_3 = CourierLocation.create(
# address: "1 Smith Street"
#   order_id: order_1.id
# )

puts "Location Count #{Location.all.count}"
