class SmsSender < ActiveRecord::Base

  def self.notify_driver(mobileno, message)
    #TODO: use API for sms sending
    puts "Sms sent to the driver: #{mobileno}; message: #{message}"
  end
end
