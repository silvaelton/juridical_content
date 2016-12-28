class User < ApplicationRecord
  attr_accessor :password_confirmation
  
  scope :authors, -> { where(author: true) || where(columnist: true) }

  validates :name, :email, presence: true
  validates :email, email: true, uniqueness: true
  validates :password, :password_confirmation, presence: true, length: { maximum: 20, minimum: 6}, if: 'self.password_changed?'
  validate  :confirm_password

  def confirm_password
    if self.password_changed?
      if self.password != self.password_confirmation
        errors.add(:password, "Senhas não são iguais")
      end
    end
  end
end
