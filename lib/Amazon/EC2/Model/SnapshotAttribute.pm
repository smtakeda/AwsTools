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


package Amazon::EC2::Model::SnapshotAttribute;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::SnapshotAttribute
    # 
    # Properties:
    #
    # 
    # SnapshotId: string
    # CreateVolumePermission: Amazon::EC2::Model::CreateVolumePermission
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            SnapshotId => { FieldValue => undef, FieldType => "string"},
            CreateVolumePermission => {FieldValue => [], FieldType => ["Amazon::EC2::Model::CreateVolumePermission"]},
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

    sub getCreateVolumePermission {
        return shift->{_fields}->{CreateVolumePermission}->{FieldValue};
    }

    sub setCreateVolumePermission {
        my $self = shift;
        foreach my $createVolumePermission (@_) {
            if (not $self->_isArrayRef($createVolumePermission)) {
                $createVolumePermission =  [$createVolumePermission];    
            }
            $self->{_fields}->{CreateVolumePermission}->{FieldValue} = $createVolumePermission;
        }
    }


    sub withCreateVolumePermission {
        my ($self, $createVolumePermissionArgs) = @_;
        foreach my $createVolumePermission (@$createVolumePermissionArgs) {
            $self->{_fields}->{CreateVolumePermission}->{FieldValue} = $createVolumePermission;
        }
        return $self;
    }   


    sub isSetCreateVolumePermission {
        return  scalar (@{shift->{_fields}->{CreateVolumePermission}->{FieldValue}}) > 0;
    }





1;