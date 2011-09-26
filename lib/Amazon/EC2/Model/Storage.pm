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


package Amazon::EC2::Model::Storage;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::Storage
    # 
    # Properties:
    #
    # 
    # S3: Amazon::EC2::Model::S3Storage
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            S3 => {FieldValue => undef, FieldType => "Amazon::EC2::Model::S3Storage"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

        sub getS3 {
        return shift->{_fields}->{S3}->{FieldValue};
    }


    sub setS3 {
        my ($self, $value) = @_;
        $self->{_fields}->{S3}->{FieldValue} = $value;
    }


    sub withS3 {
        my ($self, $value) = @_;
        $self->setS3($value);
        return $self;
    }


    sub isSetS3 {
        return defined (shift->{_fields}->{S3}->{FieldValue});

    }





1;