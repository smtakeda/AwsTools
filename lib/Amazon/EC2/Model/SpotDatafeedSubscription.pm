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


package Amazon::EC2::Model::SpotDatafeedSubscription;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::SpotDatafeedSubscription
    # 
    # Properties:
    #
    # 
    # OwnerId: string
    # Bucket: string
    # Prefix: string
    # State: string
    # Fault: Amazon::EC2::Model::SpotInstanceStateFault
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            OwnerId => { FieldValue => undef, FieldType => "string"},
            Bucket => { FieldValue => undef, FieldType => "string"},
            Prefix => { FieldValue => undef, FieldType => "string"},
            State => { FieldValue => undef, FieldType => "string"},
            Fault => {FieldValue => undef, FieldType => "Amazon::EC2::Model::SpotInstanceStateFault"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getOwnerId {
        return shift->{_fields}->{OwnerId}->{FieldValue};
    }


    sub setOwnerId {
        my ($self, $value) = @_;

        $self->{_fields}->{OwnerId}->{FieldValue} = $value;
        return $self;
    }


    sub withOwnerId {
        my ($self, $value) = @_;
        $self->setOwnerId($value);
        return $self;
    }


    sub isSetOwnerId {
        return defined (shift->{_fields}->{OwnerId}->{FieldValue});
    }


    sub getBucket {
        return shift->{_fields}->{Bucket}->{FieldValue};
    }


    sub setBucket {
        my ($self, $value) = @_;

        $self->{_fields}->{Bucket}->{FieldValue} = $value;
        return $self;
    }


    sub withBucket {
        my ($self, $value) = @_;
        $self->setBucket($value);
        return $self;
    }


    sub isSetBucket {
        return defined (shift->{_fields}->{Bucket}->{FieldValue});
    }


    sub getPrefix {
        return shift->{_fields}->{Prefix}->{FieldValue};
    }


    sub setPrefix {
        my ($self, $value) = @_;

        $self->{_fields}->{Prefix}->{FieldValue} = $value;
        return $self;
    }


    sub withPrefix {
        my ($self, $value) = @_;
        $self->setPrefix($value);
        return $self;
    }


    sub isSetPrefix {
        return defined (shift->{_fields}->{Prefix}->{FieldValue});
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





1;