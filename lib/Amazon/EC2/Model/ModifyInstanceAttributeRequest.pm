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


package Amazon::EC2::Model::ModifyInstanceAttributeRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::ModifyInstanceAttributeRequest
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # Attribute: string
    # Value: string
    # BlockDeviceMapping: Amazon::EC2::Model::InstanceBlockDeviceMappingParameter
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => { FieldValue => undef, FieldType => "string"},
            Attribute => { FieldValue => undef, FieldType => "string"},
            Value => { FieldValue => undef, FieldType => "string"},
            BlockDeviceMapping => {FieldValue => [], FieldType => ["Amazon::EC2::Model::InstanceBlockDeviceMappingParameter"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
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


    sub getAttribute {
        return shift->{_fields}->{Attribute}->{FieldValue};
    }


    sub setAttribute {
        my ($self, $value) = @_;

        $self->{_fields}->{Attribute}->{FieldValue} = $value;
        return $self;
    }


    sub withAttribute {
        my ($self, $value) = @_;
        $self->setAttribute($value);
        return $self;
    }


    sub isSetAttribute {
        return defined (shift->{_fields}->{Attribute}->{FieldValue});
    }


    sub getValue {
        return shift->{_fields}->{Value}->{FieldValue};
    }


    sub setValue {
        my ($self, $value) = @_;

        $self->{_fields}->{Value}->{FieldValue} = $value;
        return $self;
    }


    sub withValue {
        my ($self, $value) = @_;
        $self->setValue($value);
        return $self;
    }


    sub isSetValue {
        return defined (shift->{_fields}->{Value}->{FieldValue});
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