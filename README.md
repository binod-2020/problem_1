# Project Title

CI/CD Demo project with Jenkins

## Getting Started

Clone this repo 

### Prerequisites

Need to have docker and make installed on your system

### Installing

Use make to build deploy and clean jenkins master contaniner. 
Use make to deploy jenkins job

### Jenkins Mater Installation steps

```
make build
make deploy
```

Once Mater is deployed, access master http://localhost:8080. User name and password mentioned in the Password section
Login to Mater and click install necessary plugins and click save jenkins master url and click start using jenkins.

### Deploy Jenkins Job

```
make job
```

## Deployment

Login to Master with username and password Mentioned in the Password section and click build now in hello-world job

## User Name and Password for demo

```
User: demo
Pass: demo123
```

## Versioning

Demo Version 

## Authors

* **Binod Prasad**

## License

Please See the LICENSE
