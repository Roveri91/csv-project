
㊗️ CSV-Project
---

Upload CSV and JSON files

**OVERVIEW**

Welcome to the repository for CSV-Project! This project was developed as a task during my internship to demonstrate the ability to handle data from different sources. The application is designed to efficiently save data from CSV files and parse JSON data from an API.

📱SCREENSHOT
---


---

⚙️ Setup
---
Install gems

```
bundle install
```
DB Setup

```
rails db:create
rails db:migrate
rails db:seed
  
```

Run a server

```
rails s
```
Run Redis

```
redis-server
```

Run Sidekiq

```
bundle exec sidekiq
```



📕 Usage
---
In order to parse JSON file need to run this [app](https://github.com/murajun1978/example-mock-api) on your localhost:4000

You can run this app just simply clone it and run a docker
Run Docker

```
docker compose up
```



🔨 Built With
---
+ [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
+ [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
+ [Heroku](https://www.heroku.com/) - Deployment
+ [PostgreSQL](https://www.postgresql.org/) - Database
+ [Bootstrap](https://getbootstrap.com/) — Styling
+ [Figma](https://www.figma.com/ja/) — Prototyping


🗿 Team Members
---
* [Simone Roveri](https://www.linkedin.com/in/simone-roveri/),
* [Johnny Smith](https://www.linkedin.com/in/jonathan-smith-046007138/),
* [Giulia Menin](https://www.linkedin.com/in/giuliamenin/),
* [Tenny Ma](https://www.linkedin.com/in/tennyma/).


💅 Contributing
---
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
