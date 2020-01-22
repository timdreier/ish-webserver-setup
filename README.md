# Webserver with PHP for iSH
Apache2 webserver with PHP support for iOS devices.

## Install iSH
Detailed instructions can be found [here](https://ish.app/).

## Install git
At first you'll need git to clone this repository. Start iSH and run
`apk update`
and
`apk add openssh git`.

After that clone this repository with
`git clone <repository url>`.

Now switch to the created folder and run the setup script with
`sh ./setup.sh`.

During the script you will be asked for location access. This is needed to keep the iSH running when it is in background.
You should now be able to access your webserver on "http://127.0.0.1:8000" on your iOS Device.

From now just run `sh start.sh` from the folder to start apache2!