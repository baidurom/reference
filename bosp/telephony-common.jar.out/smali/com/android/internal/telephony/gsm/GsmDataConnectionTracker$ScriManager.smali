.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScriManager"
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final SCRI_2G:I = 0x2

.field public static final SCRI_3G:I = 0x1

.field public static final SCRI_CS_SESSION_ONGOING:I = 0x1

.field public static final SCRI_MAX_RETRY_COUNTER:I = 0x3

.field public static final SCRI_MAX_RETRY_TIMERS:I = 0x7530

.field public static final SCRI_NONE:I = 0x0

.field public static final SCRI_NOT_ALLOWED:I = 0x5

.field public static final SCRI_NO_PS_DATA_SESSION:I = 0x3

.field public static final SCRI_PS_SIGNALLING_ONGOING:I = 0x2

.field public static final SCRI_RAU_ENABLED:I = 0x6

.field public static final SCRI_REQ_NOT_SENT:I = 0x4

.field public static final SCRI_RESULT_REQ_SENT:I = 0x0

.field public static final STATE_ACTIVATED:I = 0x2

.field public static final STATE_ACTIVIATING:I = 0x1

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_RETRY:I = 0x3


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field public mFirstESCRIRAUFollowOnProceed:Z

.field private mGuardTimerExpired:Z

.field private mNwType:I

.field public mPeriodicRAUFollowOnProceedEnable:Z

.field private mPsSession:Z

.field private mScriAddCounter:I

.field private mScriDataCounter:I

.field public mScriGuardTimer:I

.field private mScriNeeded:Z

.field public mScriPollTimer:I

.field public mScriRetryCounter:I

.field public mScriRetryTimer:I

.field private mScriState:I

.field public mScriTriggerDataCounter:I

.field public mScriTriggerDataOffCounter:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3692
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3680
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mPeriodicRAUFollowOnProceedEnable:Z

    .line 3681
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mFirstESCRIRAUFollowOnProceed:Z

    .line 3690
    const-string v0, "GSM"

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->LOG_TAG:Ljava/lang/String;

    .line 3693
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriGuardTimer:I

    .line 3694
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriPollTimer:I

    .line 3695
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriDataCounter:I

    .line 3696
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    .line 3697
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriAddCounter:I

    .line 3698
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataCounter:I

    .line 3699
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataOffCounter:I

    .line 3700
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    .line 3701
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mPsSession:Z

    .line 3703
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriNeeded:Z

    .line 3704
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mGuardTimerExpired:Z

    .line 3705
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriState:I

    .line 3707
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mNwType:I

    .line 3708
    return-void
.end method


# virtual methods
.method public getPsSessionStatus()Z
    .locals 1

    .prologue
    .line 3786
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mPsSession:Z

    return v0
.end method

.method public getScriNwType(I)I
    .locals 4
    .parameter "networktype"

    .prologue
    .line 3807
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SCRI]getScriNwType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    const/4 v0, 0x0

    .line 3810
    .local v0, nwType:I
    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    .line 3811
    const/4 v0, 0x1

    .line 3819
    :goto_0
    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mNwType:I

    if-eq v1, v0, :cond_3

    .line 3821
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mNwType:I

    .line 3826
    :goto_1
    return v0

    .line 3812
    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 3813
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 3815
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3823
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getScriState()I
    .locals 1

    .prologue
    .line 3775
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriState:I

    return v0
.end method

