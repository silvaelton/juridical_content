module Internal
  class Session
    include ActiveModel::Model 

    attr_accessor :email, :password,:user_id

    validates :email, email: true, presence: true
    validates :password, presence: true
    validate  :valid_user?

    private

    def valid_user?
      user = Internal::User.where(email: self.email, password: self.password).first

      if user.present?
        self.user_id = user.id
      else 
        errors.add(:email, "E-mail ou Senha não conferem.")
      end
    end
  end
end