#!/bin/bash
echo please input the hex value.
read varname
echo $varname  | xxd -r -p | base64
#maintainer yannainglin
