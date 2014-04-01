.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasNotifiedForWapPushSetting:Z

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->hasNotifiedForWapPushSetting:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1563
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1564
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 1565
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 1623
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1567
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 1568
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_0

    .line 1569
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.provider.Telephony.CB_SMS_RECEIVED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1571
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.mediatek.cu_wap_push_permission_cancel"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1572
    const-string v8, "SMS"

    const-string/jumbo v9, "receive cancel intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1574
    .local v3, notiMgr:Landroid/app/NotificationManager;
    if-eqz v3, :cond_3

    .line 1575
    const-string v8, "SMS"

    const-string v9, "cancel wap push setting notification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    const/16 v8, 0x1387

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 1578
    :cond_3
    const-string v8, "SMS"

    const-string v9, "fail to create notiMgr by mContext"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1580
    .end local v3           #notiMgr:Landroid/app/NotificationManager;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1581
    const-string v8, "SMS"

    const-string/jumbo v9, "siminfo has been updated"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->hasNotifiedForWapPushSetting:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1583
    const-string v8, "SMS"

    const-string/jumbo v9, "wap push setting notification has done"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1586
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->hasNotifiedForWapPushSetting:Z

    .line 1592
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher;->isCuVersion()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mSimId:I

    if-nez v8, :cond_0

    .line 1593
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher;->checkWapPushSettingStatus()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v2, 0x1

    .line 1594
    .local v2, hasUnsetSim:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 1596
    const-string v8, "SMS"

    const-string/jumbo v9, "send delayed message for wap push noti"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v10, 0x6e

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x3a98

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1593
    .end local v2           #hasUnsetSim:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 1604
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$2;->getResultCode()I

    move-result v6

    .line 1605
    .local v6, rc:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_8

    const/4 v8, 0x1

    if-ne v6, v8, :cond_9

    :cond_8
    const/4 v7, 0x1

    .line 1608
    .local v7, success:Z
    :goto_2
    const-string/jumbo v8, "rTime"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1609
    .local v4, rTime:J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    .line 1610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1611
    .local v0, curTime:J
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CNMA elplased time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v0, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    sub-long v8, v0, v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x8

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    .line 1613
    const-string v8, "SMS"

    const-string v9, "APP process too long"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1605
    .end local v0           #curTime:J
    .end local v4           #rTime:J
    .end local v7           #success:Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 1617
    .restart local v0       #curTime:J
    .restart local v4       #rTime:J
    .restart local v7       #success:Z
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v6, v9}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0
.end method
