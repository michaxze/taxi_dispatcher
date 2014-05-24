class DriverNotifier
  include Sidekiq::Worker

  def perform(booking_id)
    booking = Booking.find(booking_id)
    message = "Sms sent to the driver with booking ID: #{booking.id}"

    SmsSender.notify_driver(booking.driver.mobileno, message)
  end
end
