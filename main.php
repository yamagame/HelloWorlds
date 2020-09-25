<?php

function printStep($line) {
  $sum = 0;
  $word = explode(":", $line);
  if (count($word) > 1) {
    $loop = (int) $word[0];
    for ($i=0;$i<$loop;$i++) {
      for ($j=0;$j<=$i;$j++) {
        echo trim($word[1]);
        $sum += strlen(trim($word[1]));
      }
      echo "\n";
    }
  }
  return $sum;
}

if (count($argv) > 1) {
  exit(printStep($argv[1]));
} else {
  $line = trim(fgets(STDIN));
  exit(printStep($line));
}
