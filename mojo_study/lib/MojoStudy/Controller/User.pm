package MojoStudy::Controller::User;
use Mojo::Base 'Mojolicious::Controller', -signatures;

use MojoStudy::UseCase::UserCreate;
use MojoStudy::UseCase::UserGet;

sub create ($self) {
    my $name = $self->req->json->{name};
    my $presenter = MojoStudy::UseCase::UserCreate->handle($name);
    return $self->render(json => $presenter->make_contents);
}

sub get ($self) {
    my $id = $self->param('id');
    my $presenter = MojoStudy::UseCase::UserGet->handle($id);
    return $self->render(json => $presenter->make_contents);
}

1;
