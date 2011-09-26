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
# Describe Images  Sample
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
 # sample for Describe Images Action
 #**********************************************************************/
 use Amazon::EC2::Model::DescribeImagesRequest;
 # @TODO: set request. Action can be passed as Amazon::EC2::Model::DescribeImagesRequest
 # object or hash of parameters
 # invokeDescribeImages($service, $request);

                                                                                                                                        
    # 
    # Describe Images Action Sample
    #
  sub invokeDescribeImages {
      my ($service, $request) = @_;  
      eval {
              my $response = $service->describeImages($request);
              
                print ("Service Response\n");
                print ("=============================================================================\n");

                print("        DescribeImagesResponse\n");
                if ($response->isSetResponseMetadata()) { 
                    print("            ResponseMetadata\n");
                    my $responseMetadata = $response->getResponseMetadata();
                    if ($responseMetadata->isSetRequestId()) 
                    {
                        print("                RequestId\n");
                        print("                    " . $responseMetadata->getRequestId() . "\n");
                    }
                } 
                if ($response->isSetDescribeImagesResult()) { 
                    print("            DescribeImagesResult\n");
                    my $describeImagesResult = $response->getDescribeImagesResult();
                    my $imageList = $describeImagesResult->getImage();
                    foreach (@$imageList) {
                        my $image = $_;
                        print("                Image\n");
                        if ($image->isSetImageId()) 
                        {
                            print("                    ImageId\n");
                            print("                        " . $image->getImageId() . "\n");
                        }
                        if ($image->isSetImageLocation()) 
                        {
                            print("                    ImageLocation\n");
                            print("                        " . $image->getImageLocation() . "\n");
                        }
                        if ($image->isSetImageState()) 
                        {
                            print("                    ImageState\n");
                            print("                        " . $image->getImageState() . "\n");
                        }
                        if ($image->isSetOwnerId()) 
                        {
                            print("                    OwnerId\n");
                            print("                        " . $image->getOwnerId() . "\n");
                        }
                        if ($image->isSetVisibility()) 
                        {
                            print("                    Visibility\n");
                            print("                        " . $image->getVisibility() . "\n");
                        }
                        my $productCodeList  =  $image->getProductCode();
                        foreach (@$productCodeList) { 
                            my $productCode = $_;
                            print("                    ProductCode\n");
                            print("                        " . $productCode);
                        }	
                        if ($image->isSetArchitecture()) 
                        {
                            print("                    Architecture\n");
                            print("                        " . $image->getArchitecture() . "\n");
                        }
                        if ($image->isSetImageType()) 
                        {
                            print("                    ImageType\n");
                            print("                        " . $image->getImageType() . "\n");
                        }
                        if ($image->isSetKernelId()) 
                        {
                            print("                    KernelId\n");
                            print("                        " . $image->getKernelId() . "\n");
                        }
                        if ($image->isSetRamdiskId()) 
                        {
                            print("                    RamdiskId\n");
                            print("                        " . $image->getRamdiskId() . "\n");
                        }
                        if ($image->isSetPlatform()) 
                        {
                            print("                    Platform\n");
                            print("                        " . $image->getPlatform() . "\n");
                        }
                        if ($image->isSetStateReason()) { 
                            print("                    StateReason\n");
                            my $stateReason = $image->getStateReason();
                            if ($stateReason->isSetCode()) 
                            {
                                print("                        Code\n");
                                print("                            " . $stateReason->getCode() . "\n");
                            }
                            if ($stateReason->isSetMessage()) 
                            {
                                print("                        Message\n");
                                print("                            " . $stateReason->getMessage() . "\n");
                            }
                        } 
                        if ($image->isSetImageOwnerAlias()) 
                        {
                            print("                    ImageOwnerAlias\n");
                            print("                        " . $image->getImageOwnerAlias() . "\n");
                        }
                        if ($image->isSetName()) 
                        {
                            print("                    Name\n");
                            print("                        " . $image->getName() . "\n");
                        }
                        if ($image->isSetDescription()) 
                        {
                            print("                    Description\n");
                            print("                        " . $image->getDescription() . "\n");
                        }
                        if ($image->isSetRootDeviceType()) 
                        {
                            print("                    RootDeviceType\n");
                            print("                        " . $image->getRootDeviceType() . "\n");
                        }
                        if ($image->isSetRootDeviceName()) 
                        {
                            print("                    RootDeviceName\n");
                            print("                        " . $image->getRootDeviceName() . "\n");
                        }
                        my $blockDeviceMappingList = $image->getBlockDeviceMapping();
                        foreach (@$blockDeviceMappingList) {
                            my $blockDeviceMapping = $_;
                            print("                    BlockDeviceMapping\n");
                            if ($blockDeviceMapping->isSetDeviceName()) 
                            {
                                print("                        DeviceName\n");
                                print("                            " . $blockDeviceMapping->getDeviceName() . "\n");
                            }
                            if ($blockDeviceMapping->isSetVirtualName()) 
                            {
                                print("                        VirtualName\n");
                                print("                            " . $blockDeviceMapping->getVirtualName() . "\n");
                            }
                            if ($blockDeviceMapping->isSetEbs()) { 
                                print("                        Ebs\n");
                                my $ebs = $blockDeviceMapping->getEbs();
                                if ($ebs->isSetSnapshotId()) 
                                {
                                    print("                            SnapshotId\n");
                                    print("                                " . $ebs->getSnapshotId() . "\n");
                                }
                                if ($ebs->isSetVolumeSize()) 
                                {
                                    print("                            VolumeSize\n");
                                    print("                                " . $ebs->getVolumeSize() . "\n");
                                }
                                if ($ebs->isSetDeleteOnTermination()) 
                                {
                                    print("                            DeleteOnTermination\n");
                                    print("                                " . $ebs->getDeleteOnTermination() . "\n");
                                }
                            } 
                            if ($blockDeviceMapping->isSetNoDevice()) 
                            {
                                print("                        NoDevice\n");
                                print("                            " . $blockDeviceMapping->getNoDevice() . "\n");
                            }
                        }
                        if ($image->isSetVirtualizationType()) 
                        {
                            print("                    VirtualizationType\n");
                            print("                        " . $image->getVirtualizationType() . "\n");
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

                                                                                                                                                                                                                                            