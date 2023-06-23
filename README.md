# README

## Setup

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

