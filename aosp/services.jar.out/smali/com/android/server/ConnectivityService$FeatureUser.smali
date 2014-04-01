.class Lcom/android/server/ConnectivityService$FeatureUser;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureUser"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mCreateTime:J

.field mFeature:Ljava/lang/String;

.field mNetworkType:I

.field mPid:I

.field mRadioNum:I

.field mUid:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "feature"
    .parameter "binder"

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    .line 1038
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    .line 1039
    iput p2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1040
    iput-object p3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1041
    iput-object p4, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    .line 1042
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :goto_0
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$FeatureUser;->binderDied()V

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;ILjava/lang/String;Landroid/os/IBinder;I)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "feature"
    .parameter "binder"
    .parameter "radioNum"

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    .line 1020
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    .line 1021
    iput p2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    .line 1022
    iput-object p3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1023
    iput-object p4, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    .line 1024
    iput p5, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    .line 1025
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    .line 1026
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    .line 1027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$FeatureUser;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityService FeatureUser binderDied("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSec ago"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/ConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    invoke-static {v0, p0, v1}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    .line 1062
    return-void
.end method

.method public expire()V
    .locals 6

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityService FeatureUser expire("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSec ago"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    .line 1071
    const-string v0, "enableMMS"

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/ConnectivityService;->stopUsingNetworkFeatureGemini(Lcom/android/server/ConnectivityService$FeatureUser;Z)I
    invoke-static {v0, p0, v1}, Lcom/android/server/ConnectivityService;->access$400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$FeatureUser;Z)I

    .line 1078
    :cond_0
    return-void
.end method

.method public isSameUser(IIILjava/lang/String;)Z
    .locals 6
    .parameter "pid"
    .parameter "uid"
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 1087
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSameUser(IIILjava/lang/String;I)Z
    .locals 1
    .parameter "pid"
    .parameter "uid"
    .parameter "networkType"
    .parameter "feature"
    .parameter "radioNum"

    .prologue
    .line 1091
    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {v0, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    if-ne v0, p5, :cond_0

    .line 1093
    const/4 v0, 0x1

    .line 1095
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameUser(Lcom/android/server/ConnectivityService$FeatureUser;)Z
    .locals 6
    .parameter "u"

    .prologue
    .line 1081
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1083
    :goto_0
    return v0

    :cond_0
    iget v1, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    iget v2, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    iget v3, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    iget-object v4, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureUser("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mRadioNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mCreateTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSec ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/server/ConnectivityService$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1055
    return-void
.end method
