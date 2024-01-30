# Web-App-DevOps-Project

Welcome to the Web App DevOps Project repo! This application allows you to efficiently manage and track orders for a potential business. It provides an intuitive user interface for viewing existing orders and adding new ones.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Technology Stack](#technology-stack)
- [Contributors](#contributors)
- [License](#license)

## Features

- **Order List:** View a comprehensive list of orders including details like date UUID, user ID, card number, store code, product code, product quantity, order date, and shipping date.
  
![Screenshot 2023-08-31 at 15 48 48](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/3a3bae88-9224-4755-bf62-567beb7bf692)

- **Pagination:** Easily navigate through multiple pages of orders using the built-in pagination feature.
  
![Screenshot 2023-08-31 at 15 49 08](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/d92a045d-b568-4695-b2b9-986874b4ed5a)

- **Add New Order:** Fill out a user-friendly form to add new orders to the system with necessary information.
  
![Screenshot 2023-08-31 at 15 49 26](https://github.com/maya-a-iuga/Web-App-DevOps-Project/assets/104773240/83236d79-6212-4fc3-afa3-3cee88354b1a)

- **Data Validation:** Ensure data accuracy and completeness with required fields, date restrictions, and card number validation.

## Getting Started

### Prerequisites

For the application to succesfully run, you need to install the following packages:

- flask (version 2.2.2)
- pyodbc (version 4.0.39)
- SQLAlchemy (version 2.0.21)
- werkzeug (version 2.2.3)

### Usage

To run the application, you simply need to run the `app.py` script in this repository. Once the application starts you should be able to access it locally at `http://127.0.0.1:5000`. Here you will be meet with the following two pages:

1. **Order List Page:** Navigate to the "Order List" page to view all existing orders. Use the pagination controls to navigate between pages.

2. **Add New Order Page:** Click on the "Add New Order" tab to access the order form. Complete all required fields and ensure that your entries meet the specified criteria.

## Technology Stack

- **Backend:** Flask is used to build the backend of the application, handling routing, data processing, and interactions with the database.

- **Frontend:** The user interface is designed using HTML, CSS, and JavaScript to ensure a smooth and intuitive user experience.

- **Database:** The application employs an Azure SQL Database as its database system to store order-related data.

## Contributors 

- [Maya Iuga]([https://github.com/yourusername](https://github.com/maya-a-iuga))
- Genuine Mathew

## Project Milestones

### Milestone 1

- Understanding project requirements and setting up virtual enviornment

### Milestone 2

- Forked and cloned the project repository.
- Created a feature branch (feature/add-delivery-date) from the main branch.
- Updated app.py and order.html to include a delivery date column in the order list output.
- Pushed changes to the remote repository and submitted a pull request.
- As the PR reviewer, merged the pull request.
- Created a branch (revert-delivery-date) to revert changes due to a missing delivery_date column in the database.
- Merged the revert-delivery-date branch to undo the changes.


### Milestone 3

- Created Dockerfile to configure layers for image building.
- Executed the build command for image creation.
- Addressed port and revert-delivery-date issues from the previous milestone.
- Tested container functionality to ensure proper operation.
- Uploaded the image to the Docker Hub registry.
- Updated README.md

### Milestone 4

#### Task 1
- Read and understand the milestone requirements.
- Review and confirm prerequisites.
- Initialized the project, including the creation of the aks-terraform directory and its subdirectories: aks-cluster-module and networking-module.
- Double-checked all the work before proceeding to Task 2.

#### Task 2
- Created variable.tf in networking-module.
- Defined variables for location, virtual network address space, and resource group name.
- Configured and customized the variable block for description, type, and default values.
- Double-checked all the work before moving on to Task 3.

#### Task 3
- Create main.tf in networking-module
- Created a resource group and configured it through key-value pair arguments inside the resource block.
- Created a Virtual Network and two subnets (worker node and control plane) for AKS, configuring them through key-value pair arguments inside the resource block.
- Created a network security group and configured rules such as inbound, TCP protocol, source destination, etc.
- Double-checked all the work before moving on to Task 4.

#### Task 4
- Created outputs.tf in networking-module
- Create output variables to store IDs for the network security group, subnets and VNet.
- Double-checked all the work before moving onto Task 5


#### Task 5
- Executed the terraform init command to initialize the networking-module, which installs all the relevant dependencies and state files.

#### Task 6
- Documented the progress, deliverables and updates in README.md

#### TODO
- Update all documentation style to that of Milestone 4

## License

This project is licensed under the MIT License. For more details, refer to the [LICENSE](LICENSE) file.

