
package Paws::S3::HeadObject;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has IfModifiedSince => (is => 'ro', isa => 'Str', header_name => 'If-Modified-Since', traits => ['ParamInHeader']);
  has IfNoneMatch => (is => 'ro', isa => 'Str', header_name => 'If-None-Match', traits => ['ParamInHeader']);
  has IfUnmodifiedSince => (is => 'ro', isa => 'Str', header_name => 'If-Unmodified-Since', traits => ['ParamInHeader']);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', query_name => 'partNumber', traits => ['ParamInQuery']);
  has Range => (is => 'ro', isa => 'Str', header_name => 'Range', traits => ['ParamInHeader']);
  has RequestPayer => (is => 'ro', isa => 'Str', header_name => 'x-amz-request-payer', traits => ['ParamInHeader']);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-algorithm', traits => ['ParamInHeader']);
  has SSECustomerKey => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key', traits => ['ParamInHeader']);
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str', header_name => 'x-amz-server-side-encryption-customer-key-MD5', traits => ['ParamInHeader']);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'HeadObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'HEAD');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::HeadObjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::HeadObject - Arguments for method HeadObject on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method HeadObject on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method HeadObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to HeadObject.

As an example:

  $service_obj->HeadObject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 IfMatch => Str

Return the object only if its entity tag (ETag) is the same as the one
specified, otherwise return a 412 (precondition failed).



=head2 IfModifiedSince => Str

Return the object only if it has been modified since the specified
time, otherwise return a 304 (not modified).



=head2 IfNoneMatch => Str

Return the object only if its entity tag (ETag) is different from the
one specified, otherwise return a 304 (not modified).



=head2 IfUnmodifiedSince => Str

Return the object only if it has not been modified since the specified
time, otherwise return a 412 (precondition failed).



=head2 B<REQUIRED> Key => Str





=head2 PartNumber => Int

Part number of the object being read. This is a positive integer
between 1 and 10,000. Effectively performs a 'ranged' HEAD request for
the part specified. Useful querying about the size of the part and the
number of parts in this object.



=head2 Range => Str

Downloads the specified range bytes of an object. For more information
about the HTTP Range header, go to
http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 SSECustomerAlgorithm => Str

Specifies the algorithm to use to when encrypting the object (e.g.,
AES256).



=head2 SSECustomerKey => Str

Specifies the customer-provided encryption key for Amazon S3 to use in
encrypting data. This value is used to store the object and then it is
discarded; Amazon does not store the encryption key. The key must be
appropriate for use with the algorithm specified in the
x-amz-server-side-encryption-customer-algorithm header.



=head2 SSECustomerKeyMD5 => Str

Specifies the 128-bit MD5 digest of the encryption key according to RFC
1321. Amazon S3 uses this header for a message integrity check to
ensure the encryption key was transmitted without error.



=head2 VersionId => Str

VersionId used to reference a specific version of the object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method HeadObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

