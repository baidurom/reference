.class public Lcom/baidu/internal/telephony/SMSPlugin;
.super Ljava/lang/Object;
.source "SMSPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMSPlugin"

.field public static discard:Z

.field public static msgAddress:Ljava/lang/String;

.field public static notReceiveTrafficMonitorMessageTime:J

.field public static receiveTrafficMonitorBroadcastTime:J

.field public static trafficMonitorOperatorNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 46
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/baidu/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:Ljava/lang/String;

    .line 47
    sput-wide v1, Lcom/baidu/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:J

    .line 48
    sput-wide v1, Lcom/baidu/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:J

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/internal/telephony/SMSPlugin;->discard:Z

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/internal/telephony/SMSPlugin;->msgAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baiduPrehandleMsg(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    .locals 5
    .parameter "mContext"
    .parameter "sms"

    .prologue
    .line 56
    new-instance v2, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    invoke-direct {v2}, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;-><init>()V

    .line 58
    .local v2, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, msgbody:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, msgAddress:Ljava/lang/String;
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    const/4 v4, 0x1

    iput v4, v2, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    move-object v3, v2

    .line 73
    .end local v2           #result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    .local v3, result:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 66
    .end local v3           #result:Ljava/lang/Object;
    .restart local v2       #result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    :cond_1
    invoke-static {p0, v1, v0}, Lcom/baidu/internal/telephony/SMSPlugin;->tryGetBaiduAccountVerifyCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    const/4 v4, 0x0

    iput v4, v2, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    move-object v3, v2

    .line 68
    .restart local v3       #result:Ljava/lang/Object;
    goto :goto_0

    .line 71
    .end local v3           #result:Ljava/lang/Object;
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->shouldPreventMMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    move-result-object v2

    move-object v3, v2

    .line 73
    .restart local v3       #result:Ljava/lang/Object;
    goto :goto_0
.end method

.method public static dispatchDisturbSmsPdu(Landroid/content/Context;[[BLjava/lang/String;II)V
    .locals 3
    .parameter "mContext"
    .parameter "pdus"
    .parameter "format"
    .parameter "reason"
    .parameter "subid"

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.sms.DISTURBANCE_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    const-string v1, "format"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "subid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    const-string v1, "SMSPlugin"

    const-string v2, "dispatchDisturbSmsPdu the disturb message is received,broadcaset to mms application"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public static dispatchDisturbWapPdu(Landroid/content/Context;Ljava/lang/String;[BII)V
    .locals 3
    .parameter "mContext"
    .parameter "mimeType"
    .parameter "intentData"
    .parameter "reason"
    .parameter "subId"

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.sms.DISTURBANCE_WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "address"

    sget-object v2, Lcom/baidu/internal/telephony/SMSPlugin;->msgAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 96
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "subid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    const-string v1, "SMSPlugin"

    const-string v2, "dispatchDisturbSmsPdu the disturb wap push message is received,broadcaset to anti disturb application"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public static dispatchTrafficMonitorSmsPdu(Landroid/content/Context;[[BLjava/lang/String;)V
    .locals 3
    .parameter "mContext"
    .parameter "pdus"
    .parameter "format"

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.sms.TRAFFIC_MONITOR_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 123
    const-string v1, "format"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    const-string v1, "SMSPlugin"

    const-string v2, "dispatchDisturbSmsPdu the disturb message is received,broadcaset to mms application"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public static getMmsNotiWapPushAddress([B)Ljava/lang/String;
    .locals 7
    .parameter "intentData"

    .prologue
    .line 103
    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v3, p0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 104
    .local v3, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    .line 105
    .local v0, gPdu:Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v1, 0x0

    .line 106
    .local v1, msgAddress:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v4

    .line 107
    .local v4, type:I
    const/16 v6, 0x82

    if-ne v4, v6, :cond_0

    move-object v2, v0

    .line 108
    check-cast v2, Lcom/google/android/mms/pdu/NotificationInd;

    .line 109
    .local v2, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 110
    .local v5, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .end local v2           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v5           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-object v1
.end method

.method public static shouldFilterForTrafficMonitor(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 5
    .parameter "context"
    .parameter "sms"

    .prologue
    const-wide/16 v3, 0x0

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, msgAddress:Ljava/lang/String;
    sget-object v1, Lcom/baidu/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/baidu/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-wide v1, Lcom/baidu/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/baidu/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/baidu/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 158
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static tryGetBaiduAccountVerifyCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "msg"
    .parameter "addr"

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #string@baidu_account_verify_code_bind#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, prefix_bind:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #string@baidu_account_verify_code_password#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, prefix_password:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v3

    .line 139
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    :cond_2
    const-string v3, "SMSPlugin"

    const-string/jumbo v4, "this msg is about BaiduAccount, broadcast it!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.baidu.sms.ACCOUNT_BIND_VCODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "MESSAGE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    const/4 v3, 0x1

    goto :goto_0
.end method
