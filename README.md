# GACE
> Google Analytics Content Experiments + Rails = AWESOME

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gace'
```

Update application.html.erb layout to include necessary javascript:

```html
<<!DOCTYPE html>
<html>
<head>
  <%= gace_javascript_include %>
</head>
<body>
</body>
</html>
```

## Usage

#### Setup experiment in Google Analytics
1. configure each variation with a different `gace_var` parameter value.

example:
* control: `http://mysite.com/signup`
* variation one: `http://mysite.com/signup?gace_var=expensive`
* variation two: `http://mysite.com/signup?gace_var=cheap`

2. Record the newly created experiment ID.


#### Configure the experiment within Rails
```ruby
class UsersController < ApplicationController
  def show
    define_experiment :test_pricing, '28391929-0'
  end
end
```

#### Create experiment variation views

Any views within these directories will be used for your experiment

app/experiments/test_pricing/expensive

app/experiments/test_pricing/cheap


## Contributing

1. Fork it ( https://github.com/thegarage/gace/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Related Projects
* [weebo](https://github.com/clemens/weebo)
