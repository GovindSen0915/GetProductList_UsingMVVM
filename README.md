# GetProductList_UsingMVVM

- **Project Overview**
  - This project is an iOS app for displaying a list of products fetched from a remote API and showing their details in a table view.

- **Key Components**
  - **ProductListViewController**
    - Main view controller responsible for displaying the list of products.
    - Uses a `UITableView` to display product items.
    - Utilizes a `ProductViewModel` to manage data and API interactions.

- **ProductViewModel**
  - Manages the business logic and data for the product list.
  - Utilizes closures for data binding to update the view controller.
  - Fetches product data from a remote API using the `APIManager` singleton.

- **ProductCell**
  - Custom table view cell for displaying product details.
  - Configured with product information including title, category, description, price, rating, and an image.

- **Data Models**
  - `Product` and `Rate` are decodable data structures used to represent product data fetched from the API.

- **APIManager**
  - Singleton class responsible for making network requests to fetch product data from a remote API.
  - Handles response parsing and error handling.

- **Extensions**
  - Includes extensions for UIImageView to easily load and display images from URLs using the Kingfisher library.

- **Constants**
  - Contains constants, including the API endpoint URL, defined in the `Constant` enum.

- **Error Handling**
  - Utilizes custom error types (`DataError`) to handle various error scenarios, such as invalid data, invalid response, invalid URL, and network errors.

- **Dependencies**
  - Uses the Kingfisher library for image loading and caching.
  - Utilizes UIKit for the iOS user interface components.

- **Project Structure**
  - Follows the Model-View-ViewModel (MVVM) design pattern to separate concerns and maintain a clean architecture.
  - The codebase is organized into separate files and extensions for clarity and maintainability.

- **Usage**
  - Developers can use this project as a template for building iOS apps with a similar structure for displaying data from a remote API.
  - Easily customizable and extendable to add additional features or functionality.

- **Installation**
  - To run the project, developers should clone the repository and install any required dependencies, such as CocoaPods for Kingfisher.

This README provides a high-level overview of the project structure and components, making it easier for users and potential contributors to understand and work with your iOS app project.
