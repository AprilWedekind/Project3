# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_comforum_session',
  :secret      => '7c372b6b3e903dc1223d8bf3dfe296f0b0f1514391ccbf7c0dac16418f92adcc6a74a914ae67907fe36f8fe51dbfe4d8a6fd4403e7801c354b1d26bfad26aad8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
