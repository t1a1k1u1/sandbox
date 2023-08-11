package MojoStudy::Presenter::User;
use feature 'signatures';

use Moose;

has 'user' => (is => 'ro', isa => 'MojoStudy::Entity::User');

sub make_contents ($self) {
    return +{
        id   => $self->user->id,
        name => $self->user->name,
    };
}

1;
