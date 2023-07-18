# XmediaCenter 2

Yet another cloud drive project with media entertainment feature.

## License

This project and all affiliated repositories of the project are under **MIT License**.

## Main features

**Implemented:**
- File managing
- Multi-user support
- Music entertainment feature
- File sharing

**Unimplemented:**
- Integrate music downloader into file manager by using `spotdl`
- Integrate video downloader into file manager by using `you-get`
- Video player with danmaku and subtitle support
- Playlist sharing

## Deploy

The backend doesn't support Windows platform currently. In this case, we use `ubuntu-20.04` for example.

You need to install Python 3 and Nginx through the following command line

```sh
sudo apt install python3 python3-pip build-essential make wget nginx -y
```

Then install `nvm` which is a tool to switch nodejs version

```sh
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
```

And add the following line to your shell profile

```sh
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
```

Install the latest Node.js 

```sh
nvm install node
```

Now you can simply use `make` command to deploy XmediaCenter 2

```sh
sudo chmod -R 777 /var/www/html
sudo chmod -R 777 /etc/nginx/sites-enabled
make deploy
sudo service nginx restart
```

After that, you can use `make runBackend` to start a XmediaCenter 2 backend instance. Then, you can access `http://[ip to your instance]:11452/` through the browser or use `XmediaCenter 2 Desktop` to access your XmediaCenter 2 instance.

## Third-party open sources softwares

**Frontend:**
- [React](https://github.com/facebook/react) by [Meta](https://github.com/facebook)
- [MUI](https://github.com/mui/material-ui)
- [react-mui-fileuploader](https://github.com/rouftom/react-mui-fileuploader) by [rouftom](https://github.com/rouftom)

**Backend:**
- [Flask](https://github.com/pallets/flask) by [Pallets](https://github.com/pallets)
- [Flask-CORS](https://github.com/CoryDolphin/flask-cors) by [CoryDolphin](https://github.com/CoryDolphin)
- [music-tag](https://pypi.org/project/music-tag/) by [Kristofor Maynard](mailto:kristofor.maynard@gmail.com)

## Acknowledgement

- Thanks for Yoimiya who encouraged me a lot when I'm developing this project.