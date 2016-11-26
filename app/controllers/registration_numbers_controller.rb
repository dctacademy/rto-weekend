class RegistrationNumbersController < ApplicationController
  before_action :set_registration_number, only: [:show, :edit, :update, :destroy]

  # GET /registration_numbers
  # GET /registration_numbers.json
  def index
    @registration_numbers = RegistrationNumber.all
  end

  # GET /registration_numbers/1
  # GET /registration_numbers/1.json
  def show
  end

  # GET /registration_numbers/new
  def new
    @registration_number = RegistrationNumber.new
  end

  # GET /registration_numbers/1/edit
  def edit
  end

  # POST /registration_numbers
  # POST /registration_numbers.json
  def create
    @registration_number = RegistrationNumber.new(registration_number_params)

    respond_to do |format|
      if @registration_number.save
        format.html { redirect_to @registration_number, notice: 'Registration number was successfully created.' }
        format.json { render :show, status: :created, location: @registration_number }
      else
        format.html { render :new }
        format.json { render json: @registration_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_numbers/1
  # PATCH/PUT /registration_numbers/1.json
  def update
    respond_to do |format|
      if @registration_number.update(registration_number_params)
        format.html { redirect_to @registration_number, notice: 'Registration number was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_number }
      else
        format.html { render :edit }
        format.json { render json: @registration_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_numbers/1
  # DELETE /registration_numbers/1.json
  def destroy
    @registration_number.destroy
    respond_to do |format|
      format.html { redirect_to registration_numbers_url, notice: 'Registration number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_number
      @registration_number = RegistrationNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_number_params
      params.require(:registration_number).permit(:name, :district_id, localities_attributes: [:id, :name, :_destroy])
    end
end
