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


package Amazon::EC2::Model::InstanceBlockDeviceMappingParameter;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::InstanceBlockDeviceMappingParameter
    # 
    # Properties:
    #
    # 
    # DeviceName: string
    # VirtualName: string
    # Ebs: Amazon::EC2::Model::InstanceEbsBlockDeviceParameter
    # NoDevice: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            DeviceName => { FieldValue => undef, FieldType => "string"},
            VirtualName => { FieldValue => undef, FieldType => "string"},
            Ebs => {FieldValue => undef, FieldType => "Amazon::EC2::Model::InstanceEbsBlockDeviceParameter"},
            NoDevice => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getDeviceName {
        return shift->{_fields}->{DeviceName}->{FieldValue};
    }


    sub setDeviceName {
        my ($self, $value) = @_;

        $self->{_fields}->{DeviceName}->{FieldValue} = $value;
        return $self;
    }


    sub withDeviceName {
        my ($self, $value) = @_;
        $self->setDeviceName($value);
        return $self;
    }


    sub isSetDeviceName {
        return defined (shift->{_fields}->{DeviceName}->{FieldValue});
    }


    sub getVirtualName {
        return shift->{_fields}->{VirtualName}->{FieldValue};
    }


    sub setVirtualName {
        my ($self, $value) = @_;

        $self->{_fields}->{VirtualName}->{FieldValue} = $value;
        return $self;
    }


    sub withVirtualName {
        my ($self, $value) = @_;
        $self->setVirtualName($value);
        return $self;
    }


    sub isSetVirtualName {
        return defined (shift->{_fields}->{VirtualName}->{FieldValue});
    }

    sub getEbs {
        return shift->{_fields}->{Ebs}->{FieldValue};
    }


    sub setEbs {
        my ($self, $value) = @_;
        $self->{_fields}->{Ebs}->{FieldValue} = $value;
    }


    sub withEbs {
        my ($self, $value) = @_;
        $self->setEbs($value);
        return $self;
    }


    sub isSetEbs {
        return defined (shift->{_fields}->{Ebs}->{FieldValue});

    }


    sub getNoDevice {
        return shift->{_fields}->{NoDevice}->{FieldValue};
    }


    sub setNoDevice {
        my ($self, $value) = @_;

        $self->{_fields}->{NoDevice}->{FieldValue} = $value;
        return $self;
    }


    sub withNoDevice {
        my ($self, $value) = @_;
        $self->setNoDevice($value);
        return $self;
    }


    sub isSetNoDevice {
        return defined (shift->{_fields}->{NoDevice}->{FieldValue});
    }





1;