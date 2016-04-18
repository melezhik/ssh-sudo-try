my $ssh_command = config()->{'ssh-sudo-try'}->{ssh_command};
my $sudo_command = config()->{'ssh-sudo-try'}->{sudo_command};
my $server = story_var('server');


set_stdout('ssh_begin');
my $command = "$ssh_command $server $sudo_command 2>\&1; echo status: \$?";

set_stdout($command);

for my $l (split /\n/, `$command`){
  set_stdout($l);
}

set_stdout('ssh_end');

