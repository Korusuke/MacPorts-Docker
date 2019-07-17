# MacPorts-Docker
Dockerfile for building MacPorts base

# Getting Started

## Option 1
  Step 1. [Install Docker](https://docs.docker.com/install/)

  Step 2. Build dockerfile

  `$ docker build https://github.com/Korusuke/MacPorts-Docker.git`

## Option 2
  Step 1. [Install Docker](https://docs.docker.com/install/)

  Step 2. Clone this repo

  `$ git clone https://github.com/Korusuke/MacPorts-Docker.git`

  Step 3. Navigate to the folder

  `$ cd Macports-Docker`

  Step 4. Build dockerfile

  `$ docker build -f "MacPorts-Docker/Dockerfile" -t macports-docker:latest MacPorts-Docker`
