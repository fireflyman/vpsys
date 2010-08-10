# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_vpsys_session',
  :secret      => '764326f08cd9240b380a9ca26c90d8ba0a9c689ccc808cb5cf14bfea8ea235cea80fb45b97d1fa69eb312560318547a159cdd3b8fcedab2350a32d8def585332'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
