class MyrfcsController < ApplicationController
  before_action :set_myrfc, only: [:show, :edit, :update, :destroy]

  # GET /myrfcs
  # GET /myrfcs.json
  def index
    @myrfcs = Myrfc.all
  end

  # GET /myrfcs/1
  # GET /myrfcs/1.json
  def show
  end

  # GET /myrfcs/new
  def new
    @myrfc = Myrfc.new
  end

  # GET /myrfcs/1/edit
  def edit
  end

  # POST /myrfcs
  # POST /myrfcs.json
  def create
    @myrfc = Myrfc.new(myrfc_params)

    respond_to do |format|
      if @myrfc.save
        format.html { redirect_to @myrfc, notice: 'Myrfc was successfully created.' }
        format.json { render :show, status: :created, location: @myrfc }
      else
        format.html { render :new }
        format.json { render json: @myrfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myrfcs/1
  # PATCH/PUT /myrfcs/1.json
  def update
    respond_to do |format|
      if @myrfc.update(myrfc_params)
        format.html { redirect_to @myrfc, notice: 'Myrfc was successfully updated.' }
        format.json { render :show, status: :ok, location: @myrfc }
      else
        format.html { render :edit }
        format.json { render json: @myrfc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myrfcs/1
  # DELETE /myrfcs/1.json
  def destroy
    @myrfc.destroy
    respond_to do |format|
      format.html { redirect_to myrfcs_url, notice: 'Myrfc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myrfc
      @myrfc = Myrfc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myrfc_params
      params.require(:myrfc).permit(:name, :rfc, :address, :phone, :email, :cp, :comercio_id, :referencia)
    end
end
