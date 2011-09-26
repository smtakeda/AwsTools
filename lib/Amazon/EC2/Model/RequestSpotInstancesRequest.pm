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


package Amazon::EC2::Model::RequestSpotInstancesRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::RequestSpotInstancesRequest
    # 
    # Properties:
    #
    # 
    # SpotPrice: string
    # InstanceCount: int
    # Type: string
    # ValidFrom: string
    # ValidUntil: string
    # LaunchGroup: string
    # AvailabilityZoneGroup: string
    # LaunchSpecification: Amazon::EC2::Model::LaunchSpecification
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            SpotPrice => { FieldValue => undef, FieldType => "string"},
            InstanceCount => { FieldValue => undef, FieldType => "int"},
            Type => { FieldValue => undef, FieldType => "string"},
            ValidFrom => { FieldValue => undef, FieldType => "string"},
            ValidUntil => { FieldValue => undef, FieldType => "string"},
            LaunchGroup => { FieldValue => undef, FieldType => "string"},
            AvailabilityZoneGroup => { FieldValue => undef, FieldType => "string"},
            LaunchSpecification => {FieldValue => undef, FieldType => "Amazon::EC2::Model::LaunchSpecification"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
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





1;