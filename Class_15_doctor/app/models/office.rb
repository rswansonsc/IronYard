class Office < ActiveRecord::Base

include Workflow
  workflow do
    state :new_vistor do
      event :go_to_doctor, :transitions_to => :doctor
      event :go_to_office, :transitions_to => :office
      event :go_to_xray, :transitions_to => :xray
      event :go_to_leaving, :transitions_to => :leaving
    end
    state :doctor do
      event :go_to_office, :transitions_to => :office
      event :go_to_xray, :transitions_to => :xray
      event :go_to_outprocess, :transition_to => :outprocess
      event :go_to_leaving, :transitions_to => :leaving
    end

    state :xray do
      event :go_to_office, :transitions_to => :office
      event :go_to_doctor, :transitions_to => :doctor
      event :go_to_outprocess, :transition_to => :outprocess
      event :go_to_leaving, :transitions_to => :leaving
		end

    state :outprocess do
      event :go_to_office, :transitions_to => :office
      event :go_to_doctor, :transitions_to => :doctor
      event :go_to_leaving, :transitions_to => :leaving
		end

    state :leaving
	  end
end
