# nroot 
A set of scripts for building a minimal bootable linux 

## Docker Commands

### Build docker Image
```bash
sudo docker build -t nroot .
```

### Clear all docker images
```bash
sudo docker rmi -f $(sudo docker images -a -q)
```

### Run docker container
```bash
sudo docker run -it nroot
```
