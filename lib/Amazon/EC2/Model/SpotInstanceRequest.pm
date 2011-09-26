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


package Amazon::EC2::Model::SpotInstanceRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::SpotInstanceRequest
    # 
    # Properties:
    #
    # 
    # SpotInstanceRequestId: string
    # SpotPrice: string
    # Type: string
    # State: string
    # Fault: Amazon::EC2::Model::SpotInstanceStateFault
    # ValidFrom: string
    # ValidUntil: string
    # LaunchGroup: string
    # AvailabilityZoneGroup: string
    # LaunchSpecification: Amazon::EC2::Model::LaunchSpecification
    # InstanceId: string
    # CreateTime: string
    # ProductDescription: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            SpotInstanceRequestId => { FieldValue => undef, FieldType => "string"},
            SpotPrice => { FieldValue => undef, FieldType => "string"},
            Type => { FieldValue => undef, FieldType => "string"},
            State => { FieldValue => undef, FieldType => "string"},
            Fault => {FieldValue => undef, FieldType => "Amazon::EC2::Model::SpotInstanceStateFault"},
            ValidFrom => { FieldValue => undef, FieldType => "string"},
            ValidUntil => { FieldValue => undef, FieldType => "string"},
            LaunchGroup => { FieldValue => undef, FieldType => "string"},
            AvailabilityZoneGroup => { FieldValue => undef, FieldType => "string"},
            LaunchSpecification => {FieldValue => undef, FieldType => "Amazon::EC2::Model::LaunchSpecification"},
            InstanceId => { FieldValue => undef, FieldType => "string"},
            CreateTime => { FieldValue => undef, FieldType => "string"},
            ProductDescription => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getSpotInstanceRequestId {
        return shift->{_fields}->{SpotInstanceRequestId}->{FieldValue};
    }


    sub setSpotInstanceRequestId {
        my ($self, $value) = @_;

        $self->{_fields}->{SpotInstanceRequestId}->{FieldValue} = $value;
        return $self;
    }


    sub withSpotInstanceRequestId {
        my ($self, $value) = @_;
        $self->setSpotInstanceRequestId($value);
        return $self;
    }


    sub isSetSpotInstanceRequestId {
        return defined (shift->{_fields}->{SpotInstanceRequestId}->{FieldValue});
    }


    sub getSpotPrice {
        return shift->{_fields}->{SpotPrice}->{FieldValue};
    }


    sub setSpotPrice {
        my ($self, $value) = @_;

        $self->{_fields}->{SpotPrice}->{FieldValue} = $value;
        return $self;
    }


    sub withSpotPrice {
        my ($self, $value) = @_;
        $self->setSpotPrice($value);
        return $self;
    }


    sub isSetSpotPrice {
        return defined (shift->{_fields}->{SpotPrice}->{FieldValue});
    }


    sub getType {
        return shift->{_fields}->{Type}->{FieldValue};
    }


    sub setType {
        my ($self, $value) = @_;

        $self->{_fields}->{Type}->{FieldValue} = $value;
        return $self;
    }


    sub withType {
        my ($self, $value) = @_;
        $self->setType($value);
        return $self;
    }


    sub isSetType {
        return defined (shift->{_fields}->{Type}->{FieldValue});
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

    sub getFault {
        return shift->{_fields}->{Fault}->{FieldValue};
    }


    sub setFault {
        my ($self, $value) = @_;
        $self->{_fields}->{Fault}->{FieldValue} = $value;
    }


    sub withFault {
        my ($self, $value) = @_;
        $self->setFault($value);
        return $self;
    }


    sub isSetFault {
        return defined (shift->{_fields}->{Fault}->{FieldValue});

    }


    sub getValidFrom {
        return shift->{_fields}->{ValidFrom}->{FieldValue};
    }


    sub setValidFrom {
        my ($self, $value) = @_;

        $self->{_fields}->{ValidFrom}->{FieldValue} = $value;
        return $self;
    }


    sub withValidFrom {
        my ($self, $value) = @_;
        $self->setValidFrom($value);
        return $self;
    }


    sub isSetValidFrom {
        return defined (shift->{_fields}->{ValidFrom}->{FieldValue});
    }


    sub getValidUntil {
        return shift->{_fields}->{ValidUntil}->{FieldValue};
    }


    sub setValidUntil {
        my ($self, $value) = @_;

        $self->{_fields}->{ValidUntil}->{FieldValue} = $value;
        return $self;
    }


    sub withValidUntil {
        my ($self, $value) = @_;
        $self->setValidUntil($value);
        return $self;
    }


    sub isSetValidUntil {
        return defined (shift->{_fields}->{ValidUntil}->{FieldValue});
    }


    sub getLaunchGroup {
        return shift->{_fields}->{LaunchGroup}->{FieldValue};
    }


    sub setLaunchGroup {
        my ($self, $value) = @_;

        $self->{_fields}->{LaunchGroup}->{FieldValue} = $value;
        return $self;
    }


    sub withLaunchGroup {
        my ($self, $value) = @_;
        $self->setLaunchGroup($value);
        return $self;
    }


    sub isSetLaunchGroup {
        return defined (shift->{_fields}->{LaunchGroup}->{FieldValue});
    }


    sub getAvailabilityZoneGroup {
        return shift->{_fields}->{AvailabilityZoneGroup}->{FieldValue};
    }


    sub setAvailabilityZoneGroup {
        my ($self, $value) = @_;

        $self->{_fields}->{AvailabilityZoneGroup}->{FieldValue} = $value;
        return $self;
    }


    sub withAvailabilityZoneGroup {
        my ($self, $value) = @_;
        $self->setAvailabilityZoneGroup($value);
        return $self;
    }


    sub isSetAvailabilityZoneGroup {
        return defined (shift->{_fields}->{AvailabilityZoneGroup}->{FieldValue});
    }

    sub getLaunchSpecification {
        return shift->{_fields}->{LaunchSpecification}->{FieldValue};
    }


    sub setLaunchSpecification {
        my ($self, $value) = @_;
        $self->{_fields}->{LaunchSpecification}->{FieldValue} = $value;
    }


    sub withLaunchSpecification {
        my ($self, $value) = @_;
        $self->setLaunchSpecification($value);
        return $self;
    }


    sub isSetLaunchSpecification {
        return defined (shift->{_fields}->{LaunchSpecification}->{FieldValue});

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


    sub getCreateTime {
        return shift->{_fields}->{CreateTime}->{FieldValue};
    }


    sub setCreateTime {
        my ($self, $value) = @_;

        $self->{_fields}->{CreateTime}->{FieldValue} = $value;
        return $self;
    }


    sub withCreateTime {
        my ($self, $value) = @_;
        $self->setCreateTime($value);
        return $self;
    }


    sub isSetCreateTime {
        return defined (shift->{_fields}->{CreateTime}->{FieldValue});
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





1;