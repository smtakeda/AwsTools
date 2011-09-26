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
# Stop Instances  Sample
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
 # sample for Stop Instances Action
 #**********************************************************************/
 use Amazon::EC2::Model::StopInstancesRequest;
 # @TODO: set request. Action can be passed as Amazon::EC2::Model::StopInstancesRequest
 # object or hash of parameters
 # invokeStopInstances($service, $request);

                                                                                                                                                                                                                                    
    # 
    # Stop Instances Action Sample
    #
  sub invokeStopInstances {
      my ($service, $request) = @_;  
      eval {
              my $response = $service->stopInstances($request);
              
                print ("Service Response\n");
                print ("=============================================================================\n");

                print("        StopInstancesResponse\n");
                if ($response->isSetResponseMetadata()) { 
                    print("            ResponseMetadata\n");
                    my $responseMetadata = $response->getResponseMetadata();
                    if ($responseMetadata->isSetRequestId()) 
                    {
                        print("                RequestId\n");
                        print("                    " . $responseMetadata->getRequestId() . "\n");
                    }
                } 
                if ($response->isSetStopInstancesResult()) { 
                    print("            StopInstancesResult\n");
                    my $stopInstancesResult = $response->getStopInstancesResult();
                    my $stoppingInstancesList = $stopInstancesResult->getStoppingInstances();
                    foreach (@$stoppingInstancesList) {
                        my $stoppingInstances = $_;
                        print("                StoppingInstances\n");
                        if ($stoppingInstances->isSetInstanceId()) 
                        {
                            print("                    InstanceId\n");
                            print("                        " . $stoppingInstances->getInstanceId() . "\n");
                        }
                        if ($stoppingInstances->isSetCurrentState()) { 
                            print("                    CurrentState\n");
                            my $currentState = $stoppingInstances->getCurrentState();
                            if ($currentState->isSetCode()) 
                            {
                                print("                        Code\n");
                                print("                            " . $currentState->getCode() . "\n");
                            }
                            if ($currentState->isSetName()) 
                            {
                                print("                        Name\n");
                                print("                            " . $currentState->getName() . "\n");
                            }
                        } 
                        if ($stoppingInstances->isSetPreviousState()) { 
                            print("                    PreviousState\n");
                            my $previousState = $stoppingInstances->getPreviousState();
                            if ($previousState->isSetCode()) 
                            {
                                print("                        Code\n");
                                print("                            " . $previousState->getCode() . "\n");
                            }
                            if ($previousState->isSetName()) 
                            {
                                print("                        Name\n");
                                print("                            " . $previousState->getName() . "\n");
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

                                                                                                                                                