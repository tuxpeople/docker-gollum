### gollum-alpine

This is yet another Docker image for [gollum](https://github.com/gollum/gollum), a simple wiki that stores documents in a git repository.

[Other images exist](https://github.com/gollum/gollum/wiki/Gollum-via-Docker#3rd-party-docker-images-at-docker-hub), but they are all quite huge (for example, `suttang/gollum`, an Ubuntu 14.04 based image, is 600+ MB). Like all things Alpine, `adtac/gollum-alpine` is tiny at under 200 MB. Enjoy your extra storage!

#### Usage

Docker is pretty simple.

```bash
$ docker run -i -t -p 8080:8080 -v wiki:/wiki adtac/gollum-alpine
```

This will pull and run the `gollum-alpine` image, exposing the website on port 8080, with persistent storage on a docker volume called `wiki`.

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
