.class public Lyi/phone/MTKZXPhoneUtil;
.super Ljava/lang/Object;
.source "MTKZXPhoneUtil.java"

# interfaces
.implements Lyi/phone/IPhoneUtil;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lyi/phone/MTKZXPhoneUtil;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 8
    .parameter "slot"

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 23
    .local v1, imei:Ljava/lang/String;
    :try_start_0
    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "getDefault"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 24
    .local v0, getDefaultManager:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 25
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 31
    .end local v0           #getDefaultManager:Ljava/lang/reflect/Method;
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v3

    goto :goto_0

    .line 28
    :catch_1
    move-exception v3

    goto :goto_0

    .line 27
    :catch_2
    move-exception v3

    goto :goto_0

    .line 26
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 8
    .parameter "slotNumber"

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 63
    .local v1, imsi:Ljava/lang/String;
    :try_start_0
    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "getDefault"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 64
    .local v0, getDefaultManager:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 65
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    .end local v0           #getDefaultManager:Ljava/lang/reflect/Method;
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v3

    goto :goto_0

    .line 68
    :catch_1
    move-exception v3

    goto :goto_0

    .line 67
    :catch_2
    move-exception v3

    goto :goto_0

    .line 66
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public getNetOperaterName(I)Ljava/lang/String;
    .locals 8
    .parameter "slot"

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 130
    .local v1, result:Ljava/lang/String;
    :try_start_0
    const-class v3, Landroid/telephony/TelephonyManager;

    const-string v4, "getDefault"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 131
    .local v0, getDefaultManager:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 132
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    .end local v0           #getDefaultManager:Ljava/lang/reflect/Method;
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v3

    goto :goto_0

    .line 135
    :catch_1
    move-exception v3

    goto :goto_0

    .line 134
    :catch_2
    move-exception v3

    goto :goto_0

    .line 133
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public getOperatior(I)Ljava/lang/String;
    .locals 1
    .parameter "slot"

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "slot"

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCompatable()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, getDefaultManager:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 104
    .local v1, getDefaultsmsManger:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v4, Landroid/telephony/TelephonyManager;

    const-string v5, "getDefault"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 105
    const-class v4, Landroid/telephony/SmsManager;

    const-string v5, "getDefault"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 112
    :goto_1
    return v2

    :cond_0
    move v2, v3

    goto :goto_1

    .line 107
    :catch_0
    move-exception v4

    goto :goto_0

    .line 106
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public isSlotEnabled(I)Z
    .locals 9
    .parameter "slotNumber"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, result:Z
    if-eqz p1, :cond_0

    if-eq v5, p1, :cond_0

    .line 54
    :goto_0
    return v4

    .line 43
    :cond_0
    :try_start_0
    const-class v4, Landroid/telephony/TelephonyManager;

    const-string v5, "getDefault"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    .local v0, getDefaultManager:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 45
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 46
    .local v2, simState:I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 47
    const/4 v1, 0x1

    .end local v0           #getDefaultManager:Ljava/lang/reflect/Method;
    .end local v2           #simState:I
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    move v4, v1

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v4

    goto :goto_1

    .line 51
    :catch_1
    move-exception v4

    goto :goto_1

    .line 50
    :catch_2
    move-exception v4

    goto :goto_1

    .line 49
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "slotNumber"

    .prologue
    .line 78
    const/4 v8, 0x1

    .line 82
    .local v8, result:Z
    :try_start_0
    const-class v1, Landroid/telephony/SmsManager;

    const-string v2, "getDefault"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 83
    .local v7, getDefaultManager:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v7, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;

    .local v0, smsManger:Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 84
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 96
    .end local v0           #smsManger:Landroid/telephony/SmsManager;
    .end local v7           #getDefaultManager:Ljava/lang/reflect/Method;
    .end local v8           #result:Z
    :goto_0
    return v8

    .line 86
    .restart local v8       #result:Z
    :catch_0
    move-exception v6

    .line 87
    .local v6, e:Ljava/lang/NoSuchMethodException;
    const/4 v8, 0x0

    goto :goto_0

    .line 88
    .end local v6           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v6

    .line 89
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const/4 v8, 0x0

    goto :goto_0

    .line 90
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 91
    .local v6, e:Ljava/lang/IllegalAccessException;
    const/4 v8, 0x0

    goto :goto_0

    .line 92
    .end local v6           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    .line 93
    .local v6, e:Ljava/lang/reflect/InvocationTargetException;
    const/4 v8, 0x0

    goto :goto_0
.end method
