#!/usr/bin/env bash
nnn_url='https://github.com/jarun/nnn/releases/download/v3.5/nnn-static-3.5.x86_64.tar.gz'
if [[ -f 'nnn' ]]; then
	echo 'nnn already installed'
else
	echo 'downloading nnn'
	wget -O 'nnn.tar.gz' "$nnn_url"
	tar -xvf 'nnn.tar.gz'
	chmod u+x 'nnn-static' "$nnn_url"
	mv 'nnn-static' 'nnn'
fi
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh 
