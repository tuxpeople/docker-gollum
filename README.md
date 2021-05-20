# gollum-small
![Github Workflow Badge](https://github.com/tuxpeople/docker-gollum-small/actions/workflows/release.yml/badge.svg)
![Github Last Commit Badge](https://img.shields.io/github/last-commit/tuxpeople/docker-gollum-small)
![Docker Pull Badge](https://img.shields.io/docker/pulls/tdeutsch/gollum-small)
![Docker Stars Badge](https://img.shields.io/docker/stars/tdeutsch/gollum-small)
![Docker Size Badge](https://img.shields.io/docker/image-size/tdeutsch/gollum-small)

## Quick reference

This is yet another Docker image for [gollum](https://github.com/gollum/gollum), a simple wiki that stores documents in a git repository.

[Other images exist](https://github.com/gollum/gollum/wiki/Gollum-via-Docker#3rd-party-docker-images-at-docker-hub), but they are all quite huge (for example, `suttang/gollum`, an Ubuntu 14.04 based image, is 600+ MB).

* **Code repository:**
  https://github.com/tuxpeople/docker-gollum
* **Where to file issues:**
  https://github.com/tuxpeople/docker-gollum/issues
* **Supported architectures:**
  ```amd64```, ```armv7```, ```armv6``` and ```arm64```

## Image tags
- ```latest``` always refers to the latest tagged release
- There are tags for major, minor and dotreleases (eg. ```1.0.0```, ```1.0```, ```1``` )
- ```edge``` gets automatically built on every push to master and also via a weekly cron job

## Usage

```sh
docker run -i -t -p 8080:8080 -v wiki:/wiki tdeutsch/gollum-small:<tag>
```

or

```sh
docker run -i -t -p 8080:8080 -v wiki:/wiki quay.io/tdeutsch/gollum-small:<tag>
```

This will pull and run the `tdeutsch/gollum-small` image, exposing the website on port 8080, with persistent storage on a docker volume called `wiki`.

Manual flags can be passed to the gollum binary using the environment variable `GOLLUMARGS=`

```sh
docker run -i -t -p 8080:8080 -v wiki:/wiki -e GOLLUMARGS="--no-edit" tdeutsch/gollum-small
```

Which will run gollum in "read only" mode and not allowing editing of pages via the ui. handy if this is being deployed remotely

#### License

```
Copyright 2018 Adhityaa Chandrasekar

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```