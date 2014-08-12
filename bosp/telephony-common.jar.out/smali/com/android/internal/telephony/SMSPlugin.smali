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

    .line 38
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->trafficMonitorOperatorNumber:[Ljava/lang/String;

    .line 39
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->receiveTrafficMonitorBroadcastTime:[J

    .line 40
    new-array v0, v2, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->notReceiveTrafficMonitorMessageTime:[J

    .line 41
    new-array v0, v2, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->discard:[Z

    .line 42
    new-array v0, v2, [Ljava/lang/String;

    aput-object v5, v0, v3

    aput-object v5, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    return-void

    .line 39
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 40
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
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
    .line 162
    const-string v2, "SMSPlugin"

    const-string v3, "this msg is about Junk, broadcast it!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move v0, p4

    .line 164
    .local v0, defaultSubId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 167
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.sms.DISTURBANCE_WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v2, "address"

    sget-object v3, Lcom/android/internal/telephony/SMSPlugin;->msgAddress:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 171
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v2, "subid"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public static getMmsNotiWapPushAddress([B)Ljava/lang/String;
    .locals 8
    .parameter "intentData"

    .prologue
    .line 177
    const/4 v3, 0x0

    .line 179
    .local v3, msgAddr:Ljava/lang/String;
    :try_start_0
    const-string v4, "com.baidu.android.mms.MMSPlugin"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 180
    .local v1, clazz:Ljava/lang/Class;
    const-string v4, "getMmsNotiWapPushAddress"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [B

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 181
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

    .line 187
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 185
    :catch_0
    move-exception v4

    goto :goto_0

    .line 184
    :catch_1
    move-exception v4

    goto :goto_0

    .line 183
    :catch_2
    move-exception v4

    goto :goto_0

    .line 182
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

    .line 118
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #string@baidu_account_verify_code_bind#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, prefix_bind:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #string@baidu_account_verify_code_password#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, prefix_password:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
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

    .line 142
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    move v0, p3

    .line 147
    .local v0, defaultSubId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 148
    const/4 v0, 0x0

    .line 151
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

    .line 155
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

    .line 55
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v8, v9

    .line 109
    :cond_1
    :goto_0
    return v8

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, body:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 62
    .local v4, msgAddr:Ljava/lang/String;
    const/4 v7, 0x0

    .line 63
    .local v7, sms:Landroid/telephony/SmsMessage;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v10, p1

    if-ge v2, v10, :cond_4

    .line 64
    aget-object v10, p1, v2

    invoke-static {v10, p2}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 65
    iget-object v10, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v10, :cond_3

    .line 66
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    if-nez v2, :cond_3

    .line 68
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 63
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, msgBody:Ljava/lang/String;
    invoke-static {p0, v4, v5}, Lcom/android/internal/telephony/SMSPlugin;->isBaiduAccountSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 75
    const-string v9, "SMSPlugin"

    const-string v10, "this msg is about BaiduAccount, broadcast it!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.baidu.sms.ACCOUNT_BIND_VCODE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "MESSAGE"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 82
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {p0, v4, v5, p3}, Lcom/android/internal/telephony/SMSPlugin;->isTrafficMonitorSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 83
    const-string v10, "SMSPlugin"

    const-string v11, "this msg is about TrafficMonitor, broadcast it!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    move v1, p3

    .line 85
    .local v1, defaultSubId:I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_6

    .line 86
    const/4 v1, 0x0

    .line 88
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.baidu.sms.TRAFFIC_MONITOR_SMS_RECEIVED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "pdus"

    invoke-virtual {v3, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    const-string v10, "format"

    invoke-virtual {v3, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 92
    sget-object v10, Lcom/android/internal/telephony/SMSPlugin;->discard:[Z

    aget-boolean v10, v10, v1

    if-nez v10, :cond_1

    .line 97
    .end local v1           #defaultSubId:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    invoke-static {p0, v4, v5}, Lcom/baidu/internal/telephony/DisturbPreventUtils;->shouldPreventMMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;

    move-result-object v6

    .line 98
    .local v6, result:Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;
    iget v10, v6, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->result:I

    if-ne v10, v8, :cond_8

    .line 99
    const-string v9, "SMSPlugin"

    const-string v10, "this msg is about Junk, broadcast it!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.baidu.sms.DISTURBANCE_SMS_RECEIVED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "pdus"

    invoke-virtual {v3, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    const-string v9, "format"

    invoke-virtual {v3, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v9, "reason"

    iget v10, v6, Lcom/baidu/internal/telephony/DisturbPreventUtils$BlockResult;->reason:I

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v9, "subid"

    invoke-virtual {v3, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    move v8, v9

    .line 109
    goto/16 :goto_0
.end method
