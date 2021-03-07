package Application::Routes::WebApp;
use 'Mojolicious::Routes';

my $r = Mojolicious::Routes->new;
my $webapp = $r->under('/app');

# routes
$webapp->get('/')->to('todo#get_all');
$webapp->post('/add')->to('todo#add');
$webapp->post('/modify')->to('todo#modify');
$webapp->post('/delete')->to('todo#delete');

1;