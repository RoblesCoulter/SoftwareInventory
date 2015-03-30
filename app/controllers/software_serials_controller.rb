class SoftwareSerialsController < ApplicationController
  before_action :set_software_serial, only: [:show, :edit, :update, :destroy]

  # GET /software_serials
  # GET /software_serials.json
  def index
    @software_serials = SoftwareSerial.all
  end

  # GET /software_serials/1
  # GET /software_serials/1.json
  def show
  end

  # GET /software_serials/new
  def new
    @software_serial = SoftwareSerial.new
  end

  # GET /software_serials/1/edit
  def edit
  end

  # POST /software_serials
  # POST /software_serials.json
  def create
    @software_serial = SoftwareSerial.new(software_serial_params)

    respond_to do |format|
      if @software_serial.save
        format.html { redirect_to @software_serial, notice: 'Software serial was successfully created.' }
        format.json { render :show, status: :created, location: @software_serial }
      else
        format.html { render :new }
        format.json { render json: @software_serial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /software_serials/1
  # PATCH/PUT /software_serials/1.json
  def update
    respond_to do |format|
      if @software_serial.update(software_serial_params)
        format.html { redirect_to @software_serial, notice: 'Software serial was successfully updated.' }
        format.json { render :show, status: :ok, location: @software_serial }
      else
        format.html { render :edit }
        format.json { render json: @software_serial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /software_serials/1
  # DELETE /software_serials/1.json
  def destroy
    @software_serial.destroy
    respond_to do |format|
      format.html { redirect_to software_serials_url, notice: 'Software serial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_software_serial
      @software_serial = SoftwareSerial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def software_serial_params
      params.require(:software_serial).permit(:serial_number, :software, :operative_system, :price, :software_availability)
    end
end
