# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, {
	:key => 	'_session_id',
	:secure => 	Rails.env.production?
end
