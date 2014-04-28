.class public Lyi/phone/QualcommZXPhoneUtil;
.super Ljava/lang/Object;
.source "QualcommZXPhoneUtil.java"

# interfaces
.implements Lyi/phone/IPhoneUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lyi/phone/QualcommZXPhoneUtil;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 9
    .parameter "slot"

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, imei:Ljava/lang/String;
    iget-object v5, p0, Lyi/phone/QualcommZXPhoneUtil;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 54
    .local v3, tm:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 55
    .local v4, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getDeviceId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 56
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v4           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v5

    goto :goto_0

    .line 59
    :catch_1
    move-exception v5

    goto :goto_0

    .line 58
    :catch_2
    move-exception v5

    goto :goto_0

    .line 57
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 9
    .parameter "slot"

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, imsi:Ljava/lang/String;
    iget-object v5, p0, Lyi/phone/QualcommZXPhoneUtil;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 91
    .local v3, tm:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 92
    .local v4, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getSubscriberId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 93
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v4           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v5

    goto :goto_0

    .line 96
    :catch_1
    move-exception v5

    goto :goto_0

    .line 95
    :catch_2
    move-exception v5

    goto :goto_0

    .line 94
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public getNetOperaterName(I)Ljava/lang/String;
    .locals 9
    .parameter "slot"

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, result:Ljava/lang/String;
    iget-object v5, p0, Lyi/phone/QualcommZXPhoneUtil;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 132
    .local v3, tm:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 133
    .local v4, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "getNetworkOperatorName"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 134
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v4           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v5

    goto :goto_0

    .line 137
    :catch_1
    move-exception v5

    goto :goto_0

    .line 136
    :catch_2
    move-exception v5

    goto :goto_0

    .line 135
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public getOperatior(I)Ljava/lang/String;
    .locals 7
    .parameter "slot"

    .prologue
    .line 104
    :try_start_0
    iget-object v2, p0, Lyi/phone/QualcommZXPhoneUtil;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 105
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSimOperator"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v2

    .line 110
    :catch_0
    move-exception v2

    .line 112
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 109
    :catch_1
    move-exception v2

    goto :goto_1

    .line 108
    :catch_2
    move-exception v2

    goto :goto_1

    .line 107
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "slot"

    .prologue
    .line 117
    const-string v0, ""

    return-object v0
.end method

.method public isCompatable()Z
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 20
    iget-object v6, p0, Lyi/phone/QualcommZXPhoneUtil;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 21
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 23
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 24
    .local v4, method_getDeviceId:Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 25
    .local v0, MSimSmsManager_class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 28
    .local v2, isMultiSimEnable:Z
    :try_start_0
    const-string v6, "isMultiSimEnabled"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 29
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 37
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v9, "getDeviceId"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 38
    const-string v6, "android.telephony.MSimSmsManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 44
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    move v6, v7

    .line 47
    :goto_2
    return v6

    :cond_0
    move v6, v8

    goto :goto_2

    .line 41
    :catch_0
    move-exception v6

    goto :goto_1

    .line 40
    :catch_1
    move-exception v6

    goto :goto_1

    .line 39
    :catch_2
    move-exception v6

    goto :goto_1

    .line 33
    :catch_3
    move-exception v6

    goto :goto_0

    .line 32
    :catch_4
    move-exception v6

    goto :goto_0

    .line 31
    :catch_5
    move-exception v6

    goto :goto_0

    .line 30
    :catch_6
    move-exception v6

    goto :goto_0
.end method

.method public isSlotEnabled(I)Z
    .locals 9
    .parameter "slot"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, result:Z
    if-eqz p1, :cond_0

    if-eq v5, p1, :cond_0

    .line 84
    :goto_0
    return v4

    .line 71
    :cond_0
    iget-object v4, p0, Lyi/phone/QualcommZXPhoneUtil;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 74
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getSimState"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 75
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 76
    .local v2, simState:I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 77
    const/4 v1, 0x1

    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v2           #simState:I
    :cond_1
    :goto_1
    move v4, v1

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v4

    goto :goto_1

    .line 81
    :catch_1
    move-exception v4

    goto :goto_1

    .line 80
    :catch_2
    move-exception v4

    goto :goto_1

    .line 79
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slot"

    .prologue
    .line 122
    const/4 v6, 0x1

    .line 123
    .local v6, result:Z
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, sms:Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 125
    return v6
.end method
