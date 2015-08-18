# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, {
	:key =>     '_session_id',
	:key => 	'_app_sessions',
	:secure => 	Rails.env.production?
}
