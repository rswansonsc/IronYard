class PatientsController < ApplicationController
  before_filter :set_patient, only: [:show, :edit, :update, :destroy]
  before_filter :find_hospital
  # GET /patients
  # GET /patients.json
  def index
    @hospitals = Hospital.all
    @patients = Patient.all
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
  end

  # GET /patients/new
  def new 
    # @hospitals = Hospital.all
    @patient = @hospital.patients.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = @hospital.patients.new(patient_params)

    respond_to do |format|
      if @hospital.patient.save
        format.html { redirect_to @hospital.patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @hospital.patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    respond_to do |format|
      if @hospital.patient.update(patient_params)
        format.html { redirect_to @hospital.patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @hospital.patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @hospital.patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_hospital
      @hospital = Hospital.find params[:hospital_id]
    end

    def set_patient
      @patient = Patient.find params[:id]
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:name, :description, :workflow_state)
    end
end
