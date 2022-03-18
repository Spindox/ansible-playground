#! /bin/sh
nohup nginx -g "daemon off;" >dev/null 2>&1 &
echo 'All ready, open your browser on http://localhost:8080'
wait