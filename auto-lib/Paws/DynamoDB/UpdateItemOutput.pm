
package Paws::DynamoDB::UpdateItemOutput;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::DynamoDB::AttributeMap');
  has ConsumedCapacity => (is => 'ro', isa => 'Paws::DynamoDB::ConsumedCapacity');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Paws::DynamoDB::ItemCollectionMetrics');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateItemOutput

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::DynamoDB::AttributeMap>

A map of attribute values as they appeared before the I<UpdateItem>
operation. This map only appears if I<ReturnValues> was specified as
something other than C<NONE> in the request. Each element represents
one attribute.


=head2 ConsumedCapacity => L<Paws::DynamoDB::ConsumedCapacity>




=head2 ItemCollectionMetrics => L<Paws::DynamoDB::ItemCollectionMetrics>




=head2 _request_id => Str


=cut

1;