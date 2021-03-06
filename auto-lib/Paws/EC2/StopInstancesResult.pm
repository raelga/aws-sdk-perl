
package Paws::EC2::StopInstancesResult;
  use Moose;
  has StoppingInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStateChange]', xmlname => 'instancesSet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StopInstancesResult

=head1 ATTRIBUTES


=head2 StoppingInstances => ArrayRef[L<Paws::EC2::InstanceStateChange>]

Information about one or more stopped instances.


=head2 _request_id => Str


=cut

