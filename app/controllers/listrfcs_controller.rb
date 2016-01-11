class ListrfcsController < ApplicationController
  before_action :set_listrfc, only: [:show, :edit, :update, :destroy]

  # GET /listrfcs
  # GET /listrfcs.json
  def index
    @listrfcs = Listrfc.all
  end

  # GET /listrfcs/1
  # GET /listrfcs/1.json
  def show
  end

  # GET /listrfcs/new
  def new
    @listrfc = Listrfc.new
  end

  # GET /listrfcs/1/edit
  def edit
  end

  # POST /listrfcs
  # POST /listrfcs.json
  def create
    @listrfc = Listrfc.new(listrfc_params)

    respond_to do |format|
      if @listrfc.save
        format.html { redirect_to @listrfc, notice: 'Listrfc was successfully created.' }
        format.json { render :show, status: :created, location: @listrfc }
      else
        format.html { render :new }
        format.json { render json: @listrfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /listrfcs/1
  # PATCH/PUT /listrfcs/1.json
  def update
    respond_to do |format|
      if @listrfc.update(listrfc_params)
        format.html { redirect_to @listrfc, notice: 'Listrfc was successfully updated.' }
        format.json { render :show, status: :ok, location: @listrfc }
      else
        format.html { render :edit }
        format.json { render json: @listrfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listrfcs/1
  # DELETE /listrfcs/1.json
  def destroy
    @listrfc.destroy
    respond_to do |format|
      format.html { redirect_to listrfcs_url, notice: 'Listrfc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listrfc
      @listrfc = Listrfc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listrfc_params
      params.require(:listrfc).permit(:name, :rfc, :address, :phone, :email, :cp, :uuid_phone)
    end
end
