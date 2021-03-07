package Application::Repository::User;
use Application::DB;

my $model = Application::DB->new();
my $db = $model->handler->db;

sub select_all {
    my $records = $db->query('SELECT * FROM user');
    my @result;

    while (my $next = $records->hash) { # mapで書けそう
        push @result, $next;
    }

    return \@result;
};

1;