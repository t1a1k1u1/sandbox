package MojoStudy::Controller::User;
use Mojo::Base 'Mojolicious::Controller', -signatures;

use MojoStudy::UseCase::UserCreate;

sub create ($self) {
    my $name = $self->req->json->{name};
    my $presenter = MojoStudy::UseCase::UserCreate->handle($name);
    return $self->render(json => $presenter->make_contents);
}

1;
