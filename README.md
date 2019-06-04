# dockeratlantis
### Ancilliary files to prepare VMs to run atlantisdockerfile

#### Copy docker.sh into VM using 

    sudo nano docker.sh

    sudo chmod +x docker.sh
    sudo ./docker.sh
    
#### After the script completes run this command then close SSH session and reconnect
    
    sudo usermod -a -G docker $USER

#### Login into DockerHub https://hub.docker.com

    docker login --username=<username>

#### Pull image from DockerHub

    docker pull hmorzaria/atlantisdockerfile:latest

#### List images
    docker images

#### Replace <username> and <password>, use all small caps
  
    sudo docker run -d --name atlantisstudio -v $HOME:/home/atlantis -e USER=<username> -e PASSWORD=<password> -p 8787:8787 hmorzaria/atlantisdockerfile:latest

#### List containers

    docker ps
    
#### Install Atlantis
    sudo chmod +x installatlantis.sh
    sudo ./installatlantis.sh

#### Run container at bash. Replace <containerID> from docker ps command

    docker exec -it <containerID> bash 
    


