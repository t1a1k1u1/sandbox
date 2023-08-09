package MojoStudy::Repository::User;
use feature 'signatures';

use MojoStudy::Entity::User;

sub create ($class, $name) {
    return MojoStudy::Entity::User->new(
        name => $name,
    );
}

1;
