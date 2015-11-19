class UserMailer < ActionMailer::Base
    default :from => "\"NOREPLY@Fantasy-Track\"<fantasytrack1.0@gmail.com>"
    default :host => "secret-gorge-8997.herokuapp.com",  :only_path => true

    
    def registration_confirmation(user)
        @user = user
        mail(:to => "#{user.user_id} <#{user.email}>", :subject => "Please confirm your registration")
        
    end
end