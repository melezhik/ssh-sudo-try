my $ssh_command = config()->{ssh_command};
my $sudo_command = config()->{sudo_command};
my $server = story_var('server');

my $command = "$ssh_command $server $sudo_command 2>\&1; echo status: \$?";

set_stdout($command);

for my $l (split /\n/, `$command`){
  set_stdout($l);
}


