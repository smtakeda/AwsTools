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


package Amazon::EC2::Model::ReservedInstances;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::ReservedInstances
    # 
    # Properties:
    #
    # 
    # ReservedInstancesId: string
    # InstanceType: string
    # AvailabilityZone: string
    # Duration: int
    # UsagePrice: string
    # FixedPrice: string
    # InstanceCount: int
    # ProductDescription: string
    # PurchaseState: string
    # StartTime: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ReservedInstancesId => { FieldValue => undef, FieldType => "string"},
            InstanceType => { FieldValue => undef, FieldType => "string"},
            AvailabilityZone => { FieldValue => undef, FieldType => "string"},
            Duration => { FieldValue => undef, FieldType => "int"},
            UsagePrice => { FieldValue => undef, FieldType => "string"},
            FixedPrice => { FieldValue => undef, FieldType => "string"},
            InstanceCount => { FieldValue => undef, FieldType => "int"},
            ProductDescription => { FieldValue => undef, FieldType => "string"},
            PurchaseState => { FieldValue => undef, FieldType => "string"},
            StartTime => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getReservedInstancesId {
        return shift->{_fields}->{ReservedInstancesId}->{FieldValue};
    }


    sub setReservedInstancesId {
        my ($self, $value) = @_;

        $self->{_fields}->{ReservedInstancesId}->{FieldValue} = $value;
        return $self;
    }


    sub withReservedInstancesId {
        my ($self, $value) = @_;
        $self->setReservedInstancesId($value);
        return $self;
    }


    sub isSetReservedInstancesId {
        return defined (shift->{_fields}->{ReservedInstancesId}->{FieldValue});
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


    sub getAvailabilityZone {
        return shift->{_fields}->{AvailabilityZone}->{FieldValue};
    }


    sub setAvailabilityZone {
        my ($self, $value) = @_;

        $self->{_fields}->{AvailabilityZone}->{FieldValue} = $value;
        return $self;
    }


    sub withAvailabilityZone {
        my ($self, $value) = @_;
        $self->setAvailabilityZone($value);
        return $self;
    }


    sub isSetAvailabilityZone {
        return defined (shift->{_fields}->{AvailabilityZone}->{FieldValue});
    }


    sub getDuration {
        return shift->{_fields}->{Duration}->{FieldValue};
    }


    sub setDuration {
        my ($self, $value) = @_;

        $self->{_fields}->{Duration}->{FieldValue} = $value;
        return $self;
    }


    sub withDuration {
        my ($self, $value) = @_;
        $self->setDuration($value);
        return $self;
    }


    sub isSetDuration {
        return defined (shift->{_fields}->{Duration}->{FieldValue});
    }


    sub getUsagePrice {
        return shift->{_fields}->{UsagePrice}->{FieldValue};
    }


    sub setUsagePrice {
        my ($self, $value) = @_;

        $self->{_fields}->{UsagePrice}->{FieldValue} = $value;
        return $self;
    }


    sub withUsagePrice {
        my ($self, $value) = @_;
        $self->setUsagePrice($value);
        return $self;
    }


    sub isSetUsagePrice {
        return defined (shift->{_fields}->{UsagePrice}->{FieldValue});
    }


    sub getFixedPrice {
        return shift->{_fields}->{FixedPrice}->{FieldValue};
    }


    sub setFixedPrice {
        my ($self, $value) = @_;

        $self->{_fields}->{FixedPrice}->{FieldValue} = $value;
        return $self;
    }


    sub withFixedPrice {
        my ($self, $value) = @_;
        $self->setFixedPrice($value);
        return $self;
    }


    sub isSetFixedPrice {
        return defined (shift->{_fields}->{FixedPrice}->{FieldValue});
    }


    sub getInstanceCount {
        return shift->{_fields}->{InstanceCount}->{FieldValue};
    }


    sub setInstanceCount {
        my ($self, $value) = @_;

        $self->{_fields}->{InstanceCount}->{FieldValue} = $value;
        return $self;
    }


    sub withInstanceCount {
        my ($self, $value) = @_;
        $self->setInstanceCount($value);
        return $self;
    }


    sub isSetInstanceCount {
        return defined (shift->{_fields}->{InstanceCount}->{FieldValue});
    }


    sub getProductDescription {
        return shift->{_fields}->{ProductDescription}->{FieldValue};
    }


    sub setProductDescription {
        my ($self, $value) = @_;

        $self->{_fields}->{ProductDescription}->{FieldValue} = $value;
        return $self;
    }


    sub withProductDescription {
        my ($self, $value) = @_;
        $self->setProductDescription($value);
        return $self;
    }


    sub isSetProductDescription {
        return defined (shift->{_fields}->{ProductDescription}->{FieldValue});
    }


    sub getPurchaseState {
        return shift->{_fields}->{PurchaseState}->{FieldValue};
    }


    sub setPurchaseState {
        my ($self, $value) = @_;

        $self->{_fields}->{PurchaseState}->{FieldValue} = $value;
        return $self;
    }


    sub withPurchaseState {
        my ($self, $value) = @_;
        $self->setPurchaseState($value);
        return $self;
    }


    sub isSetPurchaseState {
        return defined (shift->{_fields}->{PurchaseState}->{FieldValue});
    }


    sub getStartTime {
        return shift->{_fields}->{StartTime}->{FieldValue};
    }


    sub setStartTime {
        my ($self, $value) = @_;

        $self->{_fields}->{StartTime}->{FieldValue} = $value;
        return $self;
    }


    sub withStartTime {
        my ($self, $value) = @_;
        $self->setStartTime($value);
        return $self;
    }


    sub isSetStartTime {
        return defined (shift->{_fields}->{StartTime}->{FieldValue});
    }





1;