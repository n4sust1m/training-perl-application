my $dbuser = 'root';
my $passwd = 'root-passwd';
my $hostname = 'mysql_db:3306';
my $database = 'service_db';

package Application::Model {
    use Mouse;
    use Mojo::mysql;

    has 'handler' => (
        is => 'rw',
        isa => 'Mojo::mysql',
    );

    # constructor
    sub BUILD {
        my ($self) = @_;

        my $handler = Mojo::mysql->strict_mode("mysql://$dbuser:$passwd\@$hostname/$database");

        $self->handler($handler);
    }

    __PACKAGE__->meta->make_immutable();
}

1;