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


package Amazon::EC2::Model::CreateCustomerGatewayRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::CreateCustomerGatewayRequest
    # 
    # Properties:
    #
    # 
    # Type: string
    # IpAddress: string
    # BgpAsn: int
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            Type => { FieldValue => undef, FieldType => "string"},
            IpAddress => { FieldValue => undef, FieldType => "string"},
            BgpAsn => { FieldValue => undef, FieldType => "int"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
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


    sub getIpAddress {
        return shift->{_fields}->{IpAddress}->{FieldValue};
    }


    sub setIpAddress {
        my ($self, $value) = @_;

        $self->{_fields}->{IpAddress}->{FieldValue} = $value;
        return $self;
    }


    sub withIpAddress {
        my ($self, $value) = @_;
        $self->setIpAddress($value);
        return $self;
    }


    sub isSetIpAddress {
        return defined (shift->{_fields}->{IpAddress}->{FieldValue});
    }


    sub getBgpAsn {
        return shift->{_fields}->{BgpAsn}->{FieldValue};
    }


    sub setBgpAsn {
        my ($self, $value) = @_;

        $self->{_fields}->{BgpAsn}->{FieldValue} = $value;
        return $self;
    }


    sub withBgpAsn {
        my ($self, $value) = @_;
        $self->setBgpAsn($value);
        return $self;
    }


    sub isSetBgpAsn {
        return defined (shift->{_fields}->{BgpAsn}->{FieldValue});
    }





1;