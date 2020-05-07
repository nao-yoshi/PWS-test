# Test/Demo environment for Pivotal Web Service
This repo is for preparing a test or demo environment of [Pivotal Web Service](https://run.pivotal.io/) (PWS) on your PC.


## Description
This is the easiest way to test or demo for PWS from your PC using [CloudFoundry CLI](https://github.com/cloudfoundry/cli). To prepare the test or demo environment, you can create a VM(CentOS) on VirtualBox with somple commands. Tools and sample codes listed below will be installed on the VM.
- [CloudFoundry CLI](https://github.com/cloudfoundry/cli)
- git
- sample codes for PWS


## Requirement
1. Before you try it, you need an account on PWS. You can create an account from [here](https://run.pivotal.io/). Also you should create your "org" and "space" on PWS.
2. You need to install some softwares listed below on your PC (MAC OS or Windows OS).
   - [Git](https://git-scm.com/)
   - [VirtualBox](https://www.virtualbox.org/)
   - [Vagrant](https://www.vagrantup.com/)


## Usage
To deploy the test/demo environment on your PC, follow the procedure below.

1. Open terminal.
2. Clone this repo into your PC.
   ```
   $ git clone https://github.com/nao-yoshi/PWS-test.git
   ```
3. Move to the directory of this repo **"/PWS-test"**.
4. Execute a command below to build the test environment.
   ```
   $ cd PWS-test
   $ vagrant up
   ```
5. About 5 minutes later, a VM (CentOS) will be deployed on VirtualBox. 
6. Execute a command below to login to the CentOS from a terminal on your PC. At this moment, your prompt should be **"/PWS-test"** directory.
   ```
   $ vagrant ssh
   ```

## Clean up
You can remove all of the test environment from your PC.

1. Log off from CentOS.
2. Execute a command below at the directory of **"PWS-test"** on your PC.
   ```
   $ vagrant destroy
   ```
3. All of the VMs running on VirualBox will be removed.


## Author
nao-yoshi
