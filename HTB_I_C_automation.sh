#!/bin/bash

#https://www.hackthebox.eu/api/invite/how/to/generate
curl -XPOST https://www.hackthebox.eu/api/invite/generate > HTBIC.txt
cat HTBIC.txt | grep ""success"" | cut -b 30-69 > IC.txt
base64 -d IC.txt 

