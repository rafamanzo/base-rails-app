## Base Rails APP

An empty rails app configured the way I like it :)

**Notice**: this Rails 5 release is still beta. If you're starting a fresh application, go for it. Otherwise look at the `rails4` branch.

Breaking changes:

* `mocha` has not been included in favour of `rspec-expectations`
* `boilerplates` are no more included

Soft changes:

* `konacha` has been replaced by `teaspoon` which favours Rails 5 compatibility

### Copyright

2014-2016 Rafael Reggiani Manzo

Even that this code has just basic modifications from a clean Rails application and I want to impose no restrictions on it, just for the formality here I define the license as MIT. Please check its text on the COPYING file.

If you feel big-hearted, please acknowledge my work maintaining this repository by putting a link to this repository on whatever your THANKs file is. Thank you :)

### Versions
* Ruby version: **2.3.1**
* Rails version: **5.0.0.rc1**

### System dependencies
* RVM: https://rvm.io

### Usage

1. You are free to change the license on the _COPYING_ file
1. Discard this _README.md_ file and use the Rails' original one _README.md.rails_
1. Fix the _public/humans.txt_ file with your own info
1. There is a _config/database.yml.sample_ file that you can use to create the actual _config/database.yml_ which is required by Rails
1. The same is valid for _config/secrets.yml.sample_ file that you can use to create the actual _config/secrets.yml_ which is required by Rails
1. Change the gemset name at _.ruby-gemset_
   After this you may need to exit the current folder and enter it again so RVM notice the change
1. Run _bundle_ _install_ to install all the gems
1. Your unit tests are expected to be at the _spec_ folder following RSpec's standards (http://rspec.info)
   You should run them with the _rake_ _spec_ command
1. Your acceptance tests are expected to be at the _features_ following the cucumber standards (https://cukes.info)
   You should run them with the _rake_ _cucumber_ command
1. If you are brave enough you can unit test your JavaScript/CoffeeScript using Konacha (Sinon.JS is available for mocking)

From here you are by yourself. Don't forget to check the Rails Guides when in doubt (http://guides.rubyonrails.org).

Don't hesitate on opening a issue with any question.

### Known Users

* Mezuro
  * https://github.com/mezuro/prezento
  * https://github.com/mezuro/kalibro_processor
  * https://github.com/mezuro/kalibro_configurations
* Monitoria IME - USP
  * https://github.com/Kazuo256/monitoria-imeusp
