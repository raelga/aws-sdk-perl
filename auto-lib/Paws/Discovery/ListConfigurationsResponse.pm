
package Paws::Discovery::ListConfigurationsResponse;
  use Moose;
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::Configuration]', traits => ['Unwrapped'], xmlname => 'configurations' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ListConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[L<Paws::Discovery::Configuration>]

Returns configuration details, including the configuration ID,
attribute names, and attribute values.


=head2 NextToken => Str

The call returns a token. Use this token to get the next set of
results.


=head2 _request_id => Str


=cut

1;