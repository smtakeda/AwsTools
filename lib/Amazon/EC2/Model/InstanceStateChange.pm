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


package Amazon::EC2::Model::InstanceStateChange;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::InstanceStateChange
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # CurrentState: Amazon::EC2::Model::InstanceState
    # PreviousState: Amazon::EC2::Model::InstanceState
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => { FieldValue => undef, FieldType => "string"},
            CurrentState => {FieldValue => undef, FieldType => "Amazon::EC2::Model::InstanceState"},
            PreviousState => {FieldValue => undef, FieldType => "Amazon::EC2::Model::InstanceState"},
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


    sub setInstanceId {
        my ($self, $value) = @_;

        $self->{_fields}->{InstanceId}->{FieldValue} = $value;
        return $self;
    }


    sub withInstanceId {
        my ($self, $value) = @_;
        $self->setInstanceId($value);
        return $self;
    }


    sub isSetInstanceId {
        return defined (shift->{_fields}->{InstanceId}->{FieldValue});
    }

    sub getCurrentState {
        return shift->{_fields}->{CurrentState}->{FieldValue};
    }


    sub setCurrentState {
        my ($self, $value) = @_;
        $self->{_fields}->{CurrentState}->{FieldValue} = $value;
    }


    sub withCurrentState {
        my ($self, $value) = @_;
        $self->setCurrentState($value);
        return $self;
    }


    sub isSetCurrentState {
        return defined (shift->{_fields}->{CurrentState}->{FieldValue});

    }

    sub getPreviousState {
        return shift->{_fields}->{PreviousState}->{FieldValue};
    }


    sub setPreviousState {
        my ($self, $value) = @_;
        $self->{_fields}->{PreviousState}->{FieldValue} = $value;
    }


    sub withPreviousState {
        my ($self, $value) = @_;
        $self->setPreviousState($value);
        return $self;
    }


    sub isSetPreviousState {
        return defined (shift->{_fields}->{PreviousState}->{FieldValue});

    }





1;