# UDF-in-a-box Docker container

This simple container lets you execute ubuntu-device-flash [1] to generate Ubuntu Core or Touch images inside a Docker container, so that you can get those images in any system that can run Docker.

The basic command is:

```
docker run \
  --privileged=true \
  -v $PWD:/tmp/udf
  -t fgimenez/udf-in-a-box
  ubuntu-device-flash core 15.04 -o /tmp/udf/file.img --channel stable
```

and you end with the generated ```file.img``` in the current directory. If you want to use ```--developer-mode``` you should mount the ssh directory too:

```
docker run \
  --privileged=true \
  -v ~/.ssh:/root/.ssh
  -v $PWD:/tmp/udf
  -t fgimenez/udf-in-a-box
  ubuntu-device-flash core rolling -o /tmp/udf/file.img --channel edge --developer-mode
```

[1] http://manpages.ubuntu.com/manpages/wily/man1/ubuntu-device-flash.1.html
