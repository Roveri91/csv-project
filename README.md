
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
+ [Sidekiq](https://sidekiq.org/) - Background Job Processor
+ [Redis](https://redis.io/) - Database
+ [PostgreSQL](https://www.postgresql.org/) - Database
+ [Docker](https://www.docker.com/) — Development Tools


🗿 Team Members
---
* [Simone Roveri](https://www.linkedin.com/in/simone-roveri/),

💅 Contributing
---
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
