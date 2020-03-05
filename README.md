# kill-chrometabs-osx
Kills the Chrome Tabs which are hogging memory in OSX

---

## Installation and Testing

Open a terminal window and execute this command as root. 

```bash
sudo sh job.sh
```
Chrome tabs using memory greater than 2% of total will be killed. 

## Usage

You can set up a cron to run this command every 10 minutes, to clean the chrome tabs hogging memory. 

```bash
sudo crontab -e
10 * * * * [path]/job.sh >/tmp/stdout.log 2>>/tmp/stderr.log
```

You can tweak the memory threshold  by changing MT.

```bash
sudo crontab -e
10 * * * * [path]/job.sh >/tmp/stdout.log 2>>/tmp/stderr.log
```
