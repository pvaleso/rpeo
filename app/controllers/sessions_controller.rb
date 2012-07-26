class SessionsController < ApplicationController

def create
  auth = request.env["omniauth.auth"]
  user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  session[:user_id] = user.id
  redirect_to root_url, :notice => "Signed in!"
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Signed out!"
end


 #def post(message)
   #Twitter.configure do |config|
   #config.consumer_key = TwitterAccount::pA5ycBm5MEB5fcP3eh8N6A
   #config.consumer_secret = TwitterAccount::d5pyPKterEi2b3wnfBWWTydaisXrTklePO3U9XqLRA
   #config.oauth_token = self.oauth_token
   #config.oauth_token_secret = self.oauth_token_secret
   #end
   #client = Twitter::Client.new
   #begin
     #client.update(message)
     #return true
   #rescue Exception => e
     #self.errors.add(:oauth_token, "Unable to send to twitter: #{e.to_s}")
     #return false
   #end
 #end

	
end
