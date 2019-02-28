class EmailDomainValidationService
  def initialize(params)
    @email = params[:email]
  end

  def response
    HTTParty.get('https://apilayer.net/api/check?' +
                     'access_key=c1544b761f617e130acf72b635238096' +
                     '&email=' + @email +'& smtp = 1& format = 1').parsed_response
  end
end