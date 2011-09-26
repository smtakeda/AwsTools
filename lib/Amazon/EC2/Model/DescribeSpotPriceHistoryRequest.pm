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


package Amazon::EC2::Model::DescribeSpotPriceHistoryRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DescribeSpotPriceHistoryRequest
    # 
    # Properties:
    #
    # 
    # StartTime: string
    # EndTime: string
    # InstanceType: string
    # ProductDescription: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            StartTime => { FieldValue => undef, FieldType => "string"},
            EndTime => { FieldValue => undef, FieldType => "string"},
            InstanceType => {FieldValue => [], FieldType => ["string"]},
            ProductDescription => {FieldValue => [], FieldType => ["string"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
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


    sub getEndTime {
        return shift->{_fields}->{EndTime}->{FieldValue};
    }


    sub setEndTime {
        my ($self, $value) = @_;

        $self->{_fields}->{EndTime}->{FieldValue} = $value;
        return $self;
    }


    sub withEndTime {
        my ($self, $value) = @_;
        $self->setEndTime($value);
        return $self;
    }


    sub isSetEndTime {
        return defined (shift->{_fields}->{EndTime}->{FieldValue});
    }

    sub getInstanceType {
        return shift->{_fields}->{InstanceType}->{FieldValue};
    }


    sub setInstanceType    {
        my ($self, $value) = @_;
        $self->{_fields}->{InstanceType}->{FieldValue} = $value;
        return $self;
    }



    sub withInstanceType {
        my $self = shift;
            my $list = $self->{_fields}->{InstanceType}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetInstanceType {
        return scalar (@{shift->{_fields}->{InstanceType}->{FieldValue}}) > 0;
    }

    sub getProductDescription {
        return shift->{_fields}->{ProductDescription}->{FieldValue};
    }


    sub setProductDescription    {
        my ($self, $value) = @_;
        $self->{_fields}->{ProductDescription}->{FieldValue} = $value;
        return $self;
    }



    sub withProductDescription {
        my $self = shift;
            my $list = $self->{_fields}->{ProductDescription}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetProductDescription {
        return scalar (@{shift->{_fields}->{ProductDescription}->{FieldValue}}) > 0;
    }





1;