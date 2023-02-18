class Passkey < ApplicationRecord
  belongs_to :user

  validate :label, uniqueness: { scope: :user}
  validate :external_id, uniqueness: true
  validate :public_key, uniqueness: true
end
