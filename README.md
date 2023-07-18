# README

## Prerequisites

_Please use your platform's specific instructions for the below as needed._

### Requirements

- Ruby via the `.ruby-version`
- The gems in the associated `Gemfile`
- [`puma-dev`](https://github.com/puma/puma-dev) to simplify HTTPS connections (WebAuthn requires a [Secure context](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts))


## Setup

To have `puma-dev` proxy the requests to the foreground server (`bundle exec rails server`), you will need to specify the port to map to the test domain (see: https://github.com/puma/puma-dev#proxy-support):

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

