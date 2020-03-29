# rest_countries

A Crystal wrapper for the Rest [Countries API](https://restcountries.eu/).

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     rest_countries:
       github: HCLarsen/rest_countries
   ```

2. Run `shards install`

## Usage

```crystal
require "rest_countries"
```

```crystal
canada = RestCountries.getCountryByCode("CAN")
canada.capital  #=> "Ottawa"
```

## Contributing

1. Fork it (<https://github.com/HCLarsen/rest_countries/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Chris Larsen](https://github.com/HCLarsen) - creator and maintainer
