#!/bin/bash
echo "Post Title: "
    read title
    ptitle=${title// /-}   # convert spaces in title to hyphens
    plc=`echo "$ptitle" | tr '[:upper:]' '[:lower:]'`   # convert title to lowercase
    pdate=`date +%Y-%m-%d` 	# create date as Year-Month-Date
    ptdate=`date +%Y-%m-%dT06:51:53-06:00` 	# create date as Year-Month-DateT06:51:53-06:00
    filename=./_posts/$pdate-$plc.markdown 	# location to create the new file as year-month-day-title.md
    touch $filename 	# create the new blank post

    echo "---
    layout: post 
    title: $title
	date: $ptdate
	summaryfeed: true
	excerpt: 
	categories: article
    image: /assets/images/$plc.jpg
	author: mew
	pinmedia: /assets/images/$plc-pinterest.jpg
        permalink: /blog/$plc/
---" > $filename 	# fill out YAML Front Matter and insert into our new file
