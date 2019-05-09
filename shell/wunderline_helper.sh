#!/bin/sh

#Cli-app
#https://developer.wunderlist.com/apps/new
#CA disable
#export NODE_TLS_REJECT_UNAUTHORIZED=0

#Add TODO S to work
#aj TODO --nocolor | wunderline add -s --list work

#Add tasks
#awk -v OFS="," -F"," '{print $1, $2}' ./target/graph.csv | tail -n +2 | sort | wunderline add -s --list graph

#0. Notification on mobile/desktop
#1. Sync the data on my server
#2. Integrate to google calender -- solve 0

function wu_ls() {
    wunderline list
}

function wu_lsa() {
    wunderline all
}

function wu_done() {
    wunderline done
}

function wu_lsw() {
    wunderline week
}

function wu_open() {
    wunderline open
}

function wu_add_sys() {
    #wu_add_sys "Read final chapt @5:00PM 04-30-19 @Cafe"
    wunderline add $1 --list system-design
}

#Consistency
function wu_add_habbit() {
    #wu_add_sys "Read final chapt @5:00PM 04-30-19 @Cafe"
    tom=`date -v +1d +"%Y-%m-%d"`

    wunderline add "Wake up @3:45AM @H" --list habbit
    wunderline add "Read+Refresh @3:45AM @H" --list habbit
    #Health
    wunderline add "Do Yoga @4:00-4:20AM @H" --list habbit
    wunderline add "Do kohm @4:20-4:27AM @H" --list habbit
    #Communication
    wunderline add "Do White board problem solve@4:30-5:00AM @H" --list habbit
    wunderline add "Do running @5:10-6:10AM @Gym" --list habbit
    wunderline add "Task out @6:20-8:45AM @Cafe" --list habbit
    wunderline add "Solve 2 problems @6:45-8:45AM @Cafe" --list habbit
}


function wu_add_work_habbit() {
    #wu_add_sys "Read final chapt @5:00PM 04-30-19 @Cafe"
    tom=`date -v +1d +"%Y-%m-%d"`
    wunderline add "Do design/code review @4:00PM @Focus-room" --list work --due $tom
    wunderline add "Learn java8 concept java8 book @4:30PM @Focus-room" --list work --due $tom
}
