class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_flash_message(obj)
    message = 'Encountered errors while updating:'
    obj.errors.full_messages.each {|str| message = [message, str].join(' ')}
    flash[:error] = message
  end
end
