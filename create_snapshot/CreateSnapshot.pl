###########################################$
# Create Snapshots
# 
use strict;
use warnings;
use Data::Dumper;
use Config::Properties;
use Carp qw( carp croak );
use FindBin qw($Bin);
use lib "$Bin/../lib";  

use Amazon::EC2::Client; 
use Amazon::EC2::Model::CreateSnapshotRequest;
use Amazon::EC2::Model::DeleteSnapshotRequest;
use Amazon::EC2::Model::DescribeSnapshotsRequest;

my $PROPERTY_FILE = "user.properties";

#----------------------------------------------------------------------------
# main
#----------------------------------------------------------------------------
sub main {
    open my $propsH, '<', "$Bin/../$PROPERTY_FILE" || die "failed to open property file: $! [$PROPERTY_FILE]";
    my $properties = Config::Properties->new();
    $properties->load($propsH);

    my $MAX_SNAPSHOTS         = $properties->getProperty('max_snapshots');
    die "specify 'max_snapshots' in user.properties" if !defined $MAX_SNAPSHOTS;
    my $AWS_ACCESS_KEY_ID     = $properties->getProperty('aws_access_key_id');
    die "specify 'aws_access_key_id' in user.properties" if !defined $AWS_ACCESS_KEY_ID;
    my $AWS_SECRET_ACCESS_KEY = $properties->getProperty('aws_secret_access_key');
    die "specify 'aws_secret_access_key' in user.properties" if !defined $AWS_SECRET_ACCESS_KEY;
    my $AWS_OWNER_ID          = $properties->getProperty('aws_owner_id');
    die "specify 'aws_owner_id' in user.properties" if !defined $AWS_OWNER_ID;
    my $AWS_VOLUME_ID         = $properties->getProperty('aws_volume_id');
    die "specify 'aws_volume_id' in user.properties" if !defined $AWS_VOLUME_ID;

    my $service = Amazon::EC2::Client->new($AWS_ACCESS_KEY_ID, $AWS_SECRET_ACCESS_KEY);
    my $request = Amazon::EC2::Model::DescribeSnapshotsRequest->new({
        'Owner' => $AWS_OWNER_ID,
    });
    my $toBeDeleted = invokeDescribeSnapshots($service, $request, $MAX_SNAPSHOTS);

    for my $snapshot (@$toBeDeleted) {
        my $request1 = Amazon::EC2::Model::DeleteSnapshotRequest->new({
            SnapshotId => $snapshot->getSnapshotId(),
        });
        invokeDeleteSnapshot($service, $request1);
    }

    my $dt = `date +%FT%T`;
    chomp $dt;

    my $request2 = Amazon::EC2::Model::CreateSnapshotRequest->new({
        'VolumeId' => $AWS_VOLUME_ID,
        'Description' => "backup for ". $AWS_VOLUME_ID . " at " . $dt,
    });
    invokeCreateSnapshot($service, $request2);
}
                                                                        
