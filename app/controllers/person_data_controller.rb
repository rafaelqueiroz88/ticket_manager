class PersonDataController < ApplicationController
  before_action :set_person_datum, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_person!, only: [:show, :edit, :update]
  before_action :authenticate_admin!, only: [:index, :destroy]

  # GET /person_data
  # GET /person_data.json
  def index
    @person_data = PersonDatum.all
  end

  # GET /person_data/1
  # GET /person_data/1.json
  def show
  end

  # GET /person_data/new
  def new
    @person_datum = PersonDatum.new
  end

  # GET /person_data/1/edit
  def edit
  end

  # POST /person_data
  # POST /person_data.json
  def create
    @person_datum = PersonDatum.new(person_datum_params)

    respond_to do |format|
      if @person_datum.save
        format.html { redirect_to @person_datum, notice: 'Person datum was successfully created.' }
        format.json { render :show, status: :created, location: @person_datum }
      else
        format.html { render :new }
        format.json { render json: @person_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_data/1
  # PATCH/PUT /person_data/1.json
  def update
    respond_to do |format|
      if @person_datum.update(person_datum_params)
        format.html { redirect_to @person_datum, notice: 'Person datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_datum }
      else
        format.html { render :edit }
        format.json { render json: @person_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_data/1
  # DELETE /person_data/1.json
  def destroy
    @person_datum.destroy
    respond_to do |format|
      format.html { redirect_to person_data_url, notice: 'Person datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_datum
      @person_datum = PersonDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_datum_params
      params.require(:person_datum).permit(:username, :name, :lastname, :birthdate, :rg, :cpf)
    end
end
