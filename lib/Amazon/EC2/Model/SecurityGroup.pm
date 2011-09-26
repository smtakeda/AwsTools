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


package Amazon::EC2::Model::SecurityGroup;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::SecurityGroup
    # 
    # Properties:
    #
    # 
    # OwnerId: string
    # GroupName: string
    # GroupDescription: string
    # IpPermission: Amazon::EC2::Model::IpPermission
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            OwnerId => { FieldValue => undef, FieldType => "string"},
            GroupName => { FieldValue => undef, FieldType => "string"},
            GroupDescription => { FieldValue => undef, FieldType => "string"},
            IpPermission => {FieldValue => [], FieldType => ["Amazon::EC2::Model::IpPermission"]},
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


    sub getGroupName {
        return shift->{_fields}->{GroupName}->{FieldValue};
    }


    sub setGroupName {
        my ($self, $value) = @_;

        $self->{_fields}->{GroupName}->{FieldValue} = $value;
        return $self;
    }


    sub withGroupName {
        my ($self, $value) = @_;
        $self->setGroupName($value);
        return $self;
    }


    sub isSetGroupName {
        return defined (shift->{_fields}->{GroupName}->{FieldValue});
    }


    sub getGroupDescription {
        return shift->{_fields}->{GroupDescription}->{FieldValue};
    }


    sub setGroupDescription {
        my ($self, $value) = @_;

        $self->{_fields}->{GroupDescription}->{FieldValue} = $value;
        return $self;
    }


    sub withGroupDescription {
        my ($self, $value) = @_;
        $self->setGroupDescription($value);
        return $self;
    }


    sub isSetGroupDescription {
        return defined (shift->{_fields}->{GroupDescription}->{FieldValue});
    }

    sub getIpPermission {
        return shift->{_fields}->{IpPermission}->{FieldValue};
    }

    sub setIpPermission {
        my $self = shift;
        foreach my $ipPermission (@_) {
            if (not $self->_isArrayRef($ipPermission)) {
                $ipPermission =  [$ipPermission];    
            }
            $self->{_fields}->{IpPermission}->{FieldValue} = $ipPermission;
        }
    }


    sub withIpPermission {
        my ($self, $ipPermissionArgs) = @_;
        foreach my $ipPermission (@$ipPermissionArgs) {
            $self->{_fields}->{IpPermission}->{FieldValue} = $ipPermission;
        }
        return $self;
    }   


    sub isSetIpPermission {
        return  scalar (@{shift->{_fields}->{IpPermission}->{FieldValue}}) > 0;
    }





1;