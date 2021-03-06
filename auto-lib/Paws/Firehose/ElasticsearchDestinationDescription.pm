package Paws::Firehose::ElasticsearchDestinationDescription;
  use Moose;
  has BufferingHints => (is => 'ro', isa => 'Paws::Firehose::ElasticsearchBufferingHints');
  has CloudWatchLoggingOptions => (is => 'ro', isa => 'Paws::Firehose::CloudWatchLoggingOptions');
  has DomainARN => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexRotationPeriod => (is => 'ro', isa => 'Str');
  has RetryOptions => (is => 'ro', isa => 'Paws::Firehose::ElasticsearchRetryOptions');
  has RoleARN => (is => 'ro', isa => 'Str');
  has S3BackupMode => (is => 'ro', isa => 'Str');
  has S3DestinationDescription => (is => 'ro', isa => 'Paws::Firehose::S3DestinationDescription');
  has TypeName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::ElasticsearchDestinationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::ElasticsearchDestinationDescription object:

  $service_obj->Method(Att1 => { BufferingHints => $value, ..., TypeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::ElasticsearchDestinationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->BufferingHints

=head1 DESCRIPTION

The destination description in Amazon ES.

=head1 ATTRIBUTES


=head2 BufferingHints => L<Paws::Firehose::ElasticsearchBufferingHints>

  Buffering options.


=head2 CloudWatchLoggingOptions => L<Paws::Firehose::CloudWatchLoggingOptions>

  CloudWatch logging options.


=head2 DomainARN => Str

  The ARN of the Amazon ES domain.


=head2 IndexName => Str

  The Elasticsearch index name.


=head2 IndexRotationPeriod => Str

  The Elasticsearch index rotation period


=head2 RetryOptions => L<Paws::Firehose::ElasticsearchRetryOptions>

  Elasticsearch retry options.


=head2 RoleARN => Str

  The ARN of the AWS credentials.


=head2 S3BackupMode => Str

  Amazon S3 backup mode.


=head2 S3DestinationDescription => L<Paws::Firehose::S3DestinationDescription>

  


=head2 TypeName => Str

  The Elasticsearch type name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

