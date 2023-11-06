# Ansible Playbooks
_Playbooks used with [jenkins-library](https://github.com/R-dVL/jenkins-library.git) to automate deploys, and some server functions._


## Table of Contents
1. [Project Structure](#Project%20Structure)
2. [Inventories](#Inventories)
3. [Playbooks](#Playbooks)
4. [Roles](#Roles)


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

## Inventories
### Hosts
Hosts used are defined in _hosts.yaml_ and accessed with ssh key pairs.
> [Configure SSH Host with Key pairs](https://gist.github.com/R-dVL/659e292d74e692f2fb15c9f4d41eae84)


## Playbooks
### Deploy
Deploys app in function of the parameters given by Jenkins


## Roles
### Common
_Common roles used in playbooks_

- **pre_install:** Stops the services, checks version to be installed (if installed, uninstalls it) and create folders for installation.

- **post_install:** Runs service, and check status.


### Projects
_Project specific roles._

- **[cat-watcher](https://github.com/R-dVL/cat-watcher.git):** Creates a Python virtual environment, activates it, and installs requirements.

- **[lima-backend](https://github.com/R-dVL/lima-backend.git):** Install Nodejs dependencies.

- **[lima-frontend](https://github.com/R-dVL/lima-frontend.git):** Install NodeJs dependencies.
> TODO: Change deploy logic to serve production webserver.
