class PassengerMailer < ApplicationMailer
    
    def thanks_email(passenger)
        @passenger = passenger
        mail(to: @passenger.email, subject: "Thank you foor booking with Any Place!")
    end
end
