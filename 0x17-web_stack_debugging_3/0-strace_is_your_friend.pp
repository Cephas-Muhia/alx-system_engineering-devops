$file_to_edit = '/var/www/html/wp-settings.php'

exec { 'replace_phpp_with_php':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin', '/usr/bin'],
  onlyif  => "grep -q 'phpp' ${file_to_edit}",
}

