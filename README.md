# What is it?
This is a playground for Spindox Ansible course
# How to Run it?

This playground uses docker-compose to run, to use it first you need to install docker and docker-compose.
## Installing Docker and Docker Compose

I suggest using Docker Desktop distribution, you can find the guides on the following links. This includes also Docker Compose.

* [For Windows](https://docs.docker.com/desktop/windows/install/)
* [For MacOS](https://docs.docker.com/desktop/mac/install/)

For Linux systems, you can follow the guide linked [here](https://docs.docker.com/engine/install/#server) to install Docker, and then install Docker Compose using [this](https://docs.docker.com/compose/install/#install-compose-on-linux-systems) guide.

## Checking installation

Once you've installed and run Docker you can verify the installed versions running:

```bash
docker --version
```

and 

```bash
docker-compose --version
```

If the commands both answer with the version number you're all set up!

## Running it

Running this playground is a piece of cake, all you have to do is download the [docker-compose.yaml](https://github.com/Spindox/ansible-playground/releases/download/v1.0/docker-compose.yml) file to a folder and then navigate to the folder and run

```bash
docker-compose up
```

Then you can launch your browser on http://localhost:8080 and use it!