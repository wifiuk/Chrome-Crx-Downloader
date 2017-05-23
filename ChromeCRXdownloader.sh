#!/bin/bash
#
# A Simple Chrome .crx download script
#
#

echo "Enter Chrome store ID, e.g ljdgplocfnmnofbhpkjclbefmjoikgke"
read ChromeID
echo "Enter output filename, e.g NameofExtension.crx"
read OUTPUT
USER="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36"

wget -U --header="$USER" "https://clients2.google.com/service/update2/crx?response=redirect&prodversion=49.0&x=id%3D$ChromeID%26installsource%3Dondemand%26uc" -O $OUTPUT
