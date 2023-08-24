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
On Debian/Ubuntu libmrss will be installed automatically if you install rsstail or libmrss0-dev (as shown below) as package.

To compile source code you may need to run

```
sudo apt-get install libmrss0-dev libiconv-hook-dev
```

### Compile source code

```
$ git clone https://github.com/flok99/rsstail.git
$ cd rsstail
$ sudo make install
```

## Contact

For everything more or less related to rsstail, please feel free to contact me on mail@vanheusden.com.
