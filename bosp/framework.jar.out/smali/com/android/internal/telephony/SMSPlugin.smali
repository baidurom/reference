.class public Lcom/android/internal/telephony/SMSPlugin;
.super Ljava/lang/Object;
.source "SMSPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMSPlugin"

.field public static discard:[Z

.field public static msgAddress:[Ljava/lang/String;

.field public static notReceiveTrafficMonitorMessageTime:[J

.field public static receiveTrafficMonitorBroadcastTime:[J

.field public static trafficMonitorOperatorNumber:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 39
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:[Ljava/lang/String;

    .line 40
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:[J

    .line 41
    new-array v0, v2, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:[J

    .line 42
    new-array v0, v2, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->discard:[Z

    .line 43
    new-array v0, v2, [Ljava/lang/String;

    aput-object v5, v0, v3

    aput-object v5, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    return-void

    .line 40
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchDisturbWapPdu(Landroid/content/Context;Ljava/lang/String;[BII)V
    .locals 4
    .parameter "context"
    .parameter "mimeType"
    .parameter "intentData"
    .parameter "reason"
    .parameter "subId"

    .prologue
    .line 164
    const-string v2, "SMSPlugin"

    const-string/jumbo v3, "this msg is about Junk, broadcast it!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move v0, p4

    .line 166
    .local v0, defaultSubId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.sms.DISTURBANCE_WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v2, "address"

    sget-object v3, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 173
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string/jumbo v2, "subid"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method public static getMmsNotiWapPushAddress([B)Ljava/lang/String;
    .locals 8
    .parameter "intentData"

    .prologue
    .line 179
    const/4 v3, 0x0

    .line 181
    .local v3, msgAddr:Ljava/lang/String;
    :try_start_0
    const-string v4, "com.baidu.android.mms.MMSPlugin"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 182
    .local v1, clazz:Ljava/lang/Class;
    const-string v4, "getMmsNotiWapPushAddress"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 183
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 187
    :catch_0
    move-exception v4

    goto :goto_0

    .line 186
    :catch_1
    move-exception v4

    goto :goto_0

    .line 185
    :catch_2
    move-exception v4

    goto :goto_0

    .line 184
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static isBaiduAccountSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "msgAddr"
    .parameter "msgBody"

    .prologue
    const/4 v2, 0x0

    .line 120
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v2

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #string@baidu_account_verify_code_bind#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, prefix_bind:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #string@baidu_account_verify_code_password#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, prefix_password:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isTrafficMonitorSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "context"
    .parameter "msgAddr"
    .parameter "msgBody"
    .parameter "subId"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 144
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    move v0, p3

    .line 149
    .local v0, defaultSubId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 150
    const/4 v0, 0x0

    .line 153
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/android/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:[J

    aget-wide v4, v4, v0

    sub-long/2addr v2, v4

    sget-object v4, Lcom/android/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 157
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static prehandleMsg(Landroid/content/Context;[[BLjava/lang/String;I)Z
    .locals 12
    .parameter "context"
    .parameter "pdus"
    .parameter "format"
    .parameter "subId"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 56
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v8, v9

    .line 111
    :cond_1
    :goto_0
    return v8

    .line 61
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, body:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 63
    .local v4, msgAddr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 64
    .local v7, sms:Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v10, p1

    if-ge v2, v10, :cond_4

    .line 65
    aget-object v10, p1, v2

    invoke-static {v10, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 66
    iget-object v10, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v10, :cond_3

    .line 67
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    if-nez v2, :cond_3

    .line 69
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 64
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, msgBody:Ljava/lang/String;
    invoke-static {p0, v4, v5}, Lcom/android/internal/telephony/SMSPlugin;->isBaiduAccountSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 76
    const-string v9, "SMSPlugin"

    const-string/jumbo v10, "this msg is about BaiduAccount, broadcast it!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.baidu.sms.ACCOUNT_BIND_VCODE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "MESSAGE"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {p0, v4, v5, p3}, Lcom/android/internal/telephony/SMSPlugin;->isTrafficMonitorSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 84
    const-string v10, "SMSPlugin"

    const-string/jumbo v11, "this msg is about TrafficMonitor, broadcast it!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    move v1, p3

    .line 86
    .local v1, defaultSubId:I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_6

    .line 87
    const/4 v1, 0x0

    .line 89
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.baidu.sms.TRAFFIC_MONITOR_SMS_RECEIVED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .restart local v3       #intent:Landroid/content/Intent;
    const-string/jumbo v10, "pdus"

    invoke-virtual {v3, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 91
    const-string v10, "format"

    invoke-virtual {v3, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string/jumbo v10, "subscription"

    invoke-virtual {v3, v10, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    sget-object v10, Lcom/android/internal/telephony/SMSPlugin;->discard:[Z

    aget-boolean v10, v10, v1

    if-nez v10, :cond_1

    .line 99
    .end local v1           #defaultSubId:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    invoke-static {p0, v4, v5}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->shouldPreventMMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    move-result-object v6

    .line 100
    .local v6, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    iget v10, v6, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    if-ne v10, v8, :cond_8

    .line 101
    const-string v9, "SMSPlugin"

    const-string/jumbo v10, "this msg is about Junk, broadcast it!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.baidu.sms.DISTURBANCE_SMS_RECEIVED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v3       #intent:Landroid/content/Intent;
    const-string/jumbo v9, "pdus"

    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    const-string v9, "format"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v9, "reason"

    iget v10, v6, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->reason:I

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string/jumbo v9, "subid"

    invoke-virtual {v3, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    move v8, v9

    .line 111
    goto/16 :goto_0
.end method
