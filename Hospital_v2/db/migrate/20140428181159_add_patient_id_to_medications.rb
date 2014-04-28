class AddPatientIdToMedications < ActiveRecord::Migration
  def change
  	 add_column :medications, :patient_id, :integer
  	 add_column :patients, :hospital_id, :integer
  end
end
