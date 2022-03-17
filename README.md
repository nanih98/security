# Path hijacking inside a container

This is a small lab to practice path hijacking inside a linux!

# Propose

**Capture the flag inside /root/flag.txt**

You will run the container and the user will be asterix (non-root), so you need to be root to see /root/flag.txt :)

# Steps

```bash
docker run -itd --name hack nanih98/sec:path-hijacking
# You will be the user asterix
docker exec -it hack bash 
```

**NOTE:** docker exec -u root is not valid :)

```bash
docker exec -it -u root hack bash
```

--> Password for asterix: linux
