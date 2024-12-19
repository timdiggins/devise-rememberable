# README

This is a repo for testing devise with rememberable and timeoutable both on.

This has the following setup:

```
  config.remember_for = 90.seconds
  config.extend_remember_period = false
  config.timeout_in = 30.seconds
```

## Set it up

```shell
bundle install
bundle exec rails db:setup
bundle exec rails r "CreateTestUsers.perform_now"
bundle exec rails s
```

## Test it:

### timeoutable
http://localhost:3000

    log in:
    with test0@example.com, testpassword, leaving remember me unchecked
    
    wait for ~15s
    press refresh link (should be logged in still because not reached timeout)
    wait for ~35s
    press Refresh page link (should be logged out because reached timeout)

### rememberable (extended)
http://localhost:3000 (or click "Reset params" if following on from above - to make timing easier)

    log in:
    with test0@example.com, testpassword, checking remember me
    
    wait for ~45s
    press refresh link (should be logged in still because of remember me)
    wait for ~35s
    press refresh link (should be logged in still because of remember me)
    wait for ~35s
    press refresh link (should be logged in still because of remember me being extended)
