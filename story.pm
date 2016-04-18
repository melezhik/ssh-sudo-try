my $servers = config()->{main}->{servers};

for my $s (split /,/, $servers){
    run_story("ssh-and-sudo", { server => $s } );
}


set_stdout("done");
