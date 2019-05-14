#!/bin/bash

function task_today_add() {
    today_dd_mm=`date +"%m/%d"`
    gcalcli quick 'Do design/code-review check others 4:00pm '$today_dd_mm
    gcalcli quick 'Learn java8 concept java8 book 4:30pm '$today_dd_mm
}

function task_tom_add() {
  tom_dd_mm=`date -v +1d +"%m/%d"`

  gcalcli quick 'Wake up @Home 3:45AM '${tom_dd_mm}
  gcalcli quick 'Read+Refresh @Home 3:45AM '${tom_dd_mm}

  gcalcli quick 'Do Yoga @Home 4:00AM '${tom_dd_mm}
  gcalcli quick 'Do kohm @Home 4:20AM '${tom_dd_mm}

  gcalcli quick 'Do White board problem solve @HOME 4:30AM @H '${tom_dd_mm}
  gcalcli quick 'Do running @Gym 5:10AM '${tom_dd_mm}

  gcalcli quick 'Task out @Cafe 6:20AM  '${tom_dd_mm}
  gcalcli quick 'Solve 2 problems @Cafe @6:45AM '${tom_dd_mm}
}

function g_list() {
  gcalcli agenda
}

function main() {
  task_tom_add
  task_today_add
  g_list
}

# Add task for today/tomorrow
#main

function task_nightly() {
    today_dd_mm=`date +"%m/%d"`
    gcalcli quick 'Do headspce 9:30pm '$today_dd_mm
}

#task_nightly


function task_during_work() {
  today_dd_mm=`date +"%m/%d"`
  time_="\"$today_dd_mm 11:15AM\""
  gcalcli add --title 'Do kohm' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1
  time_="\"$today_dd_mm 1:30PM\""
  gcalcli add --title 'Do kohm' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1
  time_="\"$today_dd_mm 3:30PM\""
  gcalcli add --title 'Do kohm' --where 5th --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1
  time_="\"$today_dd_mm 4:00PM\""
  gcalcli add --title 'Do code/design review' --where focus --when "$time_" --duration 10 --description 'It is going to be exciting!' --reminder 1
}

task_during_work
