.class Lcom/android/internal/telephony/SMSDispatcher$1;
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
    .line 2173
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->hasNotifiedForWapPushSetting:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2178
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.mediatek.cu_wap_push_permission_cancel"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2179
    const-string v8, "SMS"

    const-string v9, "receive cancel intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 2181
    .local v3, notiMgr:Landroid/app/NotificationManager;
    if-eqz v3, :cond_1

    .line 2182
    const-string v8, "SMS"

    const-string v9, "cancel wap push setting notification"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const/16 v8, 0x1387

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2218
    .end local v3           #notiMgr:Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 2185
    .restart local v3       #notiMgr:Landroid/app/NotificationManager;
    :cond_1
    const-string v8, "SMS"

    const-string v9, "fail to create notiMgr by mContext"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2187
    .end local v3           #notiMgr:Landroid/app/NotificationManager;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.internal.telephony.etws"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2188
    const-string v8, "simId"

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v9, v9, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2189
    .local v2, etws_sim:I
    const-string v8, "SMS"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive EVENT_ETWS_ALARM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v8

    if-ne v2, v8, :cond_0

    .line 2191
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v8, v8, Lcom/android/internal/telephony/SMSDispatcher;->mCellBroadcastFwkExt:Lcom/android/internal/telephony/ICellBroadcastFwkExt;

    new-instance v9, Lcom/android/internal/telephony/EtwsNotification;

    invoke-direct {v9}, Lcom/android/internal/telephony/EtwsNotification;-><init>()V

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ICellBroadcastFwkExt;->closeEtwsChannel(Lcom/android/internal/telephony/EtwsNotification;)V

    .line 2192
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v8}, Lcom/android/internal/telephony/SMSDispatcher;->stopEtwsAlarm()V

    goto :goto_0

    .line 2198
    .end local v2           #etws_sim:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$1;->getResultCode()I

    move-result v6

    .line 2199
    .local v6, rc:I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    :cond_4
    const/4 v7, 0x1

    .line 2202
    .local v7, success:Z
    :goto_1
    const-string v8, "rTime"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2203
    .local v4, rTime:J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    .line 2204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2205
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

    .line 2206
    sub-long v8, v0, v4

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v10, 0x8

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 2207
    const-string v8, "SMS"

    const-string v9, "APP process too long"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2199
    .end local v0           #curTime:J
    .end local v4           #rTime:J
    .end local v7           #success:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 2212
    .restart local v0       #curTime:J
    .restart local v4       #rTime:J
    .restart local v7       #success:Z
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v6, v9}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0
.end method
