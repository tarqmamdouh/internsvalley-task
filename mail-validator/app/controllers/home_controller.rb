class HomeController < ApplicationController
  def index; end

  def check_email
    @result = validate
    render 'index'
  end

  private
  def validate
    EmailDomainValidationService.new(email: params['/'][:email]).response
  end

end
