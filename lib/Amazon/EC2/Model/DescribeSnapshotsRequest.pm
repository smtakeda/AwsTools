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


package Amazon::EC2::Model::DescribeSnapshotsRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DescribeSnapshotsRequest
    # 
    # Properties:
    #
    # 
    # SnapshotId: string
    # Owner: string
    # RestorableBy: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            SnapshotId => {FieldValue => [], FieldType => ["string"]},
            Owner => { FieldValue => undef, FieldType => "string"},
            RestorableBy => { FieldValue => undef, FieldType => "string"},
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


    sub setSnapshotId    {
        my ($self, $value) = @_;
        $self->{_fields}->{SnapshotId}->{FieldValue} = $value;
        return $self;
    }



    sub withSnapshotId {
        my $self = shift;
            my $list = $self->{_fields}->{SnapshotId}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetSnapshotId {
        return scalar (@{shift->{_fields}->{SnapshotId}->{FieldValue}}) > 0;
    }


    sub getOwner {
        return shift->{_fields}->{Owner}->{FieldValue};
    }


    sub setOwner {
        my ($self, $value) = @_;

        $self->{_fields}->{Owner}->{FieldValue} = $value;
        return $self;
    }


    sub withOwner {
        my ($self, $value) = @_;
        $self->setOwner($value);
        return $self;
    }


    sub isSetOwner {
        return defined (shift->{_fields}->{Owner}->{FieldValue});
    }


    sub getRestorableBy {
        return shift->{_fields}->{RestorableBy}->{FieldValue};
    }


    sub setRestorableBy {
        my ($self, $value) = @_;

        $self->{_fields}->{RestorableBy}->{FieldValue} = $value;
        return $self;
    }


    sub withRestorableBy {
        my ($self, $value) = @_;
        $self->setRestorableBy($value);
        return $self;
    }


    sub isSetRestorableBy {
        return defined (shift->{_fields}->{RestorableBy}->{FieldValue});
    }





1;