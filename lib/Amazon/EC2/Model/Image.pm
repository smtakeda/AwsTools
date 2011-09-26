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


package Amazon::EC2::Model::Image;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::Image
    # 
    # Properties:
    #
    # 
    # ImageId: string
    # ImageLocation: string
    # ImageState: string
    # OwnerId: string
    # Visibility: string
    # ProductCode: string
    # Architecture: string
    # ImageType: string
    # KernelId: string
    # RamdiskId: string
    # Platform: string
    # StateReason: Amazon::EC2::Model::StateReason
    # ImageOwnerAlias: string
    # Name: string
    # Description: string
    # RootDeviceType: string
    # RootDeviceName: string
    # BlockDeviceMapping: Amazon::EC2::Model::BlockDeviceMapping
    # VirtualizationType: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ImageId => { FieldValue => undef, FieldType => "string"},
            ImageLocation => { FieldValue => undef, FieldType => "string"},
            ImageState => { FieldValue => undef, FieldType => "string"},
            OwnerId => { FieldValue => undef, FieldType => "string"},
            Visibility => { FieldValue => undef, FieldType => "string"},
            ProductCode => {FieldValue => [], FieldType => ["string"]},
            Architecture => { FieldValue => undef, FieldType => "string"},
            ImageType => { FieldValue => undef, FieldType => "string"},
            KernelId => { FieldValue => undef, FieldType => "string"},
            RamdiskId => { FieldValue => undef, FieldType => "string"},
            Platform => { FieldValue => undef, FieldType => "string"},
            StateReason => {FieldValue => undef, FieldType => "Amazon::EC2::Model::StateReason"},
            ImageOwnerAlias => { FieldValue => undef, FieldType => "string"},
            Name => { FieldValue => undef, FieldType => "string"},
            Description => { FieldValue => undef, FieldType => "string"},
            RootDeviceType => { FieldValue => undef, FieldType => "string"},
            RootDeviceName => { FieldValue => undef, FieldType => "string"},
            BlockDeviceMapping => {FieldValue => [], FieldType => ["Amazon::EC2::Model::BlockDeviceMapping"]},
            VirtualizationType => { FieldValue => undef, FieldType => "string"},
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


    sub getImageState {
        return shift->{_fields}->{ImageState}->{FieldValue};
    }


    sub setImageState {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageState}->{FieldValue} = $value;
        return $self;
    }


    sub withImageState {
        my ($self, $value) = @_;
        $self->setImageState($value);
        return $self;
    }


    sub isSetImageState {
        return defined (shift->{_fields}->{ImageState}->{FieldValue});
    }


    sub getOwnerId {
        return shift->{_fields}->{OwnerId}->{FieldValue};
    }


    sub setOwnerId {
        my ($self, $value) = @_;

        $self->{_fields}->{OwnerId}->{FieldValue} = $value;
        return $self;
    }


    sub withOwnerId {
        my ($self, $value) = @_;
        $self->setOwnerId($value);
        return $self;
    }


    sub isSetOwnerId {
        return defined (shift->{_fields}->{OwnerId}->{FieldValue});
    }


    sub getVisibility {
        return shift->{_fields}->{Visibility}->{FieldValue};
    }


    sub setVisibility {
        my ($self, $value) = @_;

        $self->{_fields}->{Visibility}->{FieldValue} = $value;
        return $self;
    }


    sub withVisibility {
        my ($self, $value) = @_;
        $self->setVisibility($value);
        return $self;
    }


    sub isSetVisibility {
        return defined (shift->{_fields}->{Visibility}->{FieldValue});
    }

    sub getProductCode {
        return shift->{_fields}->{ProductCode}->{FieldValue};
    }


    sub setProductCode    {
        my ($self, $value) = @_;
        $self->{_fields}->{ProductCode}->{FieldValue} = $value;
        return $self;
    }



    sub withProductCode {
        my $self = shift;
            my $list = $self->{_fields}->{ProductCode}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetProductCode {
        return scalar (@{shift->{_fields}->{ProductCode}->{FieldValue}}) > 0;
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


    sub getImageType {
        return shift->{_fields}->{ImageType}->{FieldValue};
    }


    sub setImageType {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageType}->{FieldValue} = $value;
        return $self;
    }


    sub withImageType {
        my ($self, $value) = @_;
        $self->setImageType($value);
        return $self;
    }


    sub isSetImageType {
        return defined (shift->{_fields}->{ImageType}->{FieldValue});
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


    sub getPlatform {
        return shift->{_fields}->{Platform}->{FieldValue};
    }


    sub setPlatform {
        my ($self, $value) = @_;

        $self->{_fields}->{Platform}->{FieldValue} = $value;
        return $self;
    }


    sub withPlatform {
        my ($self, $value) = @_;
        $self->setPlatform($value);
        return $self;
    }


    sub isSetPlatform {
        return defined (shift->{_fields}->{Platform}->{FieldValue});
    }

    sub getStateReason {
        return shift->{_fields}->{StateReason}->{FieldValue};
    }


    sub setStateReason {
        my ($self, $value) = @_;
        $self->{_fields}->{StateReason}->{FieldValue} = $value;
    }


    sub withStateReason {
        my ($self, $value) = @_;
        $self->setStateReason($value);
        return $self;
    }


    sub isSetStateReason {
        return defined (shift->{_fields}->{StateReason}->{FieldValue});

    }


    sub getImageOwnerAlias {
        return shift->{_fields}->{ImageOwnerAlias}->{FieldValue};
    }


    sub setImageOwnerAlias {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageOwnerAlias}->{FieldValue} = $value;
        return $self;
    }


    sub withImageOwnerAlias {
        my ($self, $value) = @_;
        $self->setImageOwnerAlias($value);
        return $self;
    }


    sub isSetImageOwnerAlias {
        return defined (shift->{_fields}->{ImageOwnerAlias}->{FieldValue});
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


    sub getRootDeviceType {
        return shift->{_fields}->{RootDeviceType}->{FieldValue};
    }


    sub setRootDeviceType {
        my ($self, $value) = @_;

        $self->{_fields}->{RootDeviceType}->{FieldValue} = $value;
        return $self;
    }


    sub withRootDeviceType {
        my ($self, $value) = @_;
        $self->setRootDeviceType($value);
        return $self;
    }


    sub isSetRootDeviceType {
        return defined (shift->{_fields}->{RootDeviceType}->{FieldValue});
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


    sub getVirtualizationType {
        return shift->{_fields}->{VirtualizationType}->{FieldValue};
    }


    sub setVirtualizationType {
        my ($self, $value) = @_;

        $self->{_fields}->{VirtualizationType}->{FieldValue} = $value;
        return $self;
    }


    sub withVirtualizationType {
        my ($self, $value) = @_;
        $self->setVirtualizationType($value);
        return $self;
    }


    sub isSetVirtualizationType {
        return defined (shift->{_fields}->{VirtualizationType}->{FieldValue});
    }





1;