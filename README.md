# BindaMultilanguage
This is the official multilanguage package for Binda.

## Requirements
In order to use Binda Multilanguage you need to have already installed Binda CMS. See [Binda's documentation](https://github.com/lacolonia/binda/wiki) on how to install it.

Binda Multilanguage uses [Mobility gem](https://github.com/shioyama/mobility), which requires Rails `> 5.0`.

## Installation
To install Binda Multilanguage add this to your gemfile:
```ruby
gem "binda_multilanguage",   github: "lacolonia/binda_multilanguage"
gem "mobility",              github: "shioyama/mobility",               ref: "fix_generators_location"

```
Then run bundle followed by Binda Multilanguage generator:
```bash
$ bundle
$ rails generate binda:multilanguage
```

## Usage
The plugin works immediately out-of-the-box and add a translation to each field, component or category you create.

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Credits
Thank you to the guys behind [Mobility](https://github.com/shioyama/mobility) for the excellent job.