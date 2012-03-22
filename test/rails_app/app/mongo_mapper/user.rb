require 'shared_user'

class User
  include MongoMapper::Document
  include Shim
  include SharedUser

  key :username, :type => String
  key :facebook_token, :type => String

  ## Database authenticatable
  key :email,              :type => String, :null => false, :default => ""
  key :encrypted_password, :type => String, :null => false, :default => ""

  ## Recoverable
  key :reset_password_token,   :type => String
  key :reset_password_sent_at, :type => Time

  ## Rememberable
  key :remember_created_at, :type => Time

  ## Trackable
  key :sign_in_count,      :type => Integer, :default => 0
  key :current_sign_in_at, :type => Time
  key :last_sign_in_at,    :type => Time
  key :current_sign_in_ip, :type => String
  key :last_sign_in_ip,    :type => String

  ## Encryptable
  # key :password_salt, :type => String

  ## Confirmable
  key :confirmation_token,   :type => String
  key :confirmed_at,         :type => Time
  key :confirmation_sent_at, :type => Time
  # key :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Lockable
  key :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  key :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  key :locked_at,       :type => Time

  ## Token authenticatable
  key :authentication_token, :type => String
  
  timestamps!
end
