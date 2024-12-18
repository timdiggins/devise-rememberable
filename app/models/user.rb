class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable,  and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable,
         :timeoutable, :trackable,
         :validatable
end
