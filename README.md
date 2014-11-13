# GACE
> Google Analytics Content Experiments + Rails = AWESOME

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gace'
```

Update application.html.erb layout to include necessary javascript.
Make sure to include the javascript at the very top of your head (per Google Analytics installation instructions).

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
Configure each variation with a different `gace_var` parameter value.

example:
* control: `http://mysite.com/signup`
* variation one: `http://mysite.com/signup?gace_var=expensive`
* variation two: `http://mysite.com/signup?gace_var=cheap`

Make sure to record the newly created experiment ID.


#### Configure the experiment within Rails
```ruby
class UsersController < ApplicationController
  def show
    define_experiment :test_pricing, '28391929-0'
  end
end
```

#### Create views for experiment variations

1. Create a directory for the experiment: `app/experiments/EXPERIMENT_NAME` (ex: app/experiments/test_pricing)
2. Create a directory for each experiment variation.  The directory name **must match** the `gace_var` parameter
   used when setting up the experiment in Google Analytics.  (ex: `app/experiments/test_pricing/expensive` and `app/experiments/test_pricing/cheap`)
3. Create any views/partials to be used for that variation.  Each directory should mirror structure used by app/views and will override
   the default views if one exists.  (ex: `app/experiments/test_pricing/expensive/users/show.html.erb`)

## Contributing

1. Fork it ( https://github.com/thegarage/gace/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Related Projects
* [weebo](https://github.com/clemens/weebo)
