package MojoStudy::Repository::User;
use feature qw/state signatures/;

use MojoStudy::Entity::User;

sub create ($class, $name) {
    state $id = 0; $id += 1;
    return MojoStudy::Entity::User->new(
        id   => $id,
        name => $name,
    );
}

sub get ($class, $id) {
    return MojoStudy::Entity::User->new(
        id   => $id,
        name => 'dummy',
    );
}

1;
