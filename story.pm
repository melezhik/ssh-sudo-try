my $servers = config()->{'ssh-sudo-try'}->{servers};

for my $s (split /\s+/, $servers){
    run_story("ssh-and-sudo", { server => $s } );
}


set_stdout("done");