#----------------------------------------------------------------------------
# Create Snapshot Action Sample
#----------------------------------------------------------------------------
sub invokeCreateSnapshot {
    my ($service, $request) = @_;  
    eval {
        my $response = $service->createSnapshot($request);
        if ($response->isSetCreateSnapshotResult()) { 
            print("            CreateSnapshotResult\n");
            my $createSnapshotResult = $response->getCreateSnapshotResult();
            if ($createSnapshotResult->isSetSnapshot()) { 
                print("                Snapshot\n");
                my $snapshot = $createSnapshotResult->getSnapshot();
                if ($snapshot->isSetSnapshotId()) {
                    print("                    SnapshotId\n");
                    print("                        " . $snapshot->getSnapshotId() . "\n");
                }
                if ($snapshot->isSetVolumeId()) {
                    print("                    VolumeId\n");
                    print("                        " . $snapshot->getVolumeId() . "\n");
                }
                if ($snapshot->isSetStatus()) {
                    print("                    Status\n");
                    print("                        " . $snapshot->getStatus() . "\n");
                }
                if ($snapshot->isSetStartTime()) {
                    print("                    StartTime\n");
                    print("                        " . $snapshot->getStartTime() . "\n");
                }
                if ($snapshot->isSetProgress()) {
                    print("                    Progress\n");
                    print("                        " . $snapshot->getProgress() . "\n");
                }
                if ($snapshot->isSetOwnerId()) {
                    print("                    OwnerId\n");
                    print("                        " . $snapshot->getOwnerId() . "\n");
                }
                if ($snapshot->isSetVolumeSize()) {
                    print("                    VolumeSize\n");
                    print("                        " . $snapshot->getVolumeSize() . "\n");
                }
                if ($snapshot->isSetDescription()) {
                    print("                    Description\n");
                    print("                        " . $snapshot->getDescription() . "\n");
                }
                if ($snapshot->isSetOwnerAlias()) {
                    print("                    OwnerAlias\n");
                    print("                        " . $snapshot->getOwnerAlias() . "\n");
                }
            } 
        } 
        if ($response->isSetResponseMetadata()) { 
            print("            ResponseMetadata\n");
            my $responseMetadata = $response->getResponseMetadata();
            if ($responseMetadata->isSetRequestId()) {
                print("                RequestId\n");
                print("                    " . $responseMetadata->getRequestId() . "\n");
            }
        } 
    };
    my $ex = $@;
    if ($ex) {
        handleException($ex);
    }
}

#----------------------------------------------------------------------------
# Describe Snapshots Action Sample
#----------------------------------------------------------------------------
sub invokeDescribeSnapshots {
    my $service = shift;
    my $request = shift;
    my $numberOfSnapshots = shift;
    my $toBeDeleted = [];
    eval {
        my $response = $service->describeSnapshots($request);
        if ($response->isSetDescribeSnapshotsResult()) {
            my $describeSnapshotsResult = $response->getDescribeSnapshotsResult();
            my $snapshotList = $describeSnapshotsResult->getSnapshot();
            my $groupedSnapshots = {};
            foreach (@$snapshotList) {
                my $snapshot = $_;
                # skip no desc
                next if (!$snapshot->isSetDescription());
                # skipt status is not 'completed'
                next if (!$snapshot->isSetStatus() || $snapshot->getStatus() ne "completed" );
                my $description = $snapshot->getDescription();

                $groupedSnapshots->{$snapshot->getVolumeId()} ||=[];
                my $snapshots = $groupedSnapshots->{$snapshot->getVolumeId()};
                push(@$snapshots, $snapshot);
            }
            for my $id (keys %$groupedSnapshots) {
                my $snapshots = $groupedSnapshots->{$id};
                if (scalar(@$snapshots) > $numberOfSnapshots) {
                    my @sortedSnapshots = reverse sort { $a->getStartTime() cmp $b->getStartTime() } @$snapshots;
                    for (my $i=$numberOfSnapshots; $i<scalar(@$snapshots); ++$i) {
                        push(@$toBeDeleted, $sortedSnapshots[$i]);
                    }
                }
            }
        } 
        
        #if ($response->isSetResponseMetadata()) { 
        #    print("            ResponseMetadata\n");
        #    my $responseMetadata = $response->getResponseMetadata();
        #    if ($responseMetadata->isSetRequestId()) {
        #        print("                RequestId\n");
        #        print("                    " . $responseMetadata->getRequestId() . "\n");
        #    }
        #} 
    };
    my $ex = $@;
    if ($ex) {
        handleException($ex);
    }
    return $toBeDeleted;
}

#----------------------------------------------------------------------------
# Delete Snapshot Action Sample
#----------------------------------------------------------------------------
sub invokeDeleteSnapshot {
    my ($service, $request) = @_;  
    eval {
        my $response = $service->deleteSnapshot($request);
    };
    my $ex = $@;
    if ($ex) {
        handleException($ex);
    }
}

#----------------------------------------------------------------------------
# Handle exception
#----------------------------------------------------------------------------
sub handleException {
    my $ex = shift;
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

# 
main;
