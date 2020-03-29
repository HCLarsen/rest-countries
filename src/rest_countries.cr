require "http/client"

require "./rest_countries/*"

module RestCountries
  VERSION = "0.1.0"

  def self.getCountryByCode(code : String) : RestCountries::Country
    data = HTTP::Client.get "https://restcountries.eu/rest/v2/alpha/#{code.downcase}"
    if data.success?
      RestCountries::Country.from_json(data.body)
    else
      raise Exception.new("Rest Countries error: #{data.status_code} #{data.body}")
    end
  end
end
