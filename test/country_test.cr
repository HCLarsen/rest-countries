require "minitest/autorun"

require "/../src/rest_countries/country"

class CountryTest < Minitest::Test
  def test_initializes_from_json
    file = File.new("test/files/canada.json")
    json = file.gets_to_end
    file.close

    canada = RestCountries::Country.from_json(json)
    assert_equal "Ottawa", canada.capital
  end
end
