# http-state-watchdog
Shell (linux) script that spiders an entire web site and return the http code and message for every link found

##Instalation
In order to use this script all you have to do is clone into your machine:

git clone https://github.com/divisiondeariza/http-state-watchdog.git

```bash
$ cd path/to/destination/folder
$ git clone https://github.com/divisiondeariza/http-state-watchdog.git
```

##How to use

The simplest way for use it is running the batch script passing the only url for the site intended for analysis as parameter. 

```shell
$ cd http-state-watchdog
$ bash http-state-watchdog.sh www.example.com

>>> 'URL','CODE','STATUS'
>>> http://www.example.com/,200,OK
>>> http://www.example.com/,200,OK
```

As you may notice the output has a csv format, so if you prefer you can save the output in a csv file:

```bash
$ cd http-state-watchdog
$ bash http-state-watchdog.sh -o log.csv www.example.com 
```


