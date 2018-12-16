require 'impressionist/load'

module Impressionist
  # Define default ORM
  mattr_accessor :orm
  mattr_accessor :user_function
  mattr_accessor :global_exclude
  @@orm = :active_record
  @@user_function = nil
  @@global_exclude = []

  # Load configuration from initializer
  def self.setup
    yield self
  end
end
