
package Aws::RedShift::ModifyClusterParameterGroupResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');

}
1;