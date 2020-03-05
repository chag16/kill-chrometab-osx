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

You can tweak the memory threshold above which to kill tabs by changing MT.

```bash
# Memory Threshold (% of Memory). Allows to tweak the threshold above which chrome tabs will be killed
MT=2
```

You can enable the script to work on only battery mode by using Method 2 and commenting Method 1
```bash
#Method 2: Works only when not on AC power
#if ! pmset -g batt | grep 'AC Power'MT=2
.
.
```

## Reporting bugs
Please use the GitHub issue tracker for any bugs or feature suggestions:

https://github.com/chag16/kill-chrometabs-osx/issues

## Contributing
Please submit patches to code or documentation as GitHub pull requests! 

Contributions must be licensed under the GNU GPLv3. The contributor retains the copyright
