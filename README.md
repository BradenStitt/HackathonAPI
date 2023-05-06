# Hackathon API

The Hackathon API is a RESTful API that provides access to information about various hackathons from Devpost. It allows you to retrieve hackathon data such as names, locations, start dates, end dates, and URLs.

## Table of Contents

- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
  - [Endpoints](#endpoints)
  - [Parameters](#parameters)
  - [Response](#response)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

### Prerequisites

To run the Hackathon API, you need the following prerequisites:

- .NET 5.0 SDK or later
- Visual Studio or Visual Studio Code
- SQL Server or any compatible relational database

### Installation

1. Clone the repository:

   ```shell
   git clone https://github.com/your-username/hackathon-api.git
2. Open the project in your preferred development environment (Visual Studio or Visual Studio Code).
3. Configure the database connection string in the appsettings.json file.
4. Build the project to restore dependencies:

   ```shell
   dotnet build
   
5. Run the project:

   ```shell
   dotnet run
The Hackathon API should now be up and running on http://localhost:5000.

## Usage

### Endpoints

The API provides the following endpoints:

- `GET /hackathons`: Retrieves a list of all hackathons.
- `GET /hackathons/{id}`: Retrieves a specific hackathon by ID.

### Parameters

The endpoints accept the following parameters:

- `id` (optional): The ID of the hackathon to retrieve. If not provided, returns all hackathons.

### Response

The API returns the hackathon data in JSON format. The response includes the following fields for each hackathon:

- `id`: The unique identifier of the hackathon.
- `name`: The name of the hackathon.
- `location`: The location of the hackathon.
- `startDate`: The start date of the hackathon.
- `endDate`: The end date of the hackathon.
- `url`: The URL of the hackathon on Devpost.

Example response:

```json
[
  {
    "id": 1,
    "name": "Hackathon 1",
    "location": "City A",
    "startDate": "2023-05-01",
    "endDate": "2023-05-03",
    "url": "https://devpost.com/hackathon1"
  },
  {
    "id": 2,
    "name": "Hackathon 2",
    "location": "City B",
    "startDate": "2023-06-01",
    "endDate": "2023-06-03",
    "url": "https://devpost.com/hackathon2"
  }
]
```
### Contributing

Contributions to the Hackathon API are welcome! If you find any issues or have suggestions for improvements, please create a GitHub issue or submit a pull request.

### License

The Hackathon API is licensed under the MIT License.


