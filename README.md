rsstail
=======
rsstail is tail for RSS feeds


## Usage

Basic usage:

```
rsstail -u URL -i CHECK_INTERVAL
```

For example a command below will check every 5 minutes if anything new was published:

```
$ rsstail -u http://www.filmhuisgouda.nl/rss/rss.php -i 300
Title: Que horas ela volta?
Title: 45 years
Title: Madame Bovary
...
```

`rsstail -h` will show a list of what rsstail can do for you.

## Installation

On Debian/Ubuntu:

```
sudo apt-get install rsstail
```

## Building

### Dependencies

rsstail depends on [`libmrss`](http://www.autistici.org/bakunin/codes.php#libmrss) (version >= 0.7).
On Debian/Ubuntu you can install libmrss by running

```
sudo apt-get install libmrss0
```

To compile source code you may need to run

```
sudo apt-get install libmrss0-dev
```

### Compile source code

```
$ git clone https://github.com/flok99/rsstail.git
$ cd rsstail
$ sudo make install
```

## Contact

For everything more or less related to rsstail, please feel free to contact me on mail@vanheusden.com.

Consider using PGP. My PGP key-id is: 0x1f28d8ae


## Donations

[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=flok&url=https://github.com/flok99/rsstail&title=rsstail&language=&tags=github&category=software)

[![Support the development of this project](https://pledgie.com/campaigns/28612.png?skin_name=chrome)](https://pledgie.com/campaigns/28612)
