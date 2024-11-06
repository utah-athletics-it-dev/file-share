## Instructions to enter into the Docker container to check endpoint examples ##

### Prerequisites ###

List Provider application docker must be running in the system.

### Accessing the Docker Container ###

* Open the terminal application on your Linux or macOS system.
* To access the Docker container, run the following command:

    ``` bash
    docker exec -it application_lp_1 /bin/bash
    ```

### Accessing the Examples ###

* Once inside the Docker container, navigate to the __list_provider__ directory using the cd command:

   ``` bash
    cd list_provider
    ```

* Navigate to the __examples__ directory using the cd command:

   ``` bash
    cd examples
    ```

* The __examples__ folder may contain files or scripts related to the endpoint you wish to use.

### Exiting the Docker Container ###

* To exit the Docker container and return to your host system's terminal, use the exit command:

   ``` bash
    exit
    ```
