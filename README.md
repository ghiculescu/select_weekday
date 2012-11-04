#select_weekday

A &lt;select> tag for easily picking a day of the week, 
plus some convenience methods for handling weekdays throughout your code.

## Installation

`gem install select_weekday`, or add select_weekday to your Gemfile and `bundle install`.

https://rubygems.org/gems/select_weekday

## Usage

select_weekday gives you two new view helpers.

* `select_weekday`
* `select_weekday_tag`

It also adds methods for parsing weekdays to `Date`, `DateTime`, and `ActiveSupport::TimeZone`.

* `self.weekday` (`Date` only)
* `self.parse_weekday`

### select_weekday

`ActionView::Helpers::FormBuilder.select_weekday(method, options = {}, html_options = {})`

Here, our form has a model with an attribute called `week_start_day`.

```ruby
<%= f.select_weekday :week_start_day %>
```

### select_weekday_tag

`ActionView::Helpers::FormTagHelper.select_weekday_tag(name, selected = nil, options = {})`

If you don't want to bind to a model's form, you can also create the <select> directly. You can set the selected value
by name or index. Days are zero-indexed, based on `Date::DAYNAMES`.

```ruby
select_weekday_tag :week_start_day, "Monday"
select_weekday_tag :week_start_day, "2"
select_weekday_tag :week_start_day, 3
```

### self.weekday

`Date.weekday(idx)`

Given a weekday by name or index, return the weekday's name.

```ruby
Date.weekday "Monday"
=> "Monday"
Date.weekday "2"
=> "Tuesday"
Date.weekday 3
=> "Wednesday"
```

### self.parse_weekday

* `Date.parse_weekday(idx)`
* `DateTime.parse_weekday(idx)`
* `ActiveSupport.TimeZone::parse_weekday(idx)`

Given a weekday by name or index, parse it as a date/time.

```ruby
Date.parse_weekday "Monday"
=> Mon, 05 Nov 2012
DateTime.parse_weekday "2"
=> Tue, 06 Nov 2012 00:00:00 +0000
Time.zone.parse_weekday 3
=>  Wed, 07 Nov 2012 00:00:00 EST +10:00
```

## Copyright

Copyright (c) 2012 Alex Ghiculescu. See LICENSE.txt for further details.