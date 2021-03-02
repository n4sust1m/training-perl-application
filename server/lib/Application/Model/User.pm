package Application::Model::User;

use Application::Model;

my $db = Application::Model->db;

sub select_all {
    my $records = $db->query('SELECT * FROM user');
    my @result;

    while (my $next = $result->hash) { # mapで書けそう
        @result = push @result, $next;
    }
    return @result;
};

1;