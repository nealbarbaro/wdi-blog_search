As usual, add your info to a `.env` file and run the setup commands (below).

```
RACK_ENV=development
DB_USER=yours
DB_PASS=yours
```

```
bundle install
rake db:create
rake db:migrate
rake db:seed
```