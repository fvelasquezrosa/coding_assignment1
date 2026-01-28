# Docker Dev Environment - coding_assignment1 (Create React App)

This project runs a Create React App development environment in Docker and serves on:

http://127.0.0.1:7775

## Prerequisites
- Docker Desktop installed and running

## Build the image
From the project root:

```bash
docker build -t coding-assignment1 .
docker run --name Velasquez_Fabian_coding_assignment1 -p 7775:7775 coding-assignment1


---

#) If you hit the “name already in use” error
Run:

```bash
docker stop Velasquez_Fabian_coding_assignment1
docker rm Velasquez_Fabian_coding_assignment1
