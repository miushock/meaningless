require 'digest/sha2'

class Resource < ActiveRecord::Base

  validates_presence_of :resource_id
  validates_presence_of :content
  validates_presence_of :sharing_policy
  validates_presence_of :resource_type
  validates_uniqueness_of :resource_id

  def to_param
    self.resource_id
  end

  before_validation(on: :create) do
    sha256 = Digest::SHA256.new
    self.resource_id = sha256.hexdigest(self.content) if not attribute_present?("resource_id")
  end

end
