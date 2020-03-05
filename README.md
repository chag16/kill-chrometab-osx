# kill-chrometab-osx
Kills the Chrome Tabs which are hogging memory in OSX

---

## Installation

Open a terminal window and execute this command.

```bash
sudo sh job.sh
```

## Usage

You can set up a cron to run this command every 10 minutes, to clean the tabs hogging memory. 

```bash
sudo crontab -e
10 0 * * * [path]/job.sh >/tmp/stdout.log 2>>/tmp/stderr.log
```

