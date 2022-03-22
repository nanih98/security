<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Path hijacking inside a container](#path-hijacking-inside-a-container)
- [Propose](#propose)
- [Steps](#steps)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Path hijacking inside a container

This is a small lab to practice path hijacking inside a linux container!

# Propose

**Capture the flag inside /root/flag.txt**

You will run the container and the user will be asterix (non-root), so you need to be root to see **/root/flag.txt** :)

# Steps

```bash
docker run -itd --name hack docker.io/nanih98/sec:path-hijacking
# You will be the user asterix
docker exec -it hack bash # sudo -l ? password for asterix is linux 
```

**NOTE:** docker exec -u root is not valid :)

```bash
docker exec -it -u root hack bash
```
