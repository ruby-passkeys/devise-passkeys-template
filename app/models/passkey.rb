class Passkey < ApplicationRecord
  belongs_to :user

  validates :label, uniqueness: { scope: :user}
  validates :external_id, uniqueness: true
  validates :public_key, uniqueness: true
end
