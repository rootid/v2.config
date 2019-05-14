#!/bin/sh

#. task_war.sh
alias tsk_ls="task list"
alias tsk_prj="task projects"
alias tsk_ana="task annotate"

#task 1501 done
function tsk_done() {
  task $1 done
}

function tsk_add_daily_health() {
  #Do kohm
  task add $1 project:habbit.daily.health
}

function tsk_add_daily_comm() {
  #Read wpm/grm/
  #Write wpm/grm/
  task add $1 project:habbit.daily.comm
}

function tsk_add_daily_sys_design() {
  #Summary/Grok/Morris
  task add $1 project:habbit.daily.system_design
}

function tsk_add_read_books() {
  #tech/non-tech/fiction
  task add $1 project:book.read
}

#Do annotate
function tsk_add_daily_intv() {
  task add $1 project:habbit.daily.problem_solve
}