.method public isDataTransmitting()Z
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 3831
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v7, v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriTxPkts:J

    .local v7, preTxPkts:J
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v5, v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriRxPkts:J

    .line 3833
    .local v5, preRxPkts:J
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3834
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 3836
    .local v0, curTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->updateTxRxSum()V

    .line 3837
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v10, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->txPkts:J

    iput-wide v10, v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriTxPkts:J

    .line 3838
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v10, v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;->rxPkts:J

    iput-wide v10, v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriRxPkts:J

    .line 3844
    .end local v0           #curTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;
    :goto_0
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SCRI]tx: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v11, v11, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriTxPkts:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SCRI]rx  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ==> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v11, v11, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriRxPkts:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v9, v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriTxPkts:J

    sub-long v3, v9, v7

    .line 3848
    .local v3, deltaTx:J
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-wide v9, v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriRxPkts:J

    sub-long v1, v9, v5

    .line 3849
    .local v1, deltaRx:J
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SCRI]delta rx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tx "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3851
    cmp-long v9, v3, v13

    if-gtz v9, :cond_0

    cmp-long v9, v1, v13

    if-lez v9, :cond_2

    :cond_0
    const/4 v9, 0x1

    :goto_1
    return v9

    .line 3840
    .end local v1           #deltaRx:J
    .end local v3           #deltaTx:J
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriTxPkts:J

    .line 3841
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriRxPkts:J

    goto/16 :goto_0

    .line 3851
    .restart local v1       #deltaRx:J
    .restart local v3       #deltaTx:J
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public isPollTimerTrigger(Z)Z
    .locals 4
    .parameter "isScreenOn"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3799
    if-eqz p1, :cond_2

    .line 3800
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriDataCounter:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataCounter:I

    if-lt v2, v3, :cond_1

    .line 3802
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3800
    goto :goto_0

    .line 3802
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriDataCounter:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataOffCounter:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3760
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriNeeded:Z

    .line 3761
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mGuardTimerExpired:Z

    .line 3762
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mPsSession:Z

    .line 3763
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    .line 3764
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriState:I

    .line 3765
    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriDataCounter:I

    .line 3766
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriPollTimer:I

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriAddCounter:I

    .line 3767
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriTimer()V

    .line 3768
    return-void
.end method

.method public setPsSessionStatus(Z)V
    .locals 1
    .parameter "hasPsSession"

    .prologue
    .line 3779
    if-eqz p1, :cond_0

    .line 3780
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    .line 3782
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mPsSession:Z

    .line 3783
    return-void
.end method

.method public setScriDataCount(Z)V
    .locals 3
    .parameter "reset"

    .prologue
    .line 3790
    if-nez p1, :cond_0

    .line 3791
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriDataCounter:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriAddCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriDataCounter:I

    .line 3795
    :goto_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SCRI]setScriDataCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriDataCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    return-void

    .line 3793
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriDataCounter:I

    goto :goto_0
.end method

.method public setScriState(I)V
    .locals 0
    .parameter "scriState"

    .prologue
    .line 3771
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriState:I

    .line 3772
    return-void
.end method

.method public setScriTimer()V
    .locals 9

    .prologue
    const/16 v8, 0x258

    const/16 v5, 0xe10

    const/16 v7, 0x14

    const/4 v6, 0x5

    .line 3712
    const/4 v1, 0x0

    .line 3713
    .local v1, str:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3717
    .local v2, val:Ljava/lang/Integer;
    :try_start_0
    const-string v3, "persist.radio.fd.guard.timer"

    const-string v4, "60"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3718
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3719
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v5, :cond_1

    :cond_0
    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3720
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriGuardTimer:I

    .line 3723
    const-string v3, "persist.radio.fd.poll.timer"

    const-string v4, "5"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3724
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3725
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v8, :cond_3

    :cond_2
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3726
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriAddCounter:I

    .line 3727
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriPollTimer:I

    .line 3730
    const-string v3, "persist.radio.fd.counter"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3731
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3732
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v5, :cond_5

    :cond_4
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3733
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataCounter:I

    .line 3736
    const-string v3, "persist.radio.fd.off.counter"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3737
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3738
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v5, :cond_7

    :cond_6
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3739
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataOffCounter:I

    .line 3742
    const-string v3, "persist.radio.fd.retry.timer"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3743
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3744
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v6, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v8, :cond_9

    :cond_8
    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3745
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    .line 3747
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SCRI] init value ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriGuardTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriPollTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataOffCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3757
    :goto_0
    return-void

    .line 3748
    :catch_0
    move-exception v0

    .line 3749
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3750
    const v3, 0xea60

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriGuardTimer:I

    .line 3751
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriPollTimer:I

    .line 3752
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataCounter:I

    .line 3753
    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataOffCounter:I

    .line 3754
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    .line 3755
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriAddCounter:I

    goto :goto_0
.end method
