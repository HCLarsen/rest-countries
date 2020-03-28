require "json"

module RestCountries
  class Country
    JSON.mapping(
      name: String,
      topLevelDomain: Array(String),
      alpha2Code: String,
      alpha3Code: String,
      callingCodes: Array(String),
      capital: String,
      altSpellings: Array(String),
      region: String,
      subregion: String,
      population: Int32,
      latlng: Array(Float64),
      demonym: String,
      area: Float64,
      gini: Float64,
      timezones: Array(String),
      borders: Array(String),
      nativeName: String,
      numericCode: String,
      currencies: Array(Currency),
      languages: Array(Language),
      translations: Hash(String, String)
    )

    struct Currency
      JSON.mapping(
        code: String,
        name: String,
        symbol: String
      )
    end

    struct Language
      JSON.mapping(
        iso639_1: String,
        iso639_2: String,
        name: String,
        nativeName: String
      )
    end
  end
end
