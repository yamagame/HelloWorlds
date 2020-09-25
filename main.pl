sub trim {
  my $trim_data = shift;
  my $Zs="　";
  $trim_data =~ s/^(?:\s|$Zs)+//o;
  $trim_data =~ s/^(.*?)(?:\s|$Zs)+$/$1/o;
  return $trim_data;
}

sub printStep{
  my $sum = 0;
  my $line = @_[0];
  my @strlist = split(/:/, $line);
  my $length = @strlist;
  if ($length >= 2) {
    my $loop = int($strlist[0]);
    my $word = trim($strlist[1]);
    for ($i=0;$i<$loop;$i++) {
      for ($j=0;$j<=$i;$j++) {
        print $word;
        $sum += length $word;
      }
      print "\n";
    }
  }
  return $sum
}

if (@ARGV >= 1){
  my $line = $ARGV[0];
  exit(printStep($line));
} else {
  my $line = <STDIN>;
  exit(printStep($line));
}
