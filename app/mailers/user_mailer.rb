class UserMailer < ActionMailer::Base
    default :from => "\"NOREPLY@Fantasy-Track\"<fantasytrack1.0@gmail.com>"

    
    def registration_confirmation(user)
        @user = user
        mail(:to => "#{user.user_id} <#{user.email}>", :subject => "Please confirm your registration")
        
    end
    
    def invite_friend(user, league)
        @user = user
        @league = league
        mail(:to => "#{user.email} <#{user.email}>", :subject => "You are invited to a Fantasy Track League")
    end
end