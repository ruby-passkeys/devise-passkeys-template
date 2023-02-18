# frozen_string_literal: true

class Users::RegistrationsController < Devise::Passkeys::RegistrationsController
  include RelyingParty
end
