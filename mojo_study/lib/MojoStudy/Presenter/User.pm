package MojoStudy::Presenter::User;
use feature 'signatures';

use Moose;

has 'user' => (is => 'ro', isa => 'MojoStudy::Entity::User');

sub make_contents ($self) {
    return +{
        name => $self->user->name,
    };
}

1;
