class Patient < ActiveRecord::Base
	belongs_to :hospital
	has_many :medications

include Workflow
  workflow do
    state :waiting_room do
      event :go_to_doctor, :transitions_to => :doctor
      event :go_to_surgery, :transitions_to => :surgery
      event :go_to_xray, :transitions_to => :xray
      event :go_to_paybill, :transitions_to => :paybill
    end
    state :doctor do
      event :go_to_waiting_room, :transitions_to => :waiting_room
      event :go_to_surgery, :transitions_to => :surgery
      event :go_to_xray, :transitions_to => :xray
      event :go_to_paybill, :transitions_to => :paybill
    end

    state :xray do
      event :go_to_waiting_room, :transitions_to => :waiting_room
      event :go_to_surgery, :transitions_to => :surgery
      event :go_to_doctor, :transitions_to => :doctor
      event :go_to_paybill, :transitions_to => :paybill
		end

    state :paybill do
      event :go_to_waiting_room, :transitions_to => :waiting_room
      event :go_to_leaving, :transitions_to => :leaving
		end

    state :leaving

end
