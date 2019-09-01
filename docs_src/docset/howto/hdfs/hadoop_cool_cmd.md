HADOOP Archives
==============

Introduction
------------
Just some cool commands exemples...


## HADOOP getattr
````
hdfs dfs -getfattr -d /supermaket/gasStation/Location
````

## HADOOP setattr
````
hdfs dfs -setfattr -n user.latest /supermaket/gasStation/Location/yyyymmdd=20180907/creation=20180907024840
````

