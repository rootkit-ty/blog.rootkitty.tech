# About
This git repo is the home of [Rootkitty's Blog](https://rootkitty.tech). It is the [Hugo](https://gohugo.io) website files, drafts, and everything that the blog encompasses.

This repo is used to store the files where it will be pulled, generated and displayed on my server by a service account.

This way, this repo provides backup services, and an look into the blogs creative process.

# Setup
Setting this up requires a service account with this repo as it's home directory, [Hugo](https://gohugo.io) installed, a cron job, and some web server with permission to read the `public/` directory.

Simply have a cron that runs `cron.sh` at any interval you wish. The contents will be pulled into the current directory and built using [Hugo](https://gohugo.io).

# Licence
TODO Licence (Probably DWTFYW)
