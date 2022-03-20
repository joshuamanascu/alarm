# alarm

A simple shell script for a command line alarm.

## Prerequisites
Requires [mpg123](https://mpg123.de/) to play the alarm sound.

## Install
```
git clone https://github.com/joshuamanascu/alarm.git
cd alarm
chmod+x alarm.sh
```

## Usage
The script requires an mp3 for the alarm sound, and assumes this is located at $HOME/alarm.mp3

```
./alarm.sh -h
FORMAT: alarm [minutes] 
FORMAT: alarm -t HH MM
```
