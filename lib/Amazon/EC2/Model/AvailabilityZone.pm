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


package Amazon::EC2::Model::AvailabilityZone;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::AvailabilityZone
    # 
    # Properties:
    #
    # 
    # ZoneName: string
    # ZoneState: string
    # RegionName: string
    # Message: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ZoneName => { FieldValue => undef, FieldType => "string"},
            ZoneState => { FieldValue => undef, FieldType => "string"},
            RegionName => { FieldValue => undef, FieldType => "string"},
            Message => {FieldValue => [], FieldType => ["string"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getZoneName {
        return shift->{_fields}->{ZoneName}->{FieldValue};
    }


    sub setZoneName {
        my ($self, $value) = @_;

        $self->{_fields}->{ZoneName}->{FieldValue} = $value;
        return $self;
    }


    sub withZoneName {
        my ($self, $value) = @_;
        $self->setZoneName($value);
        return $self;
    }


    sub isSetZoneName {
        return defined (shift->{_fields}->{ZoneName}->{FieldValue});
    }


    sub getZoneState {
        return shift->{_fields}->{ZoneState}->{FieldValue};
    }


    sub setZoneState {
        my ($self, $value) = @_;

        $self->{_fields}->{ZoneState}->{FieldValue} = $value;
        return $self;
    }


    sub withZoneState {
        my ($self, $value) = @_;
        $self->setZoneState($value);
        return $self;
    }


    sub isSetZoneState {
        return defined (shift->{_fields}->{ZoneState}->{FieldValue});
    }


    sub getRegionName {
        return shift->{_fields}->{RegionName}->{FieldValue};
    }


    sub setRegionName {
        my ($self, $value) = @_;

        $self->{_fields}->{RegionName}->{FieldValue} = $value;
        return $self;
    }


    sub withRegionName {
        my ($self, $value) = @_;
        $self->setRegionName($value);
        return $self;
    }


    sub isSetRegionName {
        return defined (shift->{_fields}->{RegionName}->{FieldValue});
    }

    sub getMessage {
        return shift->{_fields}->{Message}->{FieldValue};
    }


    sub setMessage    {
        my ($self, $value) = @_;
        $self->{_fields}->{Message}->{FieldValue} = $value;
        return $self;
    }



    sub withMessage {
        my $self = shift;
            my $list = $self->{_fields}->{Message}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetMessage {
        return scalar (@{shift->{_fields}->{Message}->{FieldValue}}) > 0;
    }





1;