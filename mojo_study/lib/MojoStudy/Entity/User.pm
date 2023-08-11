package MojoStudy::Entity::User;
use Moose;

has 'id' => (is => 'ro', isa => 'Int');
has 'name' => (is => 'ro', isa => 'Str');

1;
