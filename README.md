# FLDigi (and others) Builder
This is a dockerfile/image to build the fldigi, flmsg and flrig apps for Linux. Prebuilt at https://hub.docker.com/repository/docker/jacobcalvert/direwolf-build 

# Usage 
To use the image, pull and run it. Your current working directory will have three folders when the build is finished, and the respective binaries will be in their default locations down in the */src/ directores. 

## Note
You'll probably want to chown the resultant files since they will be owned by root. 

## Command
```
jacob@jacob-aspire:/tmp/fldigi$ docker run --rm -v $PWD:/opt/source fldigi-builder:latest 
Building fldigi-4.1.18
--2021-05-26 12:39:39--  http://www.w1hkj.com/files//fldigi/fldigi-4.1.18.tar.gz
Resolving www.w1hkj.com (www.w1hkj.com)... 143.95.246.118
Connecting to www.w1hkj.com (www.w1hkj.com)|143.95.246.118|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 4847091 (4.6M) [application/x-gzip]
Saving to: 'fldigi-4.1.18.tar.gz'

     0K .......... .......... .......... .......... ..........  1%  736K 6s
    50K .......... .......... .......... .......... ..........  2% 1.53M 5s
   100K .......... .......... .......... .......... ..........  3% 2.52M 4s
   150K .......... .......... .......... .......... ..........  4% 27.7M 3s
   200K .......... .......... .......... .......... ..........  5% 3.33M 2s
   250K .......... .......... .......... .......... ..........  6% 2.67M 2s
   300K .......... .......... .......... .......... ..........  7% 28.3M 2s
   350K .......... .......... .......... .......... ..........  8% 8.94M 2s
   400K .......... .......... .......... .......... ..........  9% 9.29M 2s
   450K .......... .......... .......... .......... .......... 10% 7.04M 1s
   500K .......... .......... .......... .......... .......... 11% 4.42M 1s
   550K .......... .......... .......... .......... .......... 12% 8.31M 1s

  <<<<<<<<<<<<<<<<<<<<<<<< snipped for brevity >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

make[1]: Nothing to be done for 'all-am'.
make[1]: Leaving directory '/opt/source/flrig-1.3.54'
Done!!
jacob@jacob-aspire:/tmp/fldigi$ ll
total 11224
drwxrwxr-x  5 jacob jacob    4096 May 26 13:05 ./
drwxrwxrwt 18 root  root     4096 May 26 13:05 ../
drwxr-xr-x  9 jacob jacob    4096 May 26 13:05 fldigi-4.1.18/
-rw-r--r--  1 root  root  4847091 Jan 29 06:50 fldigi-4.1.18.tar.gz
-rw-r--r--  1 root  root  4847091 Jan 29 06:50 fldigi-4.1.18.tar.gz.1
drwxrwxr-x  7 jacob jacob    4096 May 26 12:45 flmsg-4.0.17/
-rw-r--r--  1 root  root   876560 Sep  8  2020 flmsg-4.0.17.tar.gz
drwxr-xr-x  7 jacob jacob    4096 May 26 12:46 flrig-1.3.54/
-rw-r--r--  1 root  root   891644 Feb  3 08:35 flrig-1.3.54.tar.gz

```

