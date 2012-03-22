require 'shared_admin'

class Admin
  include MongoMapper::Document
  include Shim
  include SharedAdmin

  ## Database authenticatable
  key :email,              :type => String, :null => true
  key :encrypted_password, :type => String, :null => true

  ## Recoverable
  key :reset_password_token,   :type => String
  key :reset_password_sent_at, :type => Time

  ## Rememberable
  key :remember_created_at, :type => Time

  ## Confirmable
  key :confirmation_token,   :type => String
  key :confirmed_at,         :type => Time
  key :confirmation_sent_at, :type => Time
  key :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Encryptable
  key :password_salt, :type => String

  ## Lockable
  key :locked_at, :type => Time
end
