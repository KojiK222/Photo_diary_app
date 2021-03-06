class ApplicationController < ActionController::Base
  class MyLogger < Logger
    include LoggerSilence
    include ActiveSupport::LoggerThreadSafeLevel
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :mylogger_test

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :fullname])
  end

  def mylogger_test
    mylogger = MyLogger.new(STDOUT)
    mylogger.silence do
      mylogger.debug("controller = #{controller_name}")
      mylogger.info("action = #{action_name}")
      mylogger.error("controler#action = #{controller_name}##{action_name}")
    end
  end
end
