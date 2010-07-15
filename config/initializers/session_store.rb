# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ror_test_session',
  :secret      => '16d7c8aa0e50678f50fd77467da8ec6129a77b8e430d66174483f503ef1dd5abe7cc928d21acd52a6848abf4c430637e1529773efab930af68f28ff85fa1350c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
