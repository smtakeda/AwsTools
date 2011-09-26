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


package Amazon::EC2::Model::Snapshot;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::Snapshot
    # 
    # Properties:
    #
    # 
    # SnapshotId: string
    # VolumeId: string
    # Status: string
    # StartTime: string
    # Progress: string
    # OwnerId: string
    # VolumeSize: string
    # Description: string
    # OwnerAlias: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            SnapshotId => { FieldValue => undef, FieldType => "string"},
            VolumeId => { FieldValue => undef, FieldType => "string"},
            Status => { FieldValue => undef, FieldType => "string"},
            StartTime => { FieldValue => undef, FieldType => "string"},
            Progress => { FieldValue => undef, FieldType => "string"},
            OwnerId => { FieldValue => undef, FieldType => "string"},
            VolumeSize => { FieldValue => undef, FieldType => "string"},
            Description => { FieldValue => undef, FieldType => "string"},
            OwnerAlias => { FieldValue => undef, FieldType => "string"},
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


    sub getVolumeId {
        return shift->{_fields}->{VolumeId}->{FieldValue};
    }


    sub setVolumeId {
        my ($self, $value) = @_;

        $self->{_fields}->{VolumeId}->{FieldValue} = $value;
        return $self;
    }


    sub withVolumeId {
        my ($self, $value) = @_;
        $self->setVolumeId($value);
        return $self;
    }


    sub isSetVolumeId {
        return defined (shift->{_fields}->{VolumeId}->{FieldValue});
    }


    sub getStatus {
        return shift->{_fields}->{Status}->{FieldValue};
    }


    sub setStatus {
        my ($self, $value) = @_;

        $self->{_fields}->{Status}->{FieldValue} = $value;
        return $self;
    }


    sub withStatus {
        my ($self, $value) = @_;
        $self->setStatus($value);
        return $self;
    }


    sub isSetStatus {
        return defined (shift->{_fields}->{Status}->{FieldValue});
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


    sub getProgress {
        return shift->{_fields}->{Progress}->{FieldValue};
    }


    sub setProgress {
        my ($self, $value) = @_;

        $self->{_fields}->{Progress}->{FieldValue} = $value;
        return $self;
    }


    sub withProgress {
        my ($self, $value) = @_;
        $self->setProgress($value);
        return $self;
    }


    sub isSetProgress {
        return defined (shift->{_fields}->{Progress}->{FieldValue});
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


    sub getDescription {
        return shift->{_fields}->{Description}->{FieldValue};
    }


    sub setDescription {
        my ($self, $value) = @_;

        $self->{_fields}->{Description}->{FieldValue} = $value;
        return $self;
    }


    sub withDescription {
        my ($self, $value) = @_;
        $self->setDescription($value);
        return $self;
    }


    sub isSetDescription {
        return defined (shift->{_fields}->{Description}->{FieldValue});
    }


    sub getOwnerAlias {
        return shift->{_fields}->{OwnerAlias}->{FieldValue};
    }


    sub setOwnerAlias {
        my ($self, $value) = @_;

        $self->{_fields}->{OwnerAlias}->{FieldValue} = $value;
        return $self;
    }


    sub withOwnerAlias {
        my ($self, $value) = @_;
        $self->setOwnerAlias($value);
        return $self;
    }


    sub isSetOwnerAlias {
        return defined (shift->{_fields}->{OwnerAlias}->{FieldValue});
    }





1;