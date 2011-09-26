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


package Amazon::EC2::Model::SpotPriceHistory;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::SpotPriceHistory
    # 
    # Properties:
    #
    # 
    # InstanceType: string
    # ProductDescription: string
    # SpotPrice: string
    # Timestamp: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceType => { FieldValue => undef, FieldType => "string"},
            ProductDescription => { FieldValue => undef, FieldType => "string"},
            SpotPrice => { FieldValue => undef, FieldType => "string"},
            Timestamp => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
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


    sub getTimestamp {
        return shift->{_fields}->{Timestamp}->{FieldValue};
    }


    sub setTimestamp {
        my ($self, $value) = @_;

        $self->{_fields}->{Timestamp}->{FieldValue} = $value;
        return $self;
    }


    sub withTimestamp {
        my ($self, $value) = @_;
        $self->setTimestamp($value);
        return $self;
    }


    sub isSetTimestamp {
        return defined (shift->{_fields}->{Timestamp}->{FieldValue});
    }





1;