
package Paws::EC2::DescribeVpnConnectionsResult;
  use Moose;
  has VpnConnections => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnConnection]', xmlname => 'vpnConnectionSet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpnConnectionsResult

=head1 ATTRIBUTES


=head2 VpnConnections => ArrayRef[L<Paws::EC2::VpnConnection>]

Information about one or more VPN connections.


=head2 _request_id => Str


=cut

