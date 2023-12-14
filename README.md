# Deploy a Gogs server

## Gogs

[Gogs](https://www.gogs.io), also known as "Go Git Service," is a self-hosted, lightweight, and open-source Git service.
It's written in the Go programming language and provides a simple, efficient, and customizable way to manage Git repositories.

In this tutorial we will deploy our Gogs server using an Acorn image.

## What is Acorn?

Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization. A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability. Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account

Setup an acorn account at [acorn.io](https://acorn.io). This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise. You will need a Github account to signup as shown in the image below.

!!<signin_acorn>

Make sure you install the prerequisites first.

- Database (choose one of the following):
  MySQL: Version >= 5.7
  PostgreSQL
  TiDB (experimental, connect via the MySQL protocol)
  or NOTHING with SQLite3
- Git (bash):
  Version >= 1.8.3 for both server and client sides
  Best to use latest version for Windows
- A functioning SSH server:
  Ignore this if you’re only going to use HTTP/HTTPS
  For using builtin SSH server on Windows, make sure you added ssh-keygen to your %PATH% environment variable.
  For using standalone SSH server, recommend Cygwin OpenSSH or Copssh for Windows.
  For Windows servers, please make sure Bash is the default shell not PowerShell.

There are 6 ways to install Gogs:

- [Install from binary](https://gogs.io/docs/installation/install_from_binary.html)
- [Install from source](https://gogs.io/docs/installation/install_from_source.html)
- [Install from packages](https://gogs.io/docs/installation/install_from_packages.html)
- [Ship with Docker](https://github.com/gogs/gogs/tree/main/docker)
- [Try with Vagrant](https://github.com/geerlingguy/ansible-vagrant-examples/tree/master/gogs)

### Deploy to cloud

- [Cloudron](https://www.cloudron.io/store/io.gogs.cloudronapp.html)
- [Sandstorm](https://github.com/cem/gogs-sandstorm)
- [sloppy.io](https://github.com/sloppyio/quickstarters/tree/master/gogs)
- [YunoHost](https://github.com/YunoHost-Apps/gogs_ynh)
- [DPlatform](https://github.com/DFabric/DPlatform-Shell)
- [LunaNode](https://github.com/LunaNode/launchgogs)
- [alwaysdata](https://www.alwaysdata.com/en/marketplace/gogs/)