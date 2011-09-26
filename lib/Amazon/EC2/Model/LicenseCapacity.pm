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


package Amazon::EC2::Model::LicenseCapacity;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::LicenseCapacity
    # 
    # Properties:
    #
    # 
    # Capacity: int
    # InstanceCapacity: int
    # State: string
    # EarliestAllowedDeactivationTime: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            Capacity => { FieldValue => undef, FieldType => "int"},
            InstanceCapacity => { FieldValue => undef, FieldType => "int"},
            State => { FieldValue => undef, FieldType => "string"},
            EarliestAllowedDeactivationTime => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getCapacity {
        return shift->{_fields}->{Capacity}->{FieldValue};
    }


    sub setCapacity {
        my ($self, $value) = @_;

        $self->{_fields}->{Capacity}->{FieldValue} = $value;
        return $self;
    }


    sub withCapacity {
        my ($self, $value) = @_;
        $self->setCapacity($value);
        return $self;
    }


    sub isSetCapacity {
        return defined (shift->{_fields}->{Capacity}->{FieldValue});
    }


    sub getInstanceCapacity {
        return shift->{_fields}->{InstanceCapacity}->{FieldValue};
    }


    sub setInstanceCapacity {
        my ($self, $value) = @_;

        $self->{_fields}->{InstanceCapacity}->{FieldValue} = $value;
        return $self;
    }


    sub withInstanceCapacity {
        my ($self, $value) = @_;
        $self->setInstanceCapacity($value);
        return $self;
    }


    sub isSetInstanceCapacity {
        return defined (shift->{_fields}->{InstanceCapacity}->{FieldValue});
    }


    sub getState {
        return shift->{_fields}->{State}->{FieldValue};
    }


    sub setState {
        my ($self, $value) = @_;

        $self->{_fields}->{State}->{FieldValue} = $value;
        return $self;
    }


    sub withState {
        my ($self, $value) = @_;
        $self->setState($value);
        return $self;
    }


    sub isSetState {
        return defined (shift->{_fields}->{State}->{FieldValue});
    }


    sub getEarliestAllowedDeactivationTime {
        return shift->{_fields}->{EarliestAllowedDeactivationTime}->{FieldValue};
    }


    sub setEarliestAllowedDeactivationTime {
        my ($self, $value) = @_;

        $self->{_fields}->{EarliestAllowedDeactivationTime}->{FieldValue} = $value;
        return $self;
    }


    sub withEarliestAllowedDeactivationTime {
        my ($self, $value) = @_;
        $self->setEarliestAllowedDeactivationTime($value);
        return $self;
    }


    sub isSetEarliestAllowedDeactivationTime {
        return defined (shift->{_fields}->{EarliestAllowedDeactivationTime}->{FieldValue});
    }





1;