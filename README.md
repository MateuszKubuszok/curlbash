# curlbash

Revolutionary tool, that brings `curl | bash` of the future.

## Security issues

Have you even been bothered by security concerns like the one mentioned on [certain article](https://www.idontplaydarts.com/2016/04/detecting-curl-pipe-bash-server-side/)?

Have you addressed that by tiresome calculating SHA256 for each file manually, and then writing a lot of code to make sure that curled file is the same as the one you already reviewed?

Are you tired by lack of standard solution for that common problem? Do you screams in pain each time you have to install something when you build your docker image?

## curlbash to the rescue!

`curlbash` is an **amazing** way of solving all your issues. It's **beautiful** and **simple** and **mind-blowing** tool for secure installation with bash scripts downloaded from external server!

## Usage

It is **amazingly** simple:

```bash
curlsha [url]
```

This will download the script and display it to you with `less`. Once you end up investigating and close the file, it will return SHA256 hash of the script.

Then you and your fellow developers can run:

```bash
curlbash [url] [sha256]
```

and the tool will download and run script only if it matches the SHA256 hash. **Amazing!**

## Installation

`curlbash` depends on `bash`, `curl` and `sha256sum`. You can install it with

```bash
sudo make install
```

and remove with

```bash
sudo make remove
```

By default it will install to `/usr/bin`, but you can override it with `INSTALL_DIR` environment variable.

