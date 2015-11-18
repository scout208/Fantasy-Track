class UserMailer < ActionMailer::Base
    default :from => "\"NOREPLY@Fantasy-Track\"<yujun-huang@gmail.com>"

    
    def registration_confirmation(user)
        @user = user
        mail(:to => "#{user.user_id} <#{user.email}>", :subject => "Please confirm your registration")
        
    end
end