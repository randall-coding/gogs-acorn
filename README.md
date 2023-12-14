# Deploy a Gogs server

## Gogs

[Gogs](https://www.gogs.io), also known as "Go Git Service," is a self-hosted, lightweight, and open-source Git service.
It's written in the Go programming language and provides a simple, efficient, and customizable way to manage Git repositories.

In this tutorial we will deploy our Gogs server using an Acorn image.

## What is Acorn? 

Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with cli
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Setting up deployment
The server has basic settings controlled by a secret object.
 * **password** - your database password

```
acorn secret create \
 --data password=<password> \
   gogs-database
```

## Deploying Acorn
Now that we have our secret file we can deploy our server from a pre-made image with just a click.

On the acorn.io dashboard, click "Deploy Acorn" and select "From Acorn Image".

![acorn_deploy_button](https://github.com/randall-coding/gogs-acorn/assets/39175191/c4b2d08b-8991-48d2-bde0-1b252f2f1a08)

Fill in the following fields:

- Name: `<any name you like>`
- Acorn Image: `ghcr.io/randall-coding/acorn/gogs`

![acorn_deploy_form](https://github.com/randall-coding/gogs-acorn/assets/39175191/14840bd2-ac35-486d-945f-6d66b9ad9691)


Visit the acorn dashboard and find your recent deployment.  Click on the name of your deployment and find the endpoint section in the right panel.  Click "copy" on the website endpoint and visit the link.

![gogs_endpoints](https://github.com/randall-coding/gogs-acorn/assets/39175191/fcb6fe37-1746-44c1-86b0-31ea6f2ab722)

Visiting the endpoint should show a screen like this:

![gogs_install1](https://github.com/randall-coding/gogs-acorn/assets/39175191/f06e00a3-894e-4598-9d97-b84dabc41966)

# Setting up Gogs
For the database section fill in the following and make sure that Postgres is selected

* **Host** - `postgres:5432`
* **Password** - `<database password set in the secret file>`

For the next section fill in the following fields
* **Domain** - `Copy gogs:22/tcp endpoint into input on install`
* **SSH Port** `Port taken from the gogs:22/tcp endpoint.  May be randomly generated`
* **HTTP Port** - `80`
* **Application URL** - `Copy gogs endpoint into input on install`

Optionally you can fill out the SMTP Settings and Admin account form.

After you are done with the form, click "Install Gogs".  If the process is successful you should be redirected to the dashboard shown below:

![gogs_dashboard](https://github.com/randall-coding/gogs-acorn/assets/39175191/e3c46020-4ca8-4c80-b559-5c797fdfad94)

To create your first repository click the "+" sign in the top right corner and fill in the form just like you would for Github.

![gogs_add_repository](https://github.com/randall-coding/gogs-acorn/assets/39175191/0205a686-ca10-4fac-a44a-992cde3ec7d6)

And that's all there is to it.  We now have our own version control server running Gogs.

## References
* [Gogs Documentation](https://gogs.io/docs/intro)
* [Gogs Docker Tutorial](https://blog.hypriot.com/post/run-your-own-github-like-service-with-docker/)
* [Acorn Documentation](docs.acorn.io/)
