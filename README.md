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
- Creation of the aks-terraform directory and its subdirectories: aks-cluster-module and networking-module.
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

### Milestone 5

#### Task 1
- Read and understand the milestone requirements.
- Review and confirm prerequisites.
- Created variable.tf in aks-cluster-module.
- Define the following input variables:
	- A aks_cluster_name variable that represents the name of the AKS cluster you wish to create.
	- A cluster_location variable that specifies the Azure region where the AKS cluster will be deployed to.
	- A dns_prefix variable that defines the DNS prefix of cluster.
	- A kubernetes_version variable that specifies which Kubernetes version the cluster will use.
	- A service_principal_client_id variable that provides the Client ID for the service principal associated with the cluster.
	- A service_principal_secret variable that supplies the Client Secret for the service principal.
	- The resource_group_name variable.
	- The vnet_id variable.
	- The control_plane_subnet_id variable.
	- The worker_node_subnet_id variable.
- Double-checked all the work before moving on to Task 2.

#### Task 2
- Create main.tf in aks-cluster-module.
- Create resource block for defining the necessary Azure resources for provisioning an AKS cluster. This includes creating the AKS cluster, specifying the node pool and the service principal.
- Configured and customised the AKS cluster modules using the input variables from the previous task.
- Double-checked all the work before moving on to Task 3

#### Task 3
- Created outputs.tf in aks-cluster-module
- Create the following output variables:
	- A aks_cluster_name variable that will store the name of the provisioned cluster.
	- A aks_cluster_id variable that will store the ID of the cluster.
	- A aks_kubeconfig variable that will capture the Kubernetes configuration file of the cluster. This file is essential for interacting with and managing the AKS cluster using kubectl.
- Double-checked all the work before moving onto Task 4

#### Task 4
- Executed the terraform init command to initialize the aks-cluster-module, which installs all the relevant dependencies and state files.

#### Task 5
- Documented the progress, deliverables and updates in README.md

### Milestone 6

#### Task 1
- Create main.tf configuration file in aks-terraform directory.
- Define Azure provider block in main.tf for authentication.
- Create variables.tf file with input variables for client_id and client_secret.
- Set environment variables for storing client_id and client_secret securely.

#### Task 2
- Integrate the networking module into the main project's configuration file (main.tf) after provisioning the provider block.
- Ensure that the networking resources defined in the module are included and accessible in the main project.
- When calling the networking module, provide the following input variables:
	- Set resource_group_name to a descriptive name (e.g., "networking-resource-group").
	- Set location to an Azure region geographically close to you (e.g., "UK South") to improve latency.
	- Set vnet_address_space to ('10.0.0.0/16') for the virtual network address space.

#### Task 3
- Integrate the cluster module into the main project's configuration file (main.tf) for connecting AKS cluster specifications.
	- Provide the following input variables when calling the module:
	- Set cluster_name to "terraform-aks-cluster".
	- Set location to an Azure region geographically close to you (e.g., "UK South") to improve latency.
	- Set dns_prefix to "myaks-project".
	- Set kubernetes_version to a Kubernetes version supported by AKS, such as "1.26.6".
	- Set service_principal_client_id and service_principal_secret to your service principal credentials.
	- Utilize variables referencing the output variables from the networking module for other required input variables: 
		resource_group_name, vnet_id, control_plane_subnet_id, worker_node_subnet_id

#### Task 4
- Initialize the Terraform project in the main directory.
- Apply the Terraform configuration to create defined infrastructure, including networking resources and AKS cluster.
- Add the resultant state file to .gitignore to prevent exposing secrets.

#### Task 5
- Retrieve kubeconfig file after AKS cluster provisioning.
- Use the kubeconfig file to securely connect to the newly created cluster.
- Confirm successful provisioning and operational status by connecting to the cluster.

#### Task 6
- Updates README.md documentation

### Milestone 7

#### Task 1
- Create a Kubernetes manifest file named application-manifest.yaml.
- Define a Deployment resource within the manifest file to deploy the containerized web application on the Terraform-provisioned AKS cluster.
- Specify the Deployment name as flask-app-deployment to act as a central reference for managing the application.
- Set the number of replicas to 2 to enable concurrent running on two pods within the AKS cluster for scalability and high availability.
- In the selector field, use the matchLabels section to uniquely identify the application by specifying a label (e.g., app: flask-app).
- Configure the manifest to point to the Docker Hub container hosting the application to ensure the correct container image is used for deployment.
- Expose port 5000 for communication within the AKS cluster, serving as the gateway for accessing the application's user interface as defined in the application code.
- Implement the Rolling Updates deployment strategy for seamless application updates.
- Ensure that during updates, a maximum of one pod deploys while one pod becomes temporarily unavailable, maintaining application availability.

