
package Paws::IAM::UpdateServerCertificate;
  use Moose;
  has NewPath => (is => 'ro', isa => 'Str');
  has NewServerCertificateName => (is => 'ro', isa => 'Str');
  has ServerCertificateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServerCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateServerCertificate - Arguments for method UpdateServerCertificate on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServerCertificate on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method UpdateServerCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServerCertificate.

As an example:

  $service_obj->UpdateServerCertificate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NewPath => Str

The new path for the server certificate. Include this only if you are
updating the server certificate's path.

The regex pattern for this parameter is a string of characters
consisting of either a forward slash (/) by itself or a string that
must begin and end with forward slashes, containing any ASCII character
from the ! (\u0021) thru the DEL character (\u007F), including most
punctuation characters, digits, and upper and lowercased letters.



=head2 NewServerCertificateName => Str

The new name for the server certificate. Include this only if you are
updating the server certificate's name. The name of the certificate
cannot contain any spaces.

The regex pattern for this parameter is a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: =,.@-



=head2 B<REQUIRED> ServerCertificateName => Str

The name of the server certificate that you want to update.

The regex pattern for this parameter is a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: =,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServerCertificate in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

