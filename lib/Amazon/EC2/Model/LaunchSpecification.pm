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


package Amazon::EC2::Model::LaunchSpecification;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::LaunchSpecification
    # 
    # Properties:
    #
    # 
    # ImageId: string
    # KeyName: string
    # SecurityGroup: string
    # UserData: string
    # AddressingType: string
    # InstanceType: string
    # Placement: Amazon::EC2::Model::Placement
    # KernelId: string
    # RamdiskId: string
    # BlockDeviceMapping: Amazon::EC2::Model::BlockDeviceMapping
    # Monitoring: Amazon::EC2::Model::MonitoringSpecification
    # SubnetId: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ImageId => { FieldValue => undef, FieldType => "string"},
            KeyName => { FieldValue => undef, FieldType => "string"},
            SecurityGroup => {FieldValue => [], FieldType => ["string"]},
            UserData => { FieldValue => undef, FieldType => "string"},
            AddressingType => { FieldValue => undef, FieldType => "string"},
            InstanceType => { FieldValue => undef, FieldType => "string"},
            Placement => {FieldValue => undef, FieldType => "Amazon::EC2::Model::Placement"},
            KernelId => { FieldValue => undef, FieldType => "string"},
            RamdiskId => { FieldValue => undef, FieldType => "string"},
            BlockDeviceMapping => {FieldValue => [], FieldType => ["Amazon::EC2::Model::BlockDeviceMapping"]},
            Monitoring => {FieldValue => undef, FieldType => "Amazon::EC2::Model::MonitoringSpecification"},
            SubnetId => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getImageId {
        return shift->{_fields}->{ImageId}->{FieldValue};
    }


    sub setImageId {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageId}->{FieldValue} = $value;
        return $self;
    }


    sub withImageId {
        my ($self, $value) = @_;
        $self->setImageId($value);
        return $self;
    }


    sub isSetImageId {
        return defined (shift->{_fields}->{ImageId}->{FieldValue});
    }


    sub getKeyName {
        return shift->{_fields}->{KeyName}->{FieldValue};
    }


    sub setKeyName {
        my ($self, $value) = @_;

        $self->{_fields}->{KeyName}->{FieldValue} = $value;
        return $self;
    }


    sub withKeyName {
        my ($self, $value) = @_;
        $self->setKeyName($value);
        return $self;
    }


    sub isSetKeyName {
        return defined (shift->{_fields}->{KeyName}->{FieldValue});
    }

    sub getSecurityGroup {
        return shift->{_fields}->{SecurityGroup}->{FieldValue};
    }


    sub setSecurityGroup    {
        my ($self, $value) = @_;
        $self->{_fields}->{SecurityGroup}->{FieldValue} = $value;
        return $self;
    }



    sub withSecurityGroup {
        my $self = shift;
            my $list = $self->{_fields}->{SecurityGroup}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetSecurityGroup {
        return scalar (@{shift->{_fields}->{SecurityGroup}->{FieldValue}}) > 0;
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


    sub getAddressingType {
        return shift->{_fields}->{AddressingType}->{FieldValue};
    }


    sub setAddressingType {
        my ($self, $value) = @_;

        $self->{_fields}->{AddressingType}->{FieldValue} = $value;
        return $self;
    }


    sub withAddressingType {
        my ($self, $value) = @_;
        $self->setAddressingType($value);
        return $self;
    }


    sub isSetAddressingType {
        return defined (shift->{_fields}->{AddressingType}->{FieldValue});
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

    sub getPlacement {
        return shift->{_fields}->{Placement}->{FieldValue};
    }


    sub setPlacement {
        my ($self, $value) = @_;
        $self->{_fields}->{Placement}->{FieldValue} = $value;
    }


    sub withPlacement {
        my ($self, $value) = @_;
        $self->setPlacement($value);
        return $self;
    }


    sub isSetPlacement {
        return defined (shift->{_fields}->{Placement}->{FieldValue});

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

    sub getMonitoring {
        return shift->{_fields}->{Monitoring}->{FieldValue};
    }


    sub setMonitoring {
        my ($self, $value) = @_;
        $self->{_fields}->{Monitoring}->{FieldValue} = $value;
    }


    sub withMonitoring {
        my ($self, $value) = @_;
        $self->setMonitoring($value);
        return $self;
    }


    sub isSetMonitoring {
        return defined (shift->{_fields}->{Monitoring}->{FieldValue});

    }


    sub getSubnetId {
        return shift->{_fields}->{SubnetId}->{FieldValue};
    }


    sub setSubnetId {
        my ($self, $value) = @_;

        $self->{_fields}->{SubnetId}->{FieldValue} = $value;
        return $self;
    }


    sub withSubnetId {
        my ($self, $value) = @_;
        $self->setSubnetId($value);
        return $self;
    }


    sub isSetSubnetId {
        return defined (shift->{_fields}->{SubnetId}->{FieldValue});
    }





1;