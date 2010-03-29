# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_schlampenbe_session',
  :secret      => '42c2e47e91201543a7887ec9353db30c443c2cc79ce80893bf82ae65f5a94eb5acc80c5727138abbf063a00b11427299de0322f1e1ad50a390ff3fa58dcf6b8c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
ActionController::Base.session_options[:expire_after] = 30.minutes