
㊗️ CSV-Project
---

Upload CSV and JSON files

**OVERVIEW**

Welcome to the repository for CSV-Project! This project was developed as a task during my internship to demonstrate the ability to handle data from different sources. The application is designed to efficiently save data from CSV files and parse JSON data from an API.

📱SCREENSHOT
---
![Screenshot 2024-02-08 180337](https://github.com/Roveri91/csv-project/assets/105217392/3b932567-ea47-494e-9a0d-5f8a0a2e22e2)
![Screenshot 2024-02-08 180440](https://github.com/Roveri91/csv-project/assets/105217392/97ba7e13-5dcf-4ef3-be4c-63ed0fe4046b)
![Screenshot 2024-02-08 180719](https://github.com/Roveri91/csv-project/assets/105217392/54e792da-fb9f-4253-835b-4a41d8ef8410)
![Screenshot 2024-02-08 180605](https://github.com/Roveri91/csv-project/assets/105217392/77e57b6d-45a2-4a4a-aea3-0d0a7db2e08b)
![Screenshot 2024-02-08 180418](https://github.com/Roveri91/csv-project/assets/105217392/cc6038e7-8215-4546-9203-7368cee9dcb2)

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
* [Simone Roveri](https://www.linkedin.com/in/simone-roveri/)

💅 Contributing
---
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
