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


package Amazon::EC2::Model::License;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::License
    # 
    # Properties:
    #
    # 
    # LicenseId: string
    # Type: string
    # Pool: string
    # LicenseCapacity: Amazon::EC2::Model::LicenseCapacity
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            LicenseId => { FieldValue => undef, FieldType => "string"},
            Type => { FieldValue => undef, FieldType => "string"},
            Pool => { FieldValue => undef, FieldType => "string"},
            LicenseCapacity => {FieldValue => [], FieldType => ["Amazon::EC2::Model::LicenseCapacity"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getLicenseId {
        return shift->{_fields}->{LicenseId}->{FieldValue};
    }


    sub setLicenseId {
        my ($self, $value) = @_;

        $self->{_fields}->{LicenseId}->{FieldValue} = $value;
        return $self;
    }


    sub withLicenseId {
        my ($self, $value) = @_;
        $self->setLicenseId($value);
        return $self;
    }


    sub isSetLicenseId {
        return defined (shift->{_fields}->{LicenseId}->{FieldValue});
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


    sub getPool {
        return shift->{_fields}->{Pool}->{FieldValue};
    }


    sub setPool {
        my ($self, $value) = @_;

        $self->{_fields}->{Pool}->{FieldValue} = $value;
        return $self;
    }


    sub withPool {
        my ($self, $value) = @_;
        $self->setPool($value);
        return $self;
    }


    sub isSetPool {
        return defined (shift->{_fields}->{Pool}->{FieldValue});
    }

    sub getLicenseCapacity {
        return shift->{_fields}->{LicenseCapacity}->{FieldValue};
    }

    sub setLicenseCapacity {
        my $self = shift;
        foreach my $licenseCapacity (@_) {
            if (not $self->_isArrayRef($licenseCapacity)) {
                $licenseCapacity =  [$licenseCapacity];    
            }
            $self->{_fields}->{LicenseCapacity}->{FieldValue} = $licenseCapacity;
        }
    }


    sub withLicenseCapacity {
        my ($self, $licenseCapacityArgs) = @_;
        foreach my $licenseCapacity (@$licenseCapacityArgs) {
            $self->{_fields}->{LicenseCapacity}->{FieldValue} = $licenseCapacity;
        }
        return $self;
    }   


    sub isSetLicenseCapacity {
        return  scalar (@{shift->{_fields}->{LicenseCapacity}->{FieldValue}}) > 0;
    }





1;