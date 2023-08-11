package MojoStudy::UseCase::UserGet;
use feature 'signatures';

use MojoStudy::Repository::User;
use MojoStudy::Presenter::User;

sub handle ($class, $id) {
    my $user = MojoStudy::Repository::User->get($id);
    return MojoStudy::Presenter::User->new(user => $user);
}

1;
