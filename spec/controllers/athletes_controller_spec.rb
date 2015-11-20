require 'spec_helper'
require 'rails_helper'

describe AthletesController, type: :controller do
    describe 'Create New Athlete' do
        before :each do
            @a = Athlete.new(:first_name=>"FirstName",:last_name=>"LastName",:birth_date=>"1/1/1990",:country=>"Country",:notes=>"notes")
        end
    end
    
    
    
end
