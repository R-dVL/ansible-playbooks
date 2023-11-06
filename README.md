# Ansible Playbooks
_Playbooks used with [jenkins-library](https://github.com/R-dVL/jenkins-library.git) to automate deploys, and some server functions._


## Table of Contents
1. [Project Structure](#Project%20Structure)
2. [Playbooks](#Playbooks)
3. [Roles](#Roles)


## Project Structure
~~~text
(root)
+- inventories                                # Hosts inventory
|   +- hosts.yaml
+- playbooks                                  # Playbooks
|   +- roles                                  # roles
|       +- common                             # common roles
|           +- pre_install
|           +- post_install
|       +- cat-watcher                        # Specific project roles
|       +- lima-backend
|       +- lima-frontend
|   +- deploy.yaml
~~~

## Playbooks
### Deploy
Deploys app in function of the parameters given by Jenkins


## Roles
### Common
Common roles used in playbooks


#### Pre install
Stops the services, checks version to be installed (if installed, uninstalls it) and create folders for installation.


#### Post install
Runs service, and check status.


### Projects
Project specific roles.


#### Cat Watcher
Creates a Python virtual environment, activates it, and installs requirements.
> [cat-watcher](https://github.com/R-dVL/cat-watcher.git)


#### Lima Backend
Install Nodejs dependencies.
> [lima-backend](https://github.com/R-dVL/lima-backend.git)

#### Lima Frontend
Install NodeJs dependencies.
> [lima-frontend](https://github.com/R-dVL/lima-frontend.git)
> (TODO: Change deploy logic to serve production webserver.)
