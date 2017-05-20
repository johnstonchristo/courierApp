json.extract! order, :id, :item_description, :item_weight, :item_height, :item_depth, :sender_id, :receiver_id, :courier_id, :state, :created_at, :updated_at
json.url order_url(order, format: :json)
