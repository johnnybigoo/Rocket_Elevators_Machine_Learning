class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :employee

  validate :secure_password, :if => :setting_password?


  def secure_password
    pc = password_complexity
    if pc == false
      errors.add :password, "must include at least one of the following: uppercase, lowercase, digit"
    end
  end

  def password_complexity
    return false if (password =~ /[a-z]/).nil?
    return false if (password =~ /[A-Z]/).nil?
    return false if (password =~ /[0-9]/).nil?
    return false unless (password.downcase[/password/]).nil?
  end
end
