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


package Amazon::EC2::Model::DetachVolumeRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DetachVolumeRequest
    # 
    # Properties:
    #
    # 
    # VolumeId: string
    # InstanceId: string
    # Device: string
    # Force: bool
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            VolumeId => { FieldValue => undef, FieldType => "string"},
            InstanceId => { FieldValue => undef, FieldType => "string"},
            Device => { FieldValue => undef, FieldType => "string"},
            Force => { FieldValue => undef, FieldType => "bool"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getVolumeId {
        return shift->{_fields}->{VolumeId}->{FieldValue};
    }


    sub setVolumeId {
        my ($self, $value) = @_;

        $self->{_fields}->{VolumeId}->{FieldValue} = $value;
        return $self;
    }


    sub withVolumeId {
        my ($self, $value) = @_;
        $self->setVolumeId($value);
        return $self;
    }


    sub isSetVolumeId {
        return defined (shift->{_fields}->{VolumeId}->{FieldValue});
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


    sub getDevice {
        return shift->{_fields}->{Device}->{FieldValue};
    }


    sub setDevice {
        my ($self, $value) = @_;

        $self->{_fields}->{Device}->{FieldValue} = $value;
        return $self;
    }


    sub withDevice {
        my ($self, $value) = @_;
        $self->setDevice($value);
        return $self;
    }


    sub isSetDevice {
        return defined (shift->{_fields}->{Device}->{FieldValue});
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