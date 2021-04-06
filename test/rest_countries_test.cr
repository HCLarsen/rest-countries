require "minitest/autorun"
require "webmock"

require "/../src/rest_countries.cr"

WebMock.stub(:get, "https://restcountries.eu/rest/v2/alpha/can").to_return(status: 200, body: File.read("test/files/canada.json"))
WebMock.stub(:get, "https://restcountries.eu/rest/v2/alpha/cad").to_return(status: 404, body: "Not Found")

class CountryTest < Minitest::Test
  def test_gets_country_data_by_code

    canada = RestCountries.getCountryByCode("CAN")
    assert_equal "Ottawa", canada.capital
  end

  def test_raises_error_with_inaccurate_country_code
    error = assert_raises do
      canada = RestCountries.getCountryByCode("CAD")
    end
    assert_equal "Rest Countries error: 404 Not Found", error.message
  end
end
