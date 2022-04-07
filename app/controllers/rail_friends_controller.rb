class RailFriendsController < ApplicationController
  before_action :set_rail_friend, only: %i[ show edit update destroy ]

  # GET /rail_friends or /rail_friends.json
  def index
    @rail_friends = RailFriend.all
  end

  # GET /rail_friends/1 or /rail_friends/1.json
  def show
  end

  # GET /rail_friends/new
  def new
    @rail_friend = RailFriend.new
  end

  # GET /rail_friends/1/edit
  def edit
  end

  # POST /rail_friends or /rail_friends.json
  def create
    @rail_friend = RailFriend.new(rail_friend_params)

    respond_to do |format|
      if @rail_friend.save
        format.html { redirect_to rail_friend_url(@rail_friend), notice: "Rail friend was successfully created." }
        format.json { render :show, status: :created, location: @rail_friend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rail_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rail_friends/1 or /rail_friends/1.json
  def update
    respond_to do |format|
      if @rail_friend.update(rail_friend_params)
        format.html { redirect_to rail_friend_url(@rail_friend), notice: "Rail friend was successfully updated." }
        format.json { render :show, status: :ok, location: @rail_friend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rail_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rail_friends/1 or /rail_friends/1.json
  def destroy
    @rail_friend.destroy

    respond_to do |format|
      format.html { redirect_to rail_friends_url, notice: "Rail friend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rail_friend
      @rail_friend = RailFriend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rail_friend_params
      params.require(:rail_friend).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
