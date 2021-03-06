package Paws::Lambda::FunctionCodeLocation;
  use Moose;
  has Location => (is => 'ro', isa => 'Str');
  has RepositoryType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::FunctionCodeLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::FunctionCodeLocation object:

  $service_obj->Method(Att1 => { Location => $value, ..., RepositoryType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::FunctionCodeLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

The object for the Lambda function location.

=head1 ATTRIBUTES


=head2 Location => Str

  The presigned URL you can use to download the function's .zip file that
you previously uploaded. The URL is valid for up to 10 minutes.


=head2 RepositoryType => Str

  The repository from which you can download the function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

