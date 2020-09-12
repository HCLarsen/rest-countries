require "json"

module RestCountries
  class Country
    include JSON::Serializable

    getter name : String
    getter topLevelDomain : Array(String)
    getter alpha2Code : String
    getter alpha3Code : String
    getter callingCodes : Array(String)
    getter capital : String
    getter altSpellings : Array(String)
    getter region : String
    getter subregion : String
    getter population : Int32
    getter latlng : Array(Float64)
    getter demonym : String
    getter area : Float64
    getter gini : Float64
    getter timezones : Array(String)
    getter borders : Array(String)
    getter nativeName : String
    getter numericCode : String
    getter currencies : Array(Currency)
    getter languages : Array(Language)
    getter translations : Hash(String, String)

    struct Currency
      include JSON::Serializable

      getter code : String
      getter name : String
      getter symbol : String
    end

    struct Language
      include JSON::Serializable

      getter iso639_1 : String
      getter iso639_2 : String
      getter name : String
      getter nativeName : String
    end
  end
end