#### Task 2
- Within the existing application-manifest.yaml file, add a Kubernetes Service manifest for internal communication within the AKS cluster.
- Define a service named flask-app-service to serve as a reference for routing internal communication.
- Ensure that the selector in the service matches the labels (app: flask-app) of the pods defined in the Deployment manifest. 
- Configure the service to use the TCP protocol on port 80 for internal communication within the cluster.
- Set the targetPort to 5000, corresponding to the port exposed by the containerized application.
- Set the service type to ClusterIP, designating it as an internal service within the AKS cluster.
- You can include multiple manifests in the same .yaml file using the --- operator to separate distinct services configurations.

#### Task 3
- Confirm the correct context is set for the Terraform-provisioned AKS cluster.
- Deploy the Kubernetes manifests using the appropriate command-line interface (kubectl apply -f application-manifest.yaml).
- Monitor the command-line interface for feedback on the deployment process.
- After successful deployment, verify the status of pods and services using commands like kubectl get pods and kubectl get services.
- Ensure that pods are running as expected to confirm the reliability of the deployment.

#### Task 4
- Verify the status and details of pods and services within the AKS cluster to ensure proper running and exposure.
- After confirming pod and service health, initiated port forwarding.
- The port forwarding command establishes a secure channel, enabling local interaction with your application.
- Access web application locally at http://127.0.0.1:5000 with port forwarding in place.
- Thoroughly test the functionality of web application, especially order funcation

#### Task 5
- Updates README.md documentation

### Milesone 8

#### Task 1
- Refreshed my memory and understanding by going through the prerequisites
- Create an Azure DevOps project in the Azure DevOps account.

#### Task 2
- Select GitHub repository for source control.
- Create initial pipeline using Starter Pipeline template.
- Integrate chosen GitHub repository.
- Verify initial pipeline configuration.
- Push any configuration changes made during setup.
- Manually trigger pipeline to confirm execution.
- Check pipeline status in Azure DevOps.

#### Task 3
- Create a personal access token on Docker Hub.
- Configure an Azure DevOps service connection using the Docker Hub token.
- Verify the successful establishment of the connection.

#### Task 4
- Add Docker task with buildandPush command to the pipeline.
- Use the same Docker image name as used in the local development environment.
- Set up the pipeline to run automatically on each push to the main branch.
- Execute the CI/CD pipeline and test the newly created Docker image by pulling it from Docker Hub locally.
- Run the container and verify its functionality to ensure the application works as expected.

#### Task 5
- Create and configure AKS service connection in Azure DevOps.
- Establish a secure link between CI/CD pipeline and AKS cluster for seamless deployments and effective management.

#### Task 6
- Integrate Deploy to Kubernetes task with kubectl command into CI/CD pipeline configuration.
- Utilize the deployment manifest in the application repository.
- Leverage the previously established AKS connection for automatic deployment to the AKS cluster.

#### Task 7
- Test and validate the CI/CD pipeline functionality after configuration.
- Monitor pod status in the AKS cluster to confirm correct creation.
- Securely access the application on AKS by initiating port forwarding using kubectl.
- Use the locally exposed address from the cluster to test and ensure the application functions correctly.
- Validate the effectiveness of the CI/CD pipeline in deploying the application.

#### Task 8
- Updates README.md documentation

### Milestone 9

#### Task 1
- Enabled Container Insights for my AKS cluster.
- Ensured to follow the correct steps:
	- Enabled managed identity on the AKS cluster.
	- Set the necessary permissions for the Service Principal associated with the managed identity.
	- Enabled Container Insights on the AKS cluster only after completing the above steps.

#### Task 2
- Created, configured, and saved charts for the following in Metrics Explorer:
	- Average Node CPU Usage: Tracks CPU usage of AKS cluster's nodes for resource allocation and performance.
	- Average Pod Count: Displays average number of running pods for capacity and workload assessment.
	- Used Disk Percentage: Monitors disk usage to prevent storage-related issues.
	- Bytes Read and Written per Second: Tracks data I/O for identifying performance bottlenecks.

#### Task 3
Configured Log Analytics to execute and save logs:
	- Average Node CPU Usage Percentage per Minute
	- Average Node Memory Usage Percentage per Minute
	- Pods Counts with Phase
	- Find Warning Value in Container Logs
	- Monitoring Kubernetes Events

#### Task 4
- Set up an alert rule to check every 5 minutes and have a loopback period of 15 minutes that trigger an alarm when the used disk percentage in the AKS cluster exceeds 90%.

#### Task 5
- Adjusted the alert rules for CPU usage and memory working set percentage to trigger when they exceed 80%

#### Task 6 
- update the README.md documentation for Milestone 9

### TODO
- Documentation is too detailed, needs to be cut down in size.
- Follow prescribed and good software development practises.
- Add images to complement milestone completions. 

## License

This project is licensed under the MIT License. For more details, refer to the [LICENSE](LICENSE) file.

