package Application::Model::User;

use Application::Model;

my $model = Application::Model->new();
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