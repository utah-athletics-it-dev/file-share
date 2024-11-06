# README

This README provides instructions on how to install and run the List Provider application.

## Quick Installation

### Prerequisites

1. Ubuntu OS: Ubuntu Server 22.04 LTS
2. Root access: The user needs to be able to run commands with root privileges, either by logging in as the root user directly or using sudo.
3. You have provided your subnet to the **ProhiBet team** for IP whitelisting.

### Steps

1. Copy the installation zip file provided by the **ProhiBet team** to your Ubuntu machine.

2. Unzip the file in the root directory. This will create a folder named `List_Provider` with all the necessary files.

3. Open a terminal and cd into the `List_Provider` directory.

4. Run the first part of the installation script:

   ```bash
   sudo ./lcinstall_a.sh
   ```

5. When lcinstall_a is complete it will instruct you to log out of the terminal and then back in. Once logged back in continue with part b:

   ```bash
   sudo ./lcinstall_b.sh
   ```

6. The script will handle all prerequisites, configuration, and launching the Docker containers.

7. At the end, the script will print the URL to access the List Provider application.

8. Open the URL in a web browser to access the application.

9. Follow the on-screen instructions to enter the license key provided by the **ProhiBet team**.

That's it! The application should now be installed and ready to use.

### You can stop here - no need to continue to the detailed instructions below unless

1. The quick installation failed or errored out
2. You wish to manually install each component instead of using the automated script
3. You want to understand what the installation script is doing behind the scenes

If the quick install worked, you do not need to complete the manual installation steps.

## Detailed Installation

### Prerequisites

1. Ubuntu OS: Ubuntu Server 22.04 LTS
2. Root access: The user needs to be able to run commands with root privileges, either by logging in as the root user directly or using sudo.
3. You have provided your subnet to the **ProhiBet team** for IP whitelisting.
4. Docker: The Docker engine must be installed on your system. You can download and install Docker from the official website: [Docker](https://www.docker.com)
5. Docker Compose: Docker Compose is a tool for defining and running multi-container Docker applications. Make sure you have Docker Compose installed on your system. You can refer to the Docker Compose documentation for installation instructions: [Docker Compose](https://docs.docker.com/compose/)

### Steps

1. First make sure current user is added to the docker group

   ```
   sudo usermod -aG docker ${USER}
   ```

   Log out and log back in so that your group membership is re-evaluated. If you’re running Linux in a virtual machine, it may be necessary to restart the virtual machine for changes to take effect.

2. Next you need to login in to Docker:

   ```
   docker login https://docker.prohibet.com
   ```

   Use the username and password provided by the ProhiBet team.

3. If the provided credentials are correct, you will see a "Login Succeeded" message in the terminal, indicating that you have successfully logged in to Docker.

4. Set the SSS_ENV_VAR environment variable:

   ```bash
   export SSS_ENV_VAR=/path/to/creds/folder/
   source ~/.bashrc
   ```

5. Once set, the application will automatically detect the credentials from the specified folder.

6. Open a terminal and navigate to the application folder provided by ProhiBet Team.

7. Ensure you have the `docker-compose.yml` file.

8. Run:

   ```
   docker-compose up -d
   ```

9. Wait for containers to start and initialize.

10. Access services via configured ports.
