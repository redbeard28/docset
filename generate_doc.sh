#!/bin/bash
job_name=`basename $0`


# Fonction d aide
usage() {
clear
echo "
########################################
#
#   $(pwd)/$job_name -d /tmp/mydocs -D https://github.com/redbeard28/docset -i image_name -m serve
#   $(pwd)/$job_name -d /tmp/mydocs -D . -i image_name -m html ('-D .' to use actual path)
#
#########################################
option -d =>    /tmp/docs                                                   =>  path of your markdown
option -i =>    redbeard28/docset:1.0                                       => Image Name
option -D =>    https://github.com/redbeard28/redbeard-consulting_docs      => Dockerfile
option -m =>    html or serve                                               => Generate html files or make server
"
}

#################################
### Recuperation des entrees
while getopts d:D:i:m:h OPTION
do
  case "$OPTION" in
  d)
    DOCS_PATH="$OPTARG"
    ;;
  D)
    DOCKERFILE="$OPTARG"
    ;;
  i)
    IMAGE_NAME="$OPTARG"
    ;;
  m)
    TYPE="$OPTARG"
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
    # Generating $IMAGE_NAME
    #
    #
    ############################

    "
    docker rm "$IMAGE_NAME"

    cd "$DOCS_PATH"
    docker build -t "$IMAGE_NAME" $DOCKERFILE
    echo "

    ############################
    #
    # Create HTML in  $DOCS_PATH/site
    #
    #
    ############################

    "
    cd "$DOCS_PATH"
    #docker run --rm -v "${DOCS_PATH}":/work -p 8003:8000 $image_name serve -a 0.0.0.0:8000 &
    rm -rf ~/Library/Application\ Support/Dash/DocSets/Redbeard28/redbeard28.docset
    sleep 5
    docker run --rm -v "${DOCS_PATH}":/work "$IMAGE_NAME" build  &
    sleep 5
    python html2dash.py -n redbeard28  -d  ~/Library/Application\ Support/Dash/DocSets/Redbeard28 docs -i docs_src/images/icon.png
    # Fix for icon.ico bug
    cp docs_src/images/favicon.ico ~/Library/Application\ Support/Dash/DocSets/Redbeard28/redbeard28.docset/icon.ico
}

generate_serve() {
    echo "
    ############################
    #
    # Generating $IMAGE_NAME
    #
    #
    ############################

    "
    set -x
    container_id="$(docker container ls|grep ${IMAGE_NAME}|awk '{ print $1 }')"
    docker container stop  $container_id
    #if [ $? -ne 0 ];then
    #   echo "Command docker container stop $container_id faild"
    #    exit 1
    #fi

    cd "$DOCS_PATH"
    docker build -t $IMAGE_NAME $DOCKERFILE

    echo "

    ############################
    #
    # Create server at http://localhost:8003
    #
    #
    ############################

    "

    cd "$DOCS_PATH"
    docker run --rm -v "${DOCS_PATH}":/work -p 8003:8000 $IMAGE_NAME serve -a 0.0.0.0:8000 &
}

case "$TYPE" in
  html)
        generate_html
        ;;
  serve)
        generate_serve
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