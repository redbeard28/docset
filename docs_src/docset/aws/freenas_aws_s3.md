FREENAS backup sync s3cmd AWS S3 Bucket
====

The process below shows how you can setup a regular sync to Amazon S3 and was tested on FreeNAS-9.9-STABLE.
Setup the S3 Folders and Upload User

# Log on to the AWS interface

Select Services -> S3

    create a bucket
    configure the logs as requested

Select Services -> Security and Identity -> IAM

    On the left either click “Users” or click “Create individual IAM users” in the main interface
    Create a new user and note the AWS Access Key and AWS Secret Key
    Select the user and give is the permission “AmazonS3FullAccess”

# Add Jail for s3cmd

On FreeNAS: Click Jails -> Add Jail and give it a name s3cmd.

So attached to the jail and install s3cmd.
    ssh root@freenas.local
    mkdir /mnt/backup
    jls
    jexec <1> /bin/tcsh (where 1 is the jail ID from the previous command)
    pkg install py27-dateutil-2.4.2
    pkg install py27-magic-5.25
    pkg install gnupg
    pkg install py27-s3cmd-1.6.0
    rehash

Click Jails -> s3cmd -> Storage -> Add storage

Then configure the following

    Source is the folder in the zfspool you want to backup
    Destination is /mnt/backup/new_folder
    Ensure its set as Read Only
    Select Create Directory

## Configure s3cmd
    root@s3cmd:~ # s3cmd --configure
    Then configure the following:
    AWS Access Key
    AWS Secret Key
    Default Region: US
    Encryption password: password safe
    Path to gpg: /usr/local/bin/gpg
    Use HTTPS: No

## List buckets
    root@s3cmd:~ # s3cmd ls
    2016-02-29 05:09  s3://Bucket1
    2015-03-12 04:36  s3://Bucket2
    2015-12-07 05:43  s3://Bucket3

## Start your first sync
    root@s3cmd:~ # s3cmd -v sync /mnt/ s3://Bucket1
    INFO: Compiling list of local files...
    INFO: Running stat() and reading/calculating MD5 values on 96943 files, this may take some time...

## List files in bucket
     root@s3cmd:~ # s3cmd ls s3://Bucket1/backup

## Delete files or folders
    root@s3cmd:~ # s3cmd rm -rf s3://Bucket1/backup/*
