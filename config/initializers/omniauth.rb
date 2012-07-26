Rails.application.config.middleware.use OmniAuth::Builder do |variable|
	#provider :facebook, 'APP_ID', 'APP_SECRET'	
	#provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'	
	provider :twitter, 'pA5ycBm5MEB5fcP3eh8N6A', 'd5pyPKterEi2b3wnfBWWTydaisXrTklePO3U9XqLRA'	
end