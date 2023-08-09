package MojoStudy::UseCase::UserCreate;
use feature 'signatures';

use MojoStudy::Repository::User;
use MojoStudy::Presenter::User;

sub handle ($class, $name) {
    my $user = MojoStudy::Repository::User->create($name);
    return MojoStudy::Presenter::User->new(user => $user);
}

1;
