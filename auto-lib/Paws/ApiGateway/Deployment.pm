
package Paws::ApiGateway::Deployment;
  use Moose;
  has ApiSummary => (is => 'ro', isa => 'HashRef[HashRef[Paws::ApiGateway::MethodSnapshot]]');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Deployment

=head1 ATTRIBUTES


=head2 ApiSummary => HashRef[L<HashRef[Paws::ApiGateway::MethodSnapshot]>]

  Gets a summary of the RestApi at the date and time that the deployment
resource was created.

=head2 CreatedDate => Str

  The date and time that the deployment resource was created.

=head2 Description => Str

  The description for the deployment resource.

=head2 Id => Str

  The identifier for the deployment resource.


=cut

