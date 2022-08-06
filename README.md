## Docker Image
ulpba: ubuntu, linuxbrew, python, behave, allure

### Prerequisites
Install docker
depending on your installation you may need admin permissions for the following

### Build a running the docker container
from the docker directory run (--no-cache as when we rebuild it we want it to pull a fresh copy of the test repo):
```bash
docker build . -t ulpba --no-cache
````

Start the container (Dont forget this of course doesnt persist anything!)
```bash
docker run -it ulpba
````

Run the following commands so we can use everything installed by linuxbrew and add to our path 
```bash 
source .profile
```

cd into the test dir
```bash
cd src/python-behave-allure
````
