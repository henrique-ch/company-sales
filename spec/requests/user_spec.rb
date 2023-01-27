require 'rails_helper'

RSpec.describe Users::OmniauthCallbacksController, type: :controller do
  it{ should route(:post, '/users/auth/google_oauth2').to(action: :passthru) }

  it{ should route(:post, '/users/sign_in').to(controller: 'devise/sessions', action: :create) }
  it{ should route(:get, '/users/sign_out').to(controller: 'devise/sessions', action: :destroy) }
end
