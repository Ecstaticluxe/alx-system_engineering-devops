# kill thr proce

exec { 'pkill':
command => 'pkill killmenow',
provider => 'shell',
}
