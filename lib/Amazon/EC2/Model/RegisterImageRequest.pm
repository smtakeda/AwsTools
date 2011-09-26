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


package Amazon::EC2::Model::RegisterImageRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::RegisterImageRequest
    # 
    # Properties:
    #
    # 
    # ImageLocation: string
    # Name: string
    # Description: string
    # Architecture: string
    # KernelId: string
    # RamdiskId: string
    # RootDeviceName: string
    # BlockDeviceMapping: Amazon::EC2::Model::BlockDeviceMapping
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ImageLocation => { FieldValue => undef, FieldType => "string"},
            Name => { FieldValue => undef, FieldType => "string"},
            Description => { FieldValue => undef, FieldType => "string"},
            Architecture => { FieldValue => undef, FieldType => "string"},
            KernelId => { FieldValue => undef, FieldType => "string"},
            RamdiskId => { FieldValue => undef, FieldType => "string"},
            RootDeviceName => { FieldValue => undef, FieldType => "string"},
            BlockDeviceMapping => {FieldValue => [], FieldType => ["Amazon::EC2::Model::BlockDeviceMapping"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getImageLocation {
        return shift->{_fields}->{ImageLocation}->{FieldValue};
    }


    sub setImageLocation {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageLocation}->{FieldValue} = $value;
        return $self;
    }


    sub withImageLocation {
        my ($self, $value) = @_;
        $self->setImageLocation($value);
        return $self;
    }


    sub isSetImageLocation {
        return defined (shift->{_fields}->{ImageLocation}->{FieldValue});
    }


    sub getName {
        return shift->{_fields}->{Name}->{FieldValue};
    }


    sub setName {
        my ($self, $value) = @_;

        $self->{_fields}->{Name}->{FieldValue} = $value;
        return $self;
    }


    sub withName {
        my ($self, $value) = @_;
        $self->setName($value);
        return $self;
    }


    sub isSetName {
        return defined (shift->{_fields}->{Name}->{FieldValue});
    }


    sub getDescription {
        return shift->{_fields}->{Description}->{FieldValue};
    }


    sub setDescription {
        my ($self, $value) = @_;

        $self->{_fields}->{Description}->{FieldValue} = $value;
        return $self;
    }


    sub withDescription {
        my ($self, $value) = @_;
        $self->setDescription($value);
        return $self;
    }


    sub isSetDescription {
        return defined (shift->{_fields}->{Description}->{FieldValue});
    }


    sub getArchitecture {
        return shift->{_fields}->{Architecture}->{FieldValue};
    }


    sub setArchitecture {
        my ($self, $value) = @_;

        $self->{_fields}->{Architecture}->{FieldValue} = $value;
        return $self;
    }


    sub withArchitecture {
        my ($self, $value) = @_;
        $self->setArchitecture($value);
        return $self;
    }


    sub isSetArchitecture {
        return defined (shift->{_fields}->{Architecture}->{FieldValue});
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