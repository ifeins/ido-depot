class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password

  before_destroy :ensure_an_admin_remains

  def ensure_an_admin_remains
    User.count > 1
  end
end
