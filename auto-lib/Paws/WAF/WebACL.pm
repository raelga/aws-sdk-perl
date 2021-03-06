package Paws::WAF::WebACL;
  use Moose;
  has DefaultAction => (is => 'ro', isa => 'Paws::WAF::WafAction', required => 1);
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAF::ActivatedRule]', required => 1);
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::WebACL

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::WebACL object:

  $service_obj->Method(Att1 => { DefaultAction => $value, ..., WebACLId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::WebACL object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultAction

=head1 DESCRIPTION

Contains the C<Rules> that identify the requests that you want to
allow, block, or count. In a C<WebACL>, you also specify a default
action (C<ALLOW> or C<BLOCK>), and the action for each C<Rule> that you
add to a C<WebACL>, for example, block requests from specified IP
addresses or block requests from specified referrers. You also
associate the C<WebACL> with a CloudFront distribution to identify the
requests that you want AWS WAF to filter. If you add more than one
C<Rule> to a C<WebACL>, a request needs to match only one of the
specifications to be allowed, blocked, or counted. For more
information, see UpdateWebACL.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultAction => L<Paws::WAF::WafAction>

  The action to perform if none of the C<Rules> contained in the
C<WebACL> match. The action is specified by the WafAction object.


=head2 MetricName => Str

  


=head2 Name => Str

  A friendly name or description of the C<WebACL>. You can't change the
name of a C<WebACL> after you create it.


=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::WAF::ActivatedRule>]

  An array that contains the action for each C<Rule> in a C<WebACL>, the
priority of the C<Rule>, and the ID of the C<Rule>.


=head2 B<REQUIRED> WebACLId => Str

  A unique identifier for a C<WebACL>. You use C<WebACLId> to get
information about a C<WebACL> (see GetWebACL), update a C<WebACL> (see
UpdateWebACL), and delete a C<WebACL> from AWS WAF (see DeleteWebACL).

C<WebACLId> is returned by CreateWebACL and by ListWebACLs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

