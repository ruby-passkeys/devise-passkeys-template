# frozen_string_literal: true

class Users::ReauthenticationController < Devise::Passkeys::ReauthenticationController
  include RelyingParty

  def set_relying_party_in_request_env
    request.env[relying_party_key] = relying_party
  end
end
