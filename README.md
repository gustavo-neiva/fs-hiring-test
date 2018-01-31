# Luvotels - Full-stack hiring test

## Foreword

App: https://fs-hiring-test-luizgzn.herokuapp.com/ 

My goal was to make a real dashboard for the motel owners.

## API connection

The app uses ActiveResource to connect to the API. The idea is to be ready to fully implement the connection of the client side app with a RESTful API.
## Database

The client app only has a user model.

## Dashboard

The main view of the app is the Motel dashboard. It contains the basic information about the motel that were made through the platform, like revenue, income, fees and number of bookings.

I added a spreadsheet with every booking that was made with each Motel, so the user can easily access and copy the data and paste it in Excel or other spreadsheets programs.

There are graphs as well, one in the motel dashboard and another in each room dashboard, implementing the beggining of business analysis features.

## Users

I created three users, each one owns a motel.

- email: 1@teste.com
- email: 2@teste.com
- email: 3@teste.com

password: 123456

## User experience and design

I had a mobile first approach, so all views started being constructed with a mobile device screen size in mind.

The spreadsheet did not have a good user experience with a small screen device, so it can be only used in medium to large screen devices, like tablets, desktops and laptops. It did not made much sence to implement a spreadsheet to be used in a smartphone since most of the office work is made in desktops or laptops, so I chose to remove the spreadsheet for small screen devices. 

The graphs are working in a small screen device.

To speed up development, I used some Bootstrap and Le Wagon UI components. I tried to mock the [Luvotels site](https://www.luvotels.com/) as much as it made sense.

## Things to improve
  - Add tests
  - The design can bem simpler
  - Add more dashboard features
  - Add a button to download the CSV file for the bookings spreadsheet
  - Deeper data analysis

## Deploy

https://fs-hiring-test-luizgzn.herokuapp.com/

