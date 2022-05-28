class ApplicationController < ActionController::Base
  def params_for(klass)
    #parameters_klass = "#{klass.to_s.camelize}Parameters".constantize
    params.require(klass).permit! #.permit(*parameters_klass.new.public_parameters)
  end
end
