# cocoapods-disable-podfile-validations

A small CocoaPods plugin that allows disabling individual Podfile validations.

## Installation

    $ gem install cocoapods-disable-podfile-validations

## Usage

```ruby
# Podfile

plugin 'cocoapods-disable-podfile-validations',
       'validate_no_abstract_only_pods' => true
```
