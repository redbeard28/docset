#!/bin/bash
job_name=`basename $0`


# Fonction d aide
usage() {
clear
echo "
########################################
#
#   $(pwd)/$job_name -d /tmp/mydocs -i redbeard28/docset:1.0 -m html -V 0.0.3
#
#########################################
option -d =>    /tmp/docs                                                   =>  path of your markdown
option -i =>    redbeard28/docset:1.0                                       => Image Name
option -m =>    html or serve                                               => Generate html files or make server
option -V =>    insert version number in the redbeard28.xml file
"
}

#################################
### Recuperation des entrees
while getopts d:D:i:m:V:h OPTION
do
  case "$OPTION" in
  d)
    DOCS_PATH="$OPTARG"
    ;;
  i)
    IMAGE_NAME="$OPTARG"
    ;;
  m)
    TYPE="$OPTARG"
    ;;
  V)
    VERSION="$OPTARG"
    ;;
  h)
    usage
    exit 0 ;;
  \?)
    echo "option inconnue"
    usage
    exit 3
    ;;
  esac
done
#################################

generate_html() {
    echo "

    ############################
    #
    # Create HTML in  $DOCS_PATH/site
    #
    #
    ############################

    "
    cd "$DOCS_PATH"


    docker run --rm -v "${DOCS_PATH}":/work "$IMAGE_NAME" build  &
    sleep 5

    python html2dash.py -n Redbeard28 -d ${DOCS_PATH}/release -i docs_src/images/icon.png docs
    # Fix for icon.ico bug
    cp docs_src/images/favicon.ico release/Redbeard28.docset/icon.ico
    cd ${DOCS_PATH}/release && tar --exclude='.DS_Store' -cvzf ${DOCS_PATH}/docs_src/feeds/redbeard28.tgz Redbeard28.docset

    # Add new version
    sed -i "s/TOTO/${VERSION}/g" ${DOCS_PATH}/docs_src/feeds/redbeard28.xml
}



case "$TYPE" in
  html)
        generate_html
        ;;
  h)
    usage
    exit 0 ;;
  \?)
    echo "option inconnue"
    usage
    exit 3
    ;;

esac
