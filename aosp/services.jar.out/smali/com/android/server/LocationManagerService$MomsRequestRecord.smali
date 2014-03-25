.class Lcom/android/server/LocationManagerService$MomsRequestRecord;
.super Ljava/lang/Object;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MomsRequestRecord"
.end annotation


# instance fields
.field mPackageName:Ljava/lang/String;

.field mRecevier:Lcom/android/server/LocationManagerService$Receiver;

.field mRequest:Landroid/location/LocationRequest;

.field mpid:I

.field muid:I

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "request"
    .parameter "receiver"
    .parameter "pid"
    .parameter "uid"
    .parameter "packageName"

    .prologue
    .line 2503
    iput-object p1, p0, Lcom/android/server/LocationManagerService$MomsRequestRecord;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2504
    iput-object p2, p0, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRequest:Landroid/location/LocationRequest;

    .line 2505
    iput-object p3, p0, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mRecevier:Lcom/android/server/LocationManagerService$Receiver;

    .line 2506
    iput p4, p0, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mpid:I

    .line 2507
    iput p5, p0, Lcom/android/server/LocationManagerService$MomsRequestRecord;->muid:I

    .line 2508
    iput-object p6, p0, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mPackageName:Ljava/lang/String;

    .line 2509
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2513
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "MomsRequestRecord["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2514
    iget-object v1, p0, Lcom/android/server/LocationManagerService$MomsRequestRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2515
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
