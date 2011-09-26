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


package Amazon::EC2::Model::Reservation;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::Reservation
    # 
    # Properties:
    #
    # 
    # ReservationId: string
    # OwnerId: string
    # RequesterId: string
    # GroupName: string
    # RunningInstance: Amazon::EC2::Model::RunningInstance
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ReservationId => { FieldValue => undef, FieldType => "string"},
            OwnerId => { FieldValue => undef, FieldType => "string"},
            RequesterId => { FieldValue => undef, FieldType => "string"},
            GroupName => {FieldValue => [], FieldType => ["string"]},
            RunningInstance => {FieldValue => [], FieldType => ["Amazon::EC2::Model::RunningInstance"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getReservationId {
        return shift->{_fields}->{ReservationId}->{FieldValue};
    }


    sub setReservationId {
        my ($self, $value) = @_;

        $self->{_fields}->{ReservationId}->{FieldValue} = $value;
        return $self;
    }


    sub withReservationId {
        my ($self, $value) = @_;
        $self->setReservationId($value);
        return $self;
    }


    sub isSetReservationId {
        return defined (shift->{_fields}->{ReservationId}->{FieldValue});
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


    sub getRequesterId {
        return shift->{_fields}->{RequesterId}->{FieldValue};
    }


    sub setRequesterId {
        my ($self, $value) = @_;

        $self->{_fields}->{RequesterId}->{FieldValue} = $value;
        return $self;
    }


    sub withRequesterId {
        my ($self, $value) = @_;
        $self->setRequesterId($value);
        return $self;
    }


    sub isSetRequesterId {
        return defined (shift->{_fields}->{RequesterId}->{FieldValue});
    }

    sub getGroupName {
        return shift->{_fields}->{GroupName}->{FieldValue};
    }


    sub setGroupName    {
        my ($self, $value) = @_;
        $self->{_fields}->{GroupName}->{FieldValue} = $value;
        return $self;
    }



    sub withGroupName {
        my $self = shift;
            my $list = $self->{_fields}->{GroupName}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetGroupName {
        return scalar (@{shift->{_fields}->{GroupName}->{FieldValue}}) > 0;
    }

    sub getRunningInstance {
        return shift->{_fields}->{RunningInstance}->{FieldValue};
    }

    sub setRunningInstance {
        my $self = shift;
        foreach my $runningInstance (@_) {
            if (not $self->_isArrayRef($runningInstance)) {
                $runningInstance =  [$runningInstance];    
            }
            $self->{_fields}->{RunningInstance}->{FieldValue} = $runningInstance;
        }
    }


    sub withRunningInstance {
        my ($self, $runningInstanceArgs) = @_;
        foreach my $runningInstance (@$runningInstanceArgs) {
            $self->{_fields}->{RunningInstance}->{FieldValue} = $runningInstance;
        }
        return $self;
    }   


    sub isSetRunningInstance {
        return  scalar (@{shift->{_fields}->{RunningInstance}->{FieldValue}}) > 0;
    }





1;