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


package Amazon::EC2::Model::InstanceAttribute;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::InstanceAttribute
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # InstanceType: string
    # KernelId: string
    # RamdiskId: string
    # UserData: string
    # DisableApiTermination: bool
    # InstanceInitiatedShutdownBehavior: string
    # RootDeviceName: string
    # BlockDeviceMapping: Amazon::EC2::Model::InstanceBlockDeviceMapping
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => { FieldValue => undef, FieldType => "string"},
            InstanceType => { FieldValue => undef, FieldType => "string"},
            KernelId => { FieldValue => undef, FieldType => "string"},
            RamdiskId => { FieldValue => undef, FieldType => "string"},
            UserData => { FieldValue => undef, FieldType => "string"},
            DisableApiTermination => { FieldValue => undef, FieldType => "bool"},
            InstanceInitiatedShutdownBehavior => { FieldValue => undef, FieldType => "string"},
            RootDeviceName => { FieldValue => undef, FieldType => "string"},
            BlockDeviceMapping => {FieldValue => [], FieldType => ["Amazon::EC2::Model::InstanceBlockDeviceMapping"]},
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


    sub getInstanceType {
        return shift->{_fields}->{InstanceType}->{FieldValue};
    }


    sub setInstanceType {
        my ($self, $value) = @_;

        $self->{_fields}->{InstanceType}->{FieldValue} = $value;
        return $self;
    }


    sub withInstanceType {
        my ($self, $value) = @_;
        $self->setInstanceType($value);
        return $self;
    }


    sub isSetInstanceType {
        return defined (shift->{_fields}->{InstanceType}->{FieldValue});
    }


    sub getKernelId {
        return shift->{_fields}->{KernelId}->{FieldValue};
    }


    sub setKernelId {
        my ($self, $value) = @_;

        $self->{_fields}->{KernelId}->{FieldValue} = $value;
        return $self;
    }


    sub withKernelId {
        my ($self, $value) = @_;
        $self->setKernelId($value);
        return $self;
    }


    sub isSetKernelId {
        return defined (shift->{_fields}->{KernelId}->{FieldValue});
    }


    sub getRamdiskId {
        return shift->{_fields}->{RamdiskId}->{FieldValue};
    }


    sub setRamdiskId {
        my ($self, $value) = @_;

        $self->{_fields}->{RamdiskId}->{FieldValue} = $value;
        return $self;
    }


    sub withRamdiskId {
        my ($self, $value) = @_;
        $self->setRamdiskId($value);
        return $self;
    }


    sub isSetRamdiskId {
        return defined (shift->{_fields}->{RamdiskId}->{FieldValue});
    }


    sub getUserData {
        return shift->{_fields}->{UserData}->{FieldValue};
    }


    sub setUserData {
        my ($self, $value) = @_;

        $self->{_fields}->{UserData}->{FieldValue} = $value;
        return $self;
    }


    sub withUserData {
        my ($self, $value) = @_;
        $self->setUserData($value);
        return $self;
    }


    sub isSetUserData {
        return defined (shift->{_fields}->{UserData}->{FieldValue});
    }


    sub getDisableApiTermination {
        return shift->{_fields}->{DisableApiTermination}->{FieldValue};
    }


    sub setDisableApiTermination {
        my ($self, $value) = @_;

        $self->{_fields}->{DisableApiTermination}->{FieldValue} = $value;
        return $self;
    }


    sub withDisableApiTermination {
        my ($self, $value) = @_;
        $self->setDisableApiTermination($value);
        return $self;
    }


    sub isSetDisableApiTermination {
        return defined (shift->{_fields}->{DisableApiTermination}->{FieldValue});
    }


    sub getInstanceInitiatedShutdownBehavior {
        return shift->{_fields}->{InstanceInitiatedShutdownBehavior}->{FieldValue};
    }


    sub setInstanceInitiatedShutdownBehavior {
        my ($self, $value) = @_;

        $self->{_fields}->{InstanceInitiatedShutdownBehavior}->{FieldValue} = $value;
        return $self;
    }


    sub withInstanceInitiatedShutdownBehavior {
        my ($self, $value) = @_;
        $self->setInstanceInitiatedShutdownBehavior($value);
        return $self;
    }


    sub isSetInstanceInitiatedShutdownBehavior {
        return defined (shift->{_fields}->{InstanceInitiatedShutdownBehavior}->{FieldValue});
    }


    sub getRootDeviceName {
        return shift->{_fields}->{RootDeviceName}->{FieldValue};
    }


    sub setRootDeviceName {
        my ($self, $value) = @_;

        $self->{_fields}->{RootDeviceName}->{FieldValue} = $value;
        return $self;
    }


    sub withRootDeviceName {
        my ($self, $value) = @_;
        $self->setRootDeviceName($value);
        return $self;
    }


    sub isSetRootDeviceName {
        return defined (shift->{_fields}->{RootDeviceName}->{FieldValue});
    }

    sub getBlockDeviceMapping {
        return shift->{_fields}->{BlockDeviceMapping}->{FieldValue};
    }

    sub setBlockDeviceMapping {
        my $self = shift;
        foreach my $blockDeviceMapping (@_) {
            if (not $self->_isArrayRef($blockDeviceMapping)) {
                $blockDeviceMapping =  [$blockDeviceMapping];    
            }
            $self->{_fields}->{BlockDeviceMapping}->{FieldValue} = $blockDeviceMapping;
        }
    }


    sub withBlockDeviceMapping {
        my ($self, $blockDeviceMappingArgs) = @_;
        foreach my $blockDeviceMapping (@$blockDeviceMappingArgs) {
            $self->{_fields}->{BlockDeviceMapping}->{FieldValue} = $blockDeviceMapping;
        }
        return $self;
    }   


    sub isSetBlockDeviceMapping {
        return  scalar (@{shift->{_fields}->{BlockDeviceMapping}->{FieldValue}}) > 0;
    }





1;