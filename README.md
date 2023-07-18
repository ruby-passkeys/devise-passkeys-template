# README

## Prerequisites
Install Ruby 3.2.1
Install gems
`bundle install`
Install puma-dev (e.g. using homebrew on macOS/Linux)
`brew install puma/puma/puma-dev`
Configure some DNS settings that have to be done as root
`sudo puma-dev -setup`
Configure puma-dev to run in the background on ports 80 and 443 with the domain `.test`.
`puma-dev -install`


## Setup
You need to run the App with Puma alongside puma-dev 
Tell puma-dev to forward requests from https://devise-passkeys.test to 127.0.0.1:3210
```sh
echo '3210' > ~/.puma-dev/devise-passkeys
```

## Running the server

```sh
./bin/dev_server
```

_(which is a simple wrapper around):_

```sh
bundle exec rails s --port 3210
```

The app is now running at [https://devise-passkeys.test](https://devise-passkeys.test)

_Pulled from [Getting your Rails dev environment ready for passkeys](https://thomascannon.me/guides/rails-development-and-passkeys)_

