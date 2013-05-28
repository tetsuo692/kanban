module FactoryGirl
  module ParamsFor
    def params_for(object)
      attributes_for(object).delete_if{|k,v| v.nil?}
    end
  end
end


RSpec.configure do |config|
  config.include FactoryGirl::ParamsFor, :type => :controller
end