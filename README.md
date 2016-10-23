# Mina Procodile

[Mina](https://github.com/mina-deploy/mina) tasks for handling [Procodile](https://github.com/adamcooke/procodile)

This gem provides several mina tasks:

```ruby
mina procodile:start   # Start Procodile processes
mina procodile:stop    # Stop Procodile processes
mina procodile:restart # Restart Procodile processes
mina procodile:status  # View Procodile status
```

## Installation

Add this line to your application's Gemfile:

```
gem "mina-procodile", require: false
```

## Usage

Add this to your `config/deploy.rb` file

```
require "mina/procodile"
```

## Contributing

Fork this repo, commit any changes and create a pull request :)
