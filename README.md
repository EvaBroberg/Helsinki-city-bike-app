# Helsinki-city-bike-app

The project aims to display data from journeys made with city bikes in the Helsinki Capital area. The data is fetched, stored in a database, and displayed using a React frontend. The backend is implemented using Python. The project has tests (specify what tests) to ensure that the application works as expected.

Frontend:
- Application fetches data from the Helsinki city bike API.
-  Frontend was built using React.

Backend:
- The application imported data from a CSV file to the database
- The application validates the data before importing it to the database. It doesn’t import journeys that lasted for less than ten seconds or covered distances shorter than 10 meters.
- Endpoints are provided to retrieve data for the frontend, as well as to store new journeys data or new bicycle stations.
- The backend is containerized using Docker and deployed to the cloud.

- Backend was built using python and flask.

Database:
- SQLite is used to store fetched data. This database was chosen for the project because it is lightweight which makes is well suited for small to medium sized projects and because it is built into Python which is used for our backend making development faster and straight forward.

User stories:
- User is able to view all the journeys in sets of 10 using pagination.
- Upon the click on the journey user will access to departure and return stations, covered distance in kilometers, and duration in minutes. 
- The list of journeys can be ordered by each column.
- The list of journeys can be searched using a search bar.

- The list of stations will be paginated.
- For each station, the station name and address will be displayed.
- The list of stations can be searched using a search bar.

