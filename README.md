# Online Store - bsale

This is an online Store, the back was built using Ruby on Rails --api(API REST).
For the purpose of the project only the method: -GET is available.

1. The database has 2 tables, categories and products
2. Back-end using rails (API REST)

## **Built With**

- Ruby on Rails Api
- Active_model_serializers
- Heroku

### **Endpoints of API**

| Method | Endpoint   |      Functionality |
| ------ | ---------- | -----------------: |
| GET    | products   |   Get the products |
| GET    | categories | Get the categories |
| GET    | search     |     Get the search |

## **API Deployed At:**

### [BSALE Online Store](https://stormy-meadow-49812.herokuapp.com/)

## **Getting Started**

- Open your terminal and cd where you want to store the project.

`git clone hhttps://github.com/Wusinho/booking-backend-api.git`

After that, open the folder with the code editor of your choice and follow the steps below.

## Setting up the necessary packages:

- Make sure you have [Yarn](https://yarnpkg.com/) installed in your machine.\*\*

- Open the terminal and go to the folder of the game and run the following commands:

  `yarn install`

  `bundle install`

- Those commands will ensure you installed the proper packages required and install all the gems needed for the project.\*\*

## Configure the Database

- You need to configure the database with the following commands:\

  - rails db:create
  - rails db:migrate
  - rails db:seed

- This command will create the database, migrate the tables as necessary, and populate it needed some data.

## Starting the Server

- To start the server run: <br>
  `rails s -p 4000`

**The front-end app is configured to run on 3000 port**

## **Author**

👤 **Heber Lazo**

- Github: [@Wusinho](https://github.com/Wusinho)
- LinkedIn: [Heber Lazo](https://www.linkedin.com/in/heber-lazo-benza-523266133/)

## 🤝 **Contributing**

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Wusinho/booking-backend-api/issues).

## **Show your support**

Give a ⭐️ if you like this project!

## 📝 **License**

This project is [MIT](LICENSE) licensed.
