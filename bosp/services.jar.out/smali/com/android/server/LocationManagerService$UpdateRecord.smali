.class Lcom/android/server/LocationManagerService$UpdateRecord;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRecord"
.end annotation


# instance fields
.field mLastFixBroadcast:Landroid/location/Location;

.field mLastStatusBroadcast:J

.field final mProvider:Ljava/lang/String;

.field final mReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field final mRequest:Landroid/location/LocationRequest;

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 2
    .parameter
    .parameter "provider"
    .parameter "request"
    .parameter "receiver"

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    iput-object p2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 1029
    iput-object p3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1030
    iput-object p4, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 1032
    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1033
    .local v0, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-nez v0, :cond_0

    .line 1034
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .restart local v0       #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1038
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_1
    return-void
.end method


# virtual methods
.method disposeLocked(Z)V
    .locals 4
    .parameter "removeReceiver"

    .prologue
    .line 1048
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$1200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1049
    .local v0, globalRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1053
    :cond_0
    if-nez p1, :cond_2

    .line 1065
    :cond_1
    :goto_0
    return-void

    .line 1056
    :cond_2
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v1, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1057
    .local v1, receiverRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_1

    .line 1058
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    #calls: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v2, v3}, Lcom/android/server/LocationManagerService;->access$800(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1070
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "UpdateRecord["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v2, v2, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    iget-object v1, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v1, v1, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1075
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
