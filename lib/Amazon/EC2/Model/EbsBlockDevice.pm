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


package Amazon::EC2::Model::EbsBlockDevice;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::EbsBlockDevice
    # 
    # Properties:
    #
    # 
    # SnapshotId: string
    # VolumeSize: int
    # DeleteOnTermination: bool
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            SnapshotId => { FieldValue => undef, FieldType => "string"},
            VolumeSize => { FieldValue => undef, FieldType => "int"},
            DeleteOnTermination => { FieldValue => undef, FieldType => "bool"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getSnapshotId {
        return shift->{_fields}->{SnapshotId}->{FieldValue};
    }


    sub setSnapshotId {
        my ($self, $value) = @_;

        $self->{_fields}->{SnapshotId}->{FieldValue} = $value;
        return $self;
    }


    sub withSnapshotId {
        my ($self, $value) = @_;
        $self->setSnapshotId($value);
        return $self;
    }


    sub isSetSnapshotId {
        return defined (shift->{_fields}->{SnapshotId}->{FieldValue});
    }


    sub getVolumeSize {
        return shift->{_fields}->{VolumeSize}->{FieldValue};
    }


    sub setVolumeSize {
        my ($self, $value) = @_;

        $self->{_fields}->{VolumeSize}->{FieldValue} = $value;
        return $self;
    }


    sub withVolumeSize {
        my ($self, $value) = @_;
        $self->setVolumeSize($value);
        return $self;
    }


    sub isSetVolumeSize {
        return defined (shift->{_fields}->{VolumeSize}->{FieldValue});
    }


    sub getDeleteOnTermination {
        return shift->{_fields}->{DeleteOnTermination}->{FieldValue};
    }


    sub setDeleteOnTermination {
        my ($self, $value) = @_;

        $self->{_fields}->{DeleteOnTermination}->{FieldValue} = $value;
        return $self;
    }


    sub withDeleteOnTermination {
        my ($self, $value) = @_;
        $self->setDeleteOnTermination($value);
        return $self;
    }


    sub isSetDeleteOnTermination {
        return defined (shift->{_fields}->{DeleteOnTermination}->{FieldValue});
    }





1;