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
# Describe Spot Instance Requests  Sample
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
 # sample for Describe Spot Instance Requests Action
 #**********************************************************************/
 use Amazon::EC2::Model::DescribeSpotInstanceRequestsRequest;
 # @TODO: set request. Action can be passed as Amazon::EC2::Model::DescribeSpotInstanceRequestsRequest
 # object or hash of parameters
 # invokeDescribeSpotInstanceRequests($service, $request);

                                                                                                                                                                                                                                                                                                                                                            
    # 
    # Describe Spot Instance Requests Action Sample
    #
  sub invokeDescribeSpotInstanceRequests {
      my ($service, $request) = @_;  
      eval {
              my $response = $service->describeSpotInstanceRequests($request);
              
                print ("Service Response\n");
                print ("=============================================================================\n");

                print("        DescribeSpotInstanceRequestsResponse\n");
                if ($response->isSetResponseMetadata()) { 
                    print("            ResponseMetadata\n");
                    my $responseMetadata = $response->getResponseMetadata();
                    if ($responseMetadata->isSetRequestId()) 
                    {
                        print("                RequestId\n");
                        print("                    " . $responseMetadata->getRequestId() . "\n");
                    }
                } 
                if ($response->isSetDescribeSpotInstanceRequestsResult()) { 
                    print("            DescribeSpotInstanceRequestsResult\n");
                    my $describeSpotInstanceRequestsResult = $response->getDescribeSpotInstanceRequestsResult();
                    my $spotInstanceRequestList = $describeSpotInstanceRequestsResult->getSpotInstanceRequest();
                    foreach (@$spotInstanceRequestList) {
                        my $spotInstanceRequest = $_;
                        print("                SpotInstanceRequest\n");
                        if ($spotInstanceRequest->isSetSpotInstanceRequestId()) 
                        {
                            print("                    SpotInstanceRequestId\n");
                            print("                        " . $spotInstanceRequest->getSpotInstanceRequestId() . "\n");
                        }
                        if ($spotInstanceRequest->isSetSpotPrice()) 
                        {
                            print("                    SpotPrice\n");
                            print("                        " . $spotInstanceRequest->getSpotPrice() . "\n");
                        }
                        if ($spotInstanceRequest->isSetType()) 
                        {
                            print("                    Type\n");
                            print("                        " . $spotInstanceRequest->getType() . "\n");
                        }
                        if ($spotInstanceRequest->isSetState()) 
                        {
                            print("                    State\n");
                            print("                        " . $spotInstanceRequest->getState() . "\n");
                        }
                        if ($spotInstanceRequest->isSetFault()) { 
                            print("                    Fault\n");
                            my $fault = $spotInstanceRequest->getFault();
                            if ($fault->isSetCode()) 
                            {
                                print("                        Code\n");
                                print("                            " . $fault->getCode() . "\n");
                            }
                            if ($fault->isSetMessage()) 
                            {
                                print("                        Message\n");
                                print("                            " . $fault->getMessage() . "\n");
                            }
                        } 
                        if ($spotInstanceRequest->isSetValidFrom()) 
                        {
                            print("                    ValidFrom\n");
                            print("                        " . $spotInstanceRequest->getValidFrom() . "\n");
                        }
                        if ($spotInstanceRequest->isSetValidUntil()) 
                        {
                            print("                    ValidUntil\n");
                            print("                        " . $spotInstanceRequest->getValidUntil() . "\n");
                        }
                        if ($spotInstanceRequest->isSetLaunchGroup()) 
                        {
                            print("                    LaunchGroup\n");
                            print("                        " . $spotInstanceRequest->getLaunchGroup() . "\n");
                        }
                        if ($spotInstanceRequest->isSetAvailabilityZoneGroup()) 
                        {
                            print("                    AvailabilityZoneGroup\n");
                            print("                        " . $spotInstanceRequest->getAvailabilityZoneGroup() . "\n");
                        }
                        if ($spotInstanceRequest->isSetLaunchSpecification()) { 
                            print("                    LaunchSpecification\n");
                            my $launchSpecification = $spotInstanceRequest->getLaunchSpecification();
                            if ($launchSpecification->isSetImageId()) 
                            {
                                print("                        ImageId\n");
                                print("                            " . $launchSpecification->getImageId() . "\n");
                            }
                            if ($launchSpecification->isSetKeyName()) 
                            {
                                print("                        KeyName\n");
                                print("                            " . $launchSpecification->getKeyName() . "\n");
                            }
                            my $securityGroupList  =  $launchSpecification->getSecurityGroup();
                            foreach (@$securityGroupList) { 
                                my $securityGroup = $_;
                                print("                        SecurityGroup\n");
                                print("                            " . $securityGroup);
                            }	
                            if ($launchSpecification->isSetUserData()) 
                            {
                                print("                        UserData\n");
                                print("                            " . $launchSpecification->getUserData() . "\n");
                            }
                            if ($launchSpecification->isSetAddressingType()) 
                            {
                                print("                        AddressingType\n");
                                print("                            " . $launchSpecification->getAddressingType() . "\n");
                            }
                            if ($launchSpecification->isSetInstanceType()) 
                            {
                                print("                        InstanceType\n");
                                print("                            " . $launchSpecification->getInstanceType() . "\n");
                            }
                            if ($launchSpecification->isSetPlacement()) { 
                                print("                        Placement\n");
                                my $placement = $launchSpecification->getPlacement();
                                if ($placement->isSetAvailabilityZone()) 
                                {
                                    print("                            AvailabilityZone\n");
                                    print("                                " . $placement->getAvailabilityZone() . "\n");
                                }
                                if ($placement->isSetGroupName()) 
                                {
                                    print("                            GroupName\n");
                                    print("                                " . $placement->getGroupName() . "\n");
                                }
                            } 
                            if ($launchSpecification->isSetKernelId()) 
                            {
                                print("                        KernelId\n");
                                print("                            " . $launchSpecification->getKernelId() . "\n");
                            }
                            if ($launchSpecification->isSetRamdiskId()) 
                            {
                                print("                        RamdiskId\n");
                                print("                            " . $launchSpecification->getRamdiskId() . "\n");
                            }
                            my $blockDeviceMappingList = $launchSpecification->getBlockDeviceMapping();
                            foreach (@$blockDeviceMappingList) {
                                my $blockDeviceMapping = $_;
                                print("                        BlockDeviceMapping\n");
                                if ($blockDeviceMapping->isSetDeviceName()) 
                                {
                                    print("                            DeviceName\n");
                                    print("                                " . $blockDeviceMapping->getDeviceName() . "\n");
                                }
                                if ($blockDeviceMapping->isSetVirtualName()) 
                                {
                                    print("                            VirtualName\n");
                                    print("                                " . $blockDeviceMapping->getVirtualName() . "\n");
                                }
                                if ($blockDeviceMapping->isSetEbs()) { 
                                    print("                            Ebs\n");
                                    my $ebs = $blockDeviceMapping->getEbs();
                                    if ($ebs->isSetSnapshotId()) 
                                    {
                                        print("                                SnapshotId\n");
                                        print("                                    " . $ebs->getSnapshotId() . "\n");
                                    }
                                    if ($ebs->isSetVolumeSize()) 
                                    {
                                        print("                                VolumeSize\n");
                                        print("                                    " . $ebs->getVolumeSize() . "\n");
                                    }
                                    if ($ebs->isSetDeleteOnTermination()) 
                                    {
                                        print("                                DeleteOnTermination\n");
                                        print("                                    " . $ebs->getDeleteOnTermination() . "\n");
                                    }
                                } 
                                if ($blockDeviceMapping->isSetNoDevice()) 
                                {
                                    print("                            NoDevice\n");
                                    print("                                " . $blockDeviceMapping->getNoDevice() . "\n");
                                }
                            }
                            if ($launchSpecification->isSetMonitoring()) { 
                                print("                        Monitoring\n");
                                my $monitoring = $launchSpecification->getMonitoring();
                                if ($monitoring->isSetEnabled()) 
                                {
                                    print("                            Enabled\n");
                                    print("                                " . $monitoring->getEnabled() . "\n");
                                }
                            } 
                            if ($launchSpecification->isSetSubnetId()) 
                            {
                                print("                        SubnetId\n");
                                print("                            " . $launchSpecification->getSubnetId() . "\n");
                            }
                        } 
                        if ($spotInstanceRequest->isSetInstanceId()) 
                        {
                            print("                    InstanceId\n");
                            print("                        " . $spotInstanceRequest->getInstanceId() . "\n");
                        }
                        if ($spotInstanceRequest->isSetCreateTime()) 
                        {
                            print("                    CreateTime\n");
                            print("                        " . $spotInstanceRequest->getCreateTime() . "\n");
                        }
                        if ($spotInstanceRequest->isSetProductDescription()) 
                        {
                            print("                    ProductDescription\n");
                            print("                        " . $spotInstanceRequest->getProductDescription() . "\n");
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

                        