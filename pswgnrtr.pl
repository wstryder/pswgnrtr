#!/usr/bin/perl
# A good password is at least 20 characters long.
# A random generator is the only way to get a good password.
# Nolicense.
#

my $len = $ARGV[0];
if (not defined $len) {
	$len = 20;
}
my $pwd;

# excluding ambiguos characters like "Il1O0o"
# there are some special characters I can never remember how to get
# them from my keyboard, so these are my favorites.
my @chars = ('A'..'Z','a'..'k','m','n','p'..'z','2'..'9','!','#','%','&','/','(',')','=','?','*','-','_');
my $range = $#chars + 1;
for (1..$len) {
   $pwd .= $chars[int(rand($range))];
}
print "$pwd\n";
