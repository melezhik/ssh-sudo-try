my $ssh_command = config()->{'ssh-sudo-try'}->{ssh_command};
my $sudo_command = config()->{'ssh-sudo-try'}->{sudo_command};
my $server = story_var('server');
my $command = "$ssh_command $server $sudo_command >/dev/null; echo -n status: \$?";
set_stdout("$command :".`$command`);

