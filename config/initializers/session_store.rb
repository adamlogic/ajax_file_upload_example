# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ajax_uploads_session',
  :secret      => '08a1fb2a05028917cf762fedfb62c4f755ee41efa74d108205b3d8f226fa03d7a9d9df1a006a5ef003736dc2e3e88beee36cf6b4517e11da69e11937cddbbe82'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
