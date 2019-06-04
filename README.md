# dockeratlantis
### Ancilliary files to prepare VMs to run atlantisdockerfile

# Copy docker.sh into VM using 

    sudo nano docker.sh

    sudo chmod +x docker.sh
    sudo ./docker.sh

    docker pull hmorzaria/atlantisdockerfile:latest

# List images
    docker images

# Replace <username> and <password>, use all small caps
  
    sudo docker run -d --name atlantisstudio -v $HOME:/home/atlantis -e USER=<username> -e PASSWORD=<password> -p 8787:8787 hmorzaria/atlantisdockerfile:latest

# List containers

    docker ps

# Run container at bash. Replace <containerID> from docker ps command

    docker exec -it <containerID> bash 

