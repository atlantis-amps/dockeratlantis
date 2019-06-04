# dockeratlantis
### Ancilliary files to prepare VMs to run atlantisdockerfile

### Copy docker.sh into VM using 

    sudo nano docker.sh

    sudo chmod +x docker.sh
    sudo ./docker.sh

    docker pull hmorzaria/atlantisdockerfile:latest

### list images
    docker images

### replace <username> and <password>, use all small caps
  
    sudo docker run -d --name atlantisstudio -v $HOME:/home/atlantis -e USER=<username> -e PASSWORD=<password> -p 8787:8787 hmorzaria/atlantisdockerfile:latest

### see containers

    docker ps

### to go into the container at bash replace container id from docker ps command

    docker exec -it <containerID> bash 

