# umbrel-RTL-88x2bu
88x2bu Network Drive for Umbrel
```
curl -o install.sh https://raw.githubusercontent.com/hhddhdi/umbrel-RTL-88x2bu/refs/heads/main/install.sh
```

Umbrel itself is not compatible because of its kernel 6.1.0.31, but you will need to re-compile it, I couldn't use the kernel 6.1.0.31 headers or a newer version by downloading it via apt, so I did this, the codes in sh are to clone the kernel directly from the Debian website, and use it, without the errors of not having located /lib/modules/6.1.0-31-amd64/build, this code that I made worked after a long time trying to download it, so try using it, if it doesn't work it's probably because I forgot some dependency, thanks for testing, I hope I helped you and any error just send a question.
