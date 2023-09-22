# tf-wsl-docker-template

To run on Windows you will need:

- An Nvidia GPU with latest drivers installed
- Docker Desktop
- WSL2

Any files you put in the `src` folder will be available to the Docker container and the Jupyter server.

Add any pip packages you need to pip-packages.txt before building the container.

If you need to `apt-get` any apps, add them to the Dockerfile where indicated.

To build the image and create a container from it, execute `docker compose up`.

In the terminal output you will see the URL of the running Jupyter server which you can click to open the Jupyter Lab GUI in a browser.

Alternatively you can copy it and use as the kernel of a Polyglot Notebooks session directly from VSCode.