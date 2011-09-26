###########################################$
#  Copyright 2008-2010 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#  Licensed under the Apache License, Version 2.0 (the "License"). You may not
#  use this file except in compliance with the License.
#  A copy of the License is located at
#
#      http://aws.amazon.com/apache2.0
#
#  or in the "license" file accompanying this file. This file is distributed on
#  an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
#  or implied. See the License for the specific language governing permissions
#  and limitations under the License.
###########################################$
#    __  _    _  ___
#   (  )( \/\/ )/ __)
#   /__\ \    / \__ \
#  (_)(_) \/\/  (___/
#
#  Amazon EC2 Perl Library
#  API Version: 2010-06-15
#  Generated: Wed Jul 21 13:37:54 PDT 2010
#


package Amazon::EC2::Model::StopInstancesRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::StopInstancesRequest
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # Force: bool
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => {FieldValue => [], FieldType => ["string"]},
            Force => { FieldValue => undef, FieldType => "bool"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

        sub getInstanceId {
        return shift->{_fields}->{InstanceId}->{FieldValue};
    }


    sub setInstanceId    {
        my ($self, $value) = @_;
        $self->{_fields}->{InstanceId}->{FieldValue} = $value;
        return $self;
    }



    sub withInstanceId {
        my $self = shift;
            my $list = $self->{_fields}->{InstanceId}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetInstanceId {
        return scalar (@{shift->{_fields}->{InstanceId}->{FieldValue}}) > 0;
    }


    sub getForce {
        return shift->{_fields}->{Force}->{FieldValue};
    }


    sub setForce {
        my ($self, $value) = @_;

        $self->{_fields}->{Force}->{FieldValue} = $value;
        return $self;
    }


    sub withForce {
        my ($self, $value) = @_;
        $self->setForce($value);
        return $self;
    }


    sub isSetForce {
        return defined (shift->{_fields}->{Force}->{FieldValue});
    }





1;