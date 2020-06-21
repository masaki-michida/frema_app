class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname , :birth , :zip , :prefecture_id , :adress_city , :adress_street , presence: true
  validates :familyname, :firstname , :family_ch , :first_ch , :to_familyname , :to_firstname , :to_family_ch , :to_first_ch , presence: true , format: { with: /\A[ぁ-んァ-ン一-龥]/}
  validates :email, presence: true, format: { with: /\A\S+@\S+\.\S+\z/}
end
