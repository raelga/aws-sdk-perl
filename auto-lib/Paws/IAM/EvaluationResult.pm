package Paws::IAM::EvaluationResult;
  use Moose;
  has EvalActionName => (is => 'ro', isa => 'Str', required => 1);
  has EvalDecision => (is => 'ro', isa => 'Str', required => 1);
  has EvalDecisionDetails => (is => 'ro', isa => 'HashRef[Str]');
  has EvalResourceName => (is => 'ro', isa => 'Str');
  has MatchedStatements => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Statement]');
  has MissingContextValues => (is => 'ro', isa => 'ArrayRef[Str]');
  has ResourceSpecificResults => (is => 'ro', isa => 'ArrayRef[Paws::IAM::ResourceSpecificResult]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::EvaluationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::EvaluationResult object:

  $service_obj->Method(Att1 => { EvalActionName => $value, ..., ResourceSpecificResults => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::EvaluationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->EvalActionName

=head1 DESCRIPTION

Contains the results of a simulation.

This data type is used by the return parameter of C<SimulatePolicy>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvalActionName => Str

  The name of the API action tested on the indicated resource.


=head2 B<REQUIRED> EvalDecision => Str

  The result of the simulation.


=head2 EvalDecisionDetails => HashRef[Str]

  Additional details about the results of the evaluation decision. When
there are both IAM policies and resource policies, this parameter
explains how each set of policies contributes to the final evaluation
decision. When simulating cross-account access to a resource, both the
resource-based policy and the caller's IAM policy must grant access.
See How IAM Roles Differ from Resource-based Policies


=head2 EvalResourceName => Str

  The ARN of the resource that the indicated API action was tested on.


=head2 MatchedStatements => ArrayRef[L<Paws::IAM::Statement>]

  A list of the statements in the input policies that determine the
result for this scenario. Remember that even if multiple statements
allow the action on the resource, if only one statement denies that
action, then the explicit deny overrides any allow, and the deny
statement is the only entry included in the result.


=head2 MissingContextValues => ArrayRef[Str]

  A list of context keys that are required by the included input policies
but that were not provided by one of the input parameters. To discover
the context keys used by a set of policies, you can call
GetContextKeysForCustomPolicy or GetContextKeysForPrincipalPolicy.

If the response includes any keys in this list, then the reported
results might be untrustworthy because the simulation could not
completely evaluate all of the conditions specified in the policies
that would occur in a real world request.


=head2 ResourceSpecificResults => ArrayRef[L<Paws::IAM::ResourceSpecificResult>]

  The individual results of the simulation of the API action specified in
EvalActionName on each resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

