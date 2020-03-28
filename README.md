# rest-countries

A Crystal wrapper for the Rest [Countries API](https://restcountries.eu/).

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     rest-countries:
       github: HCLarsen/rest-countries
   ```

2. Run `shards install`

## Usage

```crystal
require "rest-countries"
```

```crystal
canada = RestCountries.getCountry("CAN")
canada.capital  #=> "Ottawa"
```

## Contributing

1. Fork it (<https://github.com/HCLarsen/rest-countries/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Chris Larsen](https://github.com/HCLarsen) - creator and maintainer
