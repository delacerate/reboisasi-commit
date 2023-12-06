# reboisasi-commit
🌿 Boosting your GitHub stats with the help of GitHub Actions, Go Green!
This repository is available in two ways to greenify your GitHub stats. The first one uses a shell script, and the second one utilizes GitHub Actions.
This project is inspired by work of [@mazipan] [auto-commit](https://github.com/mazipan/auto-commit).


## Running the script and setting it with Cronie
- Clone the repo:
```
git clone https://github.com/delacerate/reboisasi-commit.git
cd reboisasi-commit
```
- Make the script executable
``` bash
chmod +x update-data.sh
```
- Running the script
``` bash
./update-data.sh
```
## Setting up Cronie for scheduled execution
for ubuntu:
```bash
sudo apt update && sudo apt install cronie
```
for arch:
```bash
sudo pacman -S cronie
```
- edit the crontab
```
crontab -e
```
- add the cron job
```bash
0 9 * * * /path/to/your-script.sh #see this link for reference https://crontab.guru/#0_9_*_*_*
```
- save and exit
