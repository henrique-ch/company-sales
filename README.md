# Company-sales

Um analisador de vendas aceita uploads de arquivos de texto (separados por tabulações).

## Requirements

- Ruby 3.0.1 
- Rails 7.0.4.1
- Postgres 

## Installation

After having extracted this project in your preferred location, enter it and run the command:
```bash
bundle update && yarn install
```
to install all project dependencies. 

#### Extra dependencies used:
- Devise 
- pry-rails
- dotenv-rails
- omniauth-google-oauth2
- omniauth-rails_csrf_protection

#### Create database:

```bash
rails db:create db:migrate 
```

#### Config enviroments

Create the file .env and define the variables GOOGLE_CLIENT_ID and GOOGLE_CLIENT_SECRET

```.env
GOOGLE_CLIENT_ID="your_google_account_id"
GOOGLE_CLIENT_SECRET="your_client_secret"
```

## Start the app

Start the Rails app to see the In-Context-Editor added to the To-Do application. You're ready to localize your app:

```bash
bin/dev
```

You can find your app now by pointing your browser to http://127.0.0.1:3000. If everything worked you can log into the application with your account google or create user account


Ready! If everything went well, you can now use the application safely 🎉🎉



#### Note

if the assets are not loaded completely, run:

```bash
rails assets:precompile
```



## Tests

For run the tests execute:

```bash
rspec 
```
