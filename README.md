[![](https://badge.imagelayers.io/trotro/todoist-habitica:latest.svg)](https://imagelayers.io/?images=trotro/todoist-habitica:latest 'Get your own badge on imagelayers.io')

Dockerfile and scripts to run [todoist-habitrpg nodeJS script](https://github.com/kusold/todoist-habitrpg) inside a docker container.

# RUN
```shell
docker run --rm -it -v /path/to/task_history/folder:/app/data --env-file user.env trotro/todoist-habitica
```

# Mounted volume
The nodeJS script generate a json file which contain the history of your tasks. To avoid duplicate content, it is recommended to always use the same file.
The volume mount the folder where your .todoist-habitrpg.json is stored.
The file is created on the first run.

*NB:*
> If you are using Docker Machine on Mac or Windows, your Docker daemon has only limited access to your OS X or Windows filesystem. Docker Machine tries to auto-share your /Users (OS X) or C:\Users (Windows) directory.

from https://docs.docker.com/engine/userguide/dockervolumes/

# env.user
This file contains the tokens needed to connect to todoist and habitica

# sync-habit.bat
A script to run the container on Windows where the task history is located in your ```OneDrive/Documents/task_history/``` folder.
The path to the OneDrive is the default one.
