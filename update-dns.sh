#!/bin/bash

while [[ $# > 0 ]]; do
  key="$1"
  
  case $key in
    -u|--user)
    USER="$2"
    shift
    ;;
    -p|--password)
    PASSWORD="$2"
    shift
    ;;
    -a|--account)
    ACCOUNT="$2"
    shift
    ;;
    -h|--host)
    host="$2"
    shift
    ;;
    *)
    echo "Unknown option: $key" >&2
    exit 1
    ;;
  esac
  shift
done

gratisdnsUrl="https://ssl.gratisdns.dk/ddns.phtmlu=${USER}&p=${PASSWORD}&d=${ACCOUNT}&h=${HOST}"

curl -sS "$gratisdnsUrl"