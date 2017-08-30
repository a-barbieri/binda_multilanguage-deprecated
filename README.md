# BindaMultilanguage
This is the official multilanguage package for Binda.

[![Build Status](https://travis-ci.org/lacolonia/binda_multilanguage.svg?branch=master)](https://travis-ci.org/lacolonia/binda_multilanguage)
[![Code Climate](https://codeclimate.com/github/lacolonia/binda/badges/gpa.svg)](https://codeclimate.com/github/lacolonia/binda)
[![Issue Count](https://codeclimate.com/github/lacolonia/binda/badges/issue_count.svg)](https://codeclimate.com/github/lacolonia/binda)

# Requirements
In order to use Binda Multilanguage you need to have already installed Binda CMS. See [Binda's documentation](http://www.rubydoc.info/gems/binda) on how to install it.

Binda Multilanguage uses [Mobility gem](https://github.com/shioyama/mobility), which requires Rails `> 5.0`.

# Installation
To install Binda Multilanguage add this to your gemfile:

```ruby
gem "binda_multilanguage", github: 'lacolonia/binda_multilanguage'

```
Then run bundle followed by Binda Multilanguage generator:

```bash
$ bundle
$ rails generate binda_multilanguage:install
```

# Usage
The plugin works immediately out-of-the-box and add a translation to each field, component or category you create.

# Note

At the time the plugin has been created  Mobility was cryptographically signed. To be sure the gem you install hasn't been tampered with, add Mobility public key as a trusted certificate and install:

```bash
gem cert --add <(curl -Ls https://raw.github.com/shioyama/mobility/master/certs/shioyama.pem)
gem install mobility -P MediumSecurity
```

The MediumSecurity trust profile will verify signed gems, but allow the installation of unsigned dependencies. See current [documentation](https://github.com/shioyama/mobility#installation) for more details.

### License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

### Credits
[Mobility gem](https://github.com/shioyama/mobility).