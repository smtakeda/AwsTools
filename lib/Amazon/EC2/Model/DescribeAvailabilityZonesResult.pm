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


package Amazon::EC2::Model::DescribeAvailabilityZonesResult;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DescribeAvailabilityZonesResult
    # 
    # Properties:
    #
    # 
    # AvailabilityZone: Amazon::EC2::Model::AvailabilityZone
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            AvailabilityZone => {FieldValue => [], FieldType => ["Amazon::EC2::Model::AvailabilityZone"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

        sub getAvailabilityZone {
        return shift->{_fields}->{AvailabilityZone}->{FieldValue};
    }

    sub setAvailabilityZone {
        my $self = shift;
        foreach my $availabilityZone (@_) {
            if (not $self->_isArrayRef($availabilityZone)) {
                $availabilityZone =  [$availabilityZone];    
            }
            $self->{_fields}->{AvailabilityZone}->{FieldValue} = $availabilityZone;
        }
    }


    sub withAvailabilityZone {
        my ($self, $availabilityZoneArgs) = @_;
        foreach my $availabilityZone (@$availabilityZoneArgs) {
            $self->{_fields}->{AvailabilityZone}->{FieldValue} = $availabilityZone;
        }
        return $self;
    }   


    sub isSetAvailabilityZone {
        return  scalar (@{shift->{_fields}->{AvailabilityZone}->{FieldValue}}) > 0;
    }





1;