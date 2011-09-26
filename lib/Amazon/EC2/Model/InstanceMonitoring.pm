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


package Amazon::EC2::Model::InstanceMonitoring;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::InstanceMonitoring
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # Monitoring: Amazon::EC2::Model::Monitoring
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => { FieldValue => undef, FieldType => "string"},
            Monitoring => {FieldValue => undef, FieldType => "Amazon::EC2::Model::Monitoring"},
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

    sub getMonitoring {
        return shift->{_fields}->{Monitoring}->{FieldValue};
    }


    sub setMonitoring {
        my ($self, $value) = @_;
        $self->{_fields}->{Monitoring}->{FieldValue} = $value;
    }


    sub withMonitoring {
        my ($self, $value) = @_;
        $self->setMonitoring($value);
        return $self;
    }


    sub isSetMonitoring {
        return defined (shift->{_fields}->{Monitoring}->{FieldValue});

    }





1;