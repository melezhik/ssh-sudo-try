my $servers = config()->{'ssh-sudo-try'}->{servers};
my $ssh_command = config()->{'ssh-sudo-try'}->{ssh_command};
my $sudo_command = config()->{'ssh-sudo-try'}->{sudo_command};

for my $s (split /\s+/, $servers){
    set_stdout("server_start");
    set_stdout("hostname: $s");
    my $command = "$ssh_command $s $sudo_command >/dev/null; echo status: \$?";
    Test::More::note "try $command ...";
    set_stdout("ssh-sudo-try: ".`$command`);
    set_stdout("server_end");
}

