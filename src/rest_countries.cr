require "./rest_countries/*"

# TODO: Write documentation for `RestCountries`
module RestCountries
  VERSION = "0.1.0"

  def self.getCountryByCode(code : String) : RestCountries::Country
    data = HTTP::Client.get "https://restcountries.eu/rest/v2/alpha/#{code.downcase}"
    RestCountries::Country.from_json(data.body)
  end

  def self.getCountryByName(name : String) : RestCountries::Country
    data = HTTP::Client.get "https://restcountries.eu/rest/v2/name/#{name.downcase}?fullText=true"
    RestCountries::Country.from_json(data.body)
  end
end
