class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    id = params['id']
    order = Order.find_by(id: id)
    if (order.state == "on_journey")
      ActionCable.server.broadcast "order_channel_#{id}",
          location: order.sender_location,
          order: order
    end
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create

    @order = Order.new(order_params)
    @order.state = params[:order][:state].to_i
    @order.sender = @current_user
    @order.locations << SenderLocation.create(full_street_address: params['sender_location'])
    @order.locations << ReceiverLocation.create(full_street_address: params['receiver_location'])
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def show_pending_orders
    @orders = Order.where(receiver_id: @current_user.id, state: "created")
  end

  def accept_pending_order
    id = params['id']
    order = Order.find_by(id: id)
    order.state = 1
    order.save
    redirect_to "/orders/#{id}"
  end

  def show_potential_deliveries
    @orders = Order.where(courier_id: nil, state: "receiver_accepted")
  end

  def accept_potential_delivery
    id = params['id']
    order = Order.find_by(id: id)
    order.state = 2
    order.courier_id = @current_user.id
    order.save
    redirect_to "/orders/#{id}"
  end

  def courier_on_journey
    id = params['id']
    order = Order.find_by(id: id)
    order.state = 3
    order.save
    redirect_to "/orders/#{id}"
  end

  def courier_order_delivered
    id = params['id']
    order = Order.find_by(id: id)
    order.state = 4
    order.save
    redirect_to "/orders/#{id}"
  end

  def receiver_confirmed_delivery
    id = params['id']
    order = Order.find_by(id: id)
    order.state = 5
    order.save
    redirect_to "/orders/#{id}"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:item_description, :item_weight, :item_height, :item_depth, :sender_id, :receiver_id, :courier_id)
    end
end
