# network utils


function lsof_query_by_port() {
  lsof -t -i :$1
}

