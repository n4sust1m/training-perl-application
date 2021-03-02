package Application::Controller::Example;
use Mojo::Base 'Mojolicious::Controller', -signatures;

use Application::Model::User;

# This action will render a template
sub welcome ($self) {
    my @user = Application::Model::User->select_all;

    my $text = $user[0]->{name};

    # Render template "example/welcome.html.ep" with message
    $self->render(msg => "text -> $text");
}

1;
