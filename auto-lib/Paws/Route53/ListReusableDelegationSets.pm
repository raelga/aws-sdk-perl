
package Paws::Route53::ListReusableDelegationSets;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReusableDelegationSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/delegationset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListReusableDelegationSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListReusableDelegationSets - Arguments for method ListReusableDelegationSets on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReusableDelegationSets on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method ListReusableDelegationSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReusableDelegationSets.

As an example:

  $service_obj->ListReusableDelegationSets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Marker => Str

If you're making the second or subsequent call to
C<ListReusableDelegationSets>, the C<Marker> element matches the value
that you specified in the C<marker> parameter in the previous request.



=head2 MaxItems => Str

The value that you specified for the C<maxitems> parameter in the
request that produced the current response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReusableDelegationSets in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

