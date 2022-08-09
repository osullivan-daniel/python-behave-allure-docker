## Docker Image
ulpba: ubuntu, linuxbrew, python, behave, allure

### Prerequisites
Install docker
depending on your installation you may need admin permissions for the following

### Note
Unfortunitly duie to some very starnge issue - brew refusing to install the latest verson of python, and allure not working ive taken an existing container designed for a seperate playwright project and updated/added to it so the container is a little bigger than needed and also contains some additonal uneeded repos. I'll dig in to the issues at a future point.

### tfl app_key
Acording to the tfl webaite you will need to register with tfl and generate a key - https://api.tfl.gov.uk/ however i have seen it work without a key.... 
(I've told them so they will probably fix it at some point)  
That said the code is setup to require one so pleasse follow the instructons below to set one up for yourself

Once registered:  
    - Go to 'Products' along the top main bar  
    - Select '500 Requests per min'  
    - Then type a name into the box just under 'Your subscriptions'  
    - and press the 'Subscribe' button  
    - Then go to 'Profile' along the top main bar  
    - Copy your 'Primary key' and replace the string 'PUT_YOUR_APP_KEY_HERE' in your 'tfl.json' 
    - This will be coppied over to the container for you 

### mediawiki
Mediawiki tests are designed to run against a local containerised verson instructons here:
https://www.mediawiki.org/wiki/MediaWiki-Docker


### Build a running the docker container
from the docker directory run (--no-cache as when we rebuild it we want it to pull a fresh copy of the test repo):
```bash
docker build . -t ulpba --no-cache
````

Start the container (Dont forget this of course doesnt persist anything!)
```bash
docker run -it --network=host ulpba
````

Run the following commands so we can use everything installed by linuxbrew and add to our path 
```bash 
source ~/.profile
```
