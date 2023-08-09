package MojoStudy::Entity::User;
use Moose;

has 'name' => (is => 'ro', isa => 'Str');

1;
