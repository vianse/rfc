class ProfileListsController < ApplicationController
  before_action :set_profile_list, only: [:show, :edit, :update, :destroy]

  # GET /profile_lists
  # GET /profile_lists.json
  def index
    @profile_lists = ProfileList.all
  end

  # GET /profile_lists/1
  # GET /profile_lists/1.json
  def show
  end

  # GET /profile_lists/new
  def new
    @profile_list = ProfileList.new
  end

  # GET /profile_lists/1/edit
  def edit
  end

  # POST /profile_lists
  # POST /profile_lists.json
  def create
    @profile_list = ProfileList.new(profile_list_params)

    respond_to do |format|
      if @profile_list.save
        format.html { redirect_to @profile_list, notice: 'Profile list was successfully created.' }
        format.json { render :show, status: :created, location: @profile_list }
      else
        format.html { render :new }
        format.json { render json: @profile_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_lists/1
  # PATCH/PUT /profile_lists/1.json
  def update
    respond_to do |format|
      if @profile_list.update(profile_list_params)
        format.html { redirect_to @profile_list, notice: 'Profile list was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_list }
      else
        format.html { render :edit }
        format.json { render json: @profile_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_lists/1
  # DELETE /profile_lists/1.json
  def destroy
    @profile_list.destroy
    respond_to do |format|
      format.html { redirect_to profile_lists_url, notice: 'Profile list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_list
      @profile_list = ProfileList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_list_params
      params.require(:profile_list).permit(:full_name, :phone, :email, :birthday, :address, :city, :state, :country, :cp,:uuid_phone)
    end
end
