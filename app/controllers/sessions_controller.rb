class SessionsController < ApplicationController
  layout false

  def create
    # Do authentication
    # Redirect to the root_path
    # Display a notice that login was either successful or unsuccessful
  end

  def destroy
    # Do sign-out
  end

end