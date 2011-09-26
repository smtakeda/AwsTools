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



#
# Describe Instance Attribute  Sample
#

use strict;
use Carp qw( carp croak );

# this is only needed when samples are running from directory
# not included in the @INC path
use lib qw(../../../.);  


 #***********************************************************************
 # Access Key ID and Secret Acess Key ID, obtained from:
 # http://aws.amazon.com
 #**********************************************************************/
 
 my $AWS_ACCESS_KEY_ID        = "<Your Access Key ID>";
 my $AWS_SECRET_ACCESS_KEY    = "<Your Secret Access Key>";

 #***********************************************************************
 # Instantiate Http Client Implementation of EC2 
 #**********************************************************************/
 use Amazon::EC2::Client; 
 my $service = Amazon::EC2::Client->new($AWS_ACCESS_KEY_ID, $AWS_SECRET_ACCESS_KEY);
 
 #************************************************************************
 # Uncomment to try out Mock Service that simulates Amazon::EC2
 # responses without calling Amazon::EC2 service.
 #
 # Responses are loaded from local XML files. You can tweak XML files to
 # experiment with various outputs during development
 #
 # XML files available under Amazon/EC2/Mock tree
 #
 #**********************************************************************/
 # use Amazon::EC2::Mock;  
 # my $service = Amazon::EC2::Mock->new;

 #************************************************************************
 # Setup request parameters and uncomment invoke to try out 
 # sample for Describe Instance Attribute Action
 #**********************************************************************/
 use Amazon::EC2::Model::DescribeInstanceAttributeRequest;
 # @TODO: set request. Action can be passed as Amazon::EC2::Model::DescribeInstanceAttributeRequest
 # object or hash of parameters
 # invokeDescribeInstanceAttribute($service, $request);

                                                                                                                                                                                                                                                    
    # 
    # Describe Instance Attribute Action Sample
    #
  sub invokeDescribeInstanceAttribute {
      my ($service, $request) = @_;  
      eval {
              my $response = $service->describeInstanceAttribute($request);
              
                print ("Service Response\n");
                print ("=============================================================================\n");

                print("        DescribeInstanceAttributeResponse\n");
                if ($response->isSetResponseMetadata()) { 
                    print("            ResponseMetadata\n");
                    my $responseMetadata = $response->getResponseMetadata();
                    if ($responseMetadata->isSetRequestId()) 
                    {
                        print("                RequestId\n");
                        print("                    " . $responseMetadata->getRequestId() . "\n");
                    }
                } 
                if ($response->isSetDescribeInstanceAttributeResult()) { 
                    print("            DescribeInstanceAttributeResult\n");
                    my $describeInstanceAttributeResult = $response->getDescribeInstanceAttributeResult();
                    if ($describeInstanceAttributeResult->isSetInstanceAttribute()) { 
                        print("                InstanceAttribute\n");
                        my $instanceAttribute = $describeInstanceAttributeResult->getInstanceAttribute();
                        if ($instanceAttribute->isSetInstanceId()) 
                        {
                            print("                    InstanceId\n");
                            print("                        " . $instanceAttribute->getInstanceId() . "\n");
                        }
                        if ($instanceAttribute->isSetInstanceType()) 
                        {
                            print("                    InstanceType\n");
                            print("                        " . $instanceAttribute->getInstanceType() . "\n");
                        }
                        if ($instanceAttribute->isSetKernelId()) 
                        {
                            print("                    KernelId\n");
                            print("                        " . $instanceAttribute->getKernelId() . "\n");
                        }
                        if ($instanceAttribute->isSetRamdiskId()) 
                        {
                            print("                    RamdiskId\n");
                            print("                        " . $instanceAttribute->getRamdiskId() . "\n");
                        }
                        if ($instanceAttribute->isSetUserData()) 
                        {
                            print("                    UserData\n");
                            print("                        " . $instanceAttribute->getUserData() . "\n");
                        }
                        if ($instanceAttribute->isSetDisableApiTermination()) 
                        {
                            print("                    DisableApiTermination\n");
                            print("                        " . $instanceAttribute->getDisableApiTermination() . "\n");
                        }
                        if ($instanceAttribute->isSetInstanceInitiatedShutdownBehavior()) 
                        {
                            print("                    InstanceInitiatedShutdownBehavior\n");
                            print("                        " . $instanceAttribute->getInstanceInitiatedShutdownBehavior() . "\n");
                        }
                        if ($instanceAttribute->isSetRootDeviceName()) 
                        {
                            print("                    RootDeviceName\n");
                            print("                        " . $instanceAttribute->getRootDeviceName() . "\n");
                        }
                        my $blockDeviceMappingList = $instanceAttribute->getBlockDeviceMapping();
                        foreach (@$blockDeviceMappingList) {
                            my $blockDeviceMapping = $_;
                            print("                    BlockDeviceMapping\n");
                            if ($blockDeviceMapping->isSetDeviceName()) 
                            {
                                print("                        DeviceName\n");
                                print("                            " . $blockDeviceMapping->getDeviceName() . "\n");
                            }
                            if ($blockDeviceMapping->isSetEbs()) { 
                                print("                        Ebs\n");
                                my $ebs = $blockDeviceMapping->getEbs();
                                if ($ebs->isSetVolumeId()) 
                                {
                                    print("                            VolumeId\n");
                                    print("                                " . $ebs->getVolumeId() . "\n");
                                }
                                if ($ebs->isSetStatus()) 
                                {
                                    print("                            Status\n");
                                    print("                                " . $ebs->getStatus() . "\n");
                                }
                                if ($ebs->isSetAttachTime()) 
                                {
                                    print("                            AttachTime\n");
                                    print("                                " . $ebs->getAttachTime() . "\n");
                                }
                                if ($ebs->isSetDeleteOnTermination()) 
                                {
                                    print("                            DeleteOnTermination\n");
                                    print("                                " . $ebs->getDeleteOnTermination() . "\n");
                                }
                            } 
                        }
                    } 
                } 

           
     };
    my $ex = $@;
    if ($ex) {
        require Amazon::EC2::Exception;
        if (ref $ex eq "Amazon::EC2::Exception") {
            print("Caught Exception: " . $ex->getMessage() . "\n");
            print("Response Status Code: " . $ex->getStatusCode() . "\n");
            print("Error Code: " . $ex->getErrorCode() . "\n");
            print("Error Type: " . $ex->getErrorType() . "\n");
            print("Request ID: " . $ex->getRequestId() . "\n");
            print("XML: " . $ex->getXML() . "\n");
        } else {
            croak $@;
        }
    }
 }

                                                                                                                                