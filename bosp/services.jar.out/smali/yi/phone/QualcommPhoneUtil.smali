.class public Lyi/phone/QualcommPhoneUtil;
.super Ljava/lang/Object;
.source "QualcommPhoneUtil.java"

# interfaces
.implements Lyi/phone/IPhoneUtil;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lyi/phone/QualcommPhoneUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyi/phone/QualcommPhoneUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lyi/phone/QualcommPhoneUtil;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getIMEI(I)Ljava/lang/String;
    .locals 9
    .parameter "slot"

    .prologue
    const/4 v5, 0x0

    .line 22
    :try_start_0
    const-string v4, "android.telephony.MSimTelephonyManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 24
    .local v3, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getDefault"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 25
    .local v0, getDefaultMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 26
    .local v2, telephonyManager:Ljava/lang/Object;
    const-string v4, "getDeviceId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 28
    .local v1, getIMEIMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0           #getDefaultMethod:Ljava/lang/reflect/Method;
    .end local v1           #getIMEIMethod:Ljava/lang/reflect/Method;
    .end local v2           #telephonyManager:Ljava/lang/Object;
    .end local v3           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 33
    :catch_0
    move-exception v4

    :goto_1
    move-object v4, v5

    .line 35
    goto :goto_0

    .line 32
    :catch_1
    move-exception v4

    goto :goto_1

    .line 31
    :catch_2
    move-exception v4

    goto :goto_1

    .line 30
    :catch_3
    move-exception v4

    goto :goto_1

    .line 29
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 9
    .parameter "slotNumber"

    .prologue
    const/4 v5, 0x0

    .line 103
    :try_start_0
    const-string v4, "android.telephony.MSimTelephonyManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 105
    .local v3, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getDefault"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    .local v0, getDefaultMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 107
    .local v2, telephonyManager:Ljava/lang/Object;
    const-string v4, "getSubscriberId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 108
    .local v1, getIMSIMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0           #getDefaultMethod:Ljava/lang/reflect/Method;
    .end local v1           #getIMSIMethod:Ljava/lang/reflect/Method;
    .end local v2           #telephonyManager:Ljava/lang/Object;
    .end local v3           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 114
    :catch_0
    move-exception v4

    :goto_1
    move-object v4, v5

    .line 116
    goto :goto_0

    .line 113
    :catch_1
    move-exception v4

    goto :goto_1

    .line 112
    :catch_2
    move-exception v4

    goto :goto_1

    .line 111
    :catch_3
    move-exception v4

    goto :goto_1

    .line 110
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method public getNetOperaterName(I)Ljava/lang/String;
    .locals 10
    .parameter "slot"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, result:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eq v7, p1, :cond_0

    .line 205
    :goto_0
    return-object v6

    .line 188
    :cond_0
    :try_start_0
    const-string v6, "android.telephony.MSimTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 191
    .local v5, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 192
    .local v1, getDefaultMethod:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 195
    .local v4, telephonyManager:Ljava/lang/Object;
    const-string v6, "getNetworkOperatorName"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 196
    .local v2, getPhoneStateMethod:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v1           #getDefaultMethod:Ljava/lang/reflect/Method;
    .end local v2           #getPhoneStateMethod:Ljava/lang/reflect/Method;
    .end local v4           #telephonyManager:Ljava/lang/Object;
    .end local v5           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    sget-object v6, Lyi/phone/QualcommPhoneUtil;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v3

    .line 205
    goto :goto_0

    .line 201
    :catch_0
    move-exception v6

    goto :goto_1

    .line 200
    :catch_1
    move-exception v6

    goto :goto_1

    .line 199
    :catch_2
    move-exception v6

    goto :goto_1

    .line 198
    :catch_3
    move-exception v6

    goto :goto_1

    .line 197
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method public getOperatior(I)Ljava/lang/String;
    .locals 9
    .parameter "slot"

    .prologue
    const/4 v5, 0x0

    .line 145
    :try_start_0
    const-string v4, "android.telephony.MSimTelephonyManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 146
    .local v3, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getDefault"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 147
    .local v0, getDefaultMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, telephonyManager:Ljava/lang/Object;
    const-string v4, "getSimOperator"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 150
    .local v1, getPhoneOperatorMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0           #getDefaultMethod:Ljava/lang/reflect/Method;
    .end local v1           #getPhoneOperatorMethod:Ljava/lang/reflect/Method;
    .end local v2           #telephonyManager:Ljava/lang/Object;
    .end local v3           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 156
    :catch_0
    move-exception v4

    :goto_1
    move-object v4, v5

    .line 158
    goto :goto_0

    .line 155
    :catch_1
    move-exception v4

    goto :goto_1

    .line 154
    :catch_2
    move-exception v4

    goto :goto_1

    .line 153
    :catch_3
    move-exception v4

    goto :goto_1

    .line 152
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 9
    .parameter "slot"

    .prologue
    const/4 v5, 0x0

    .line 164
    :try_start_0
    const-string v4, "android.telephony.MSimTelephonyManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 166
    .local v3, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getDefault"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 167
    .local v0, getDefaultMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 168
    .local v2, telephonyManager:Ljava/lang/Object;
    const-string v4, "getLine1Number"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 169
    .local v1, getPhoneNumberMethod:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0           #getDefaultMethod:Ljava/lang/reflect/Method;
    .end local v1           #getPhoneNumberMethod:Ljava/lang/reflect/Method;
    .end local v2           #telephonyManager:Ljava/lang/Object;
    .end local v3           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v4

    .line 174
    :catch_0
    move-exception v4

    :goto_1
    move-object v4, v5

    .line 176
    goto :goto_0

    .line 173
    :catch_1
    move-exception v4

    goto :goto_1

    .line 172
    :catch_2
    move-exception v4

    goto :goto_1

    .line 171
    :catch_3
    move-exception v4

    goto :goto_1

    .line 170
    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method public isCompatable()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    .local v5, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 123
    .local v6, yidmc2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 125
    .local v2, isMultiSimEnable:Ljava/lang/Boolean;
    :try_start_0
    const-string v7, "android.telephony.MSimSmsManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 126
    const-string v7, "android.telephony.MSimTelephonyManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 128
    iget-object v7, p0, Lyi/phone/QualcommPhoneUtil;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 129
    .local v4, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 130
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v7, "isMultiSimEnabled"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 131
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_0
    move v7, v8

    goto :goto_1

    .line 136
    :catch_0
    move-exception v7

    goto :goto_0

    .line 135
    :catch_1
    move-exception v7

    goto :goto_0

    .line 134
    :catch_2
    move-exception v7

    goto :goto_0

    .line 133
    :catch_3
    move-exception v7

    goto :goto_0

    .line 132
    :catch_4
    move-exception v7

    goto :goto_0
.end method

.method public isSlotEnabled(I)Z
    .locals 10
    .parameter "smsNumber"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, result:Z
    if-eqz p1, :cond_0

    if-eq v7, p1, :cond_0

    .line 66
    :goto_0
    return v6

    .line 47
    :cond_0
    :try_start_0
    const-string v6, "android.telephony.MSimTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 50
    .local v5, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    .local v0, getDefaultMethod:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 54
    .local v4, telephonyManager:Ljava/lang/Object;
    const-string v6, "getSimState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    .local v1, getPhoneStateMethod:Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 56
    .local v3, simState:I
    const/4 v6, 0x5

    if-ne v3, v6, :cond_1

    .line 57
    const/4 v2, 0x1

    .end local v0           #getDefaultMethod:Ljava/lang/reflect/Method;
    .end local v1           #getPhoneStateMethod:Ljava/lang/reflect/Method;
    .end local v3           #simState:I
    .end local v4           #telephonyManager:Ljava/lang/Object;
    .end local v5           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    move v6, v2

    .line 66
    goto :goto_0

    .line 63
    :catch_0
    move-exception v6

    goto :goto_1

    .line 62
    :catch_1
    move-exception v6

    goto :goto_1

    .line 61
    :catch_2
    move-exception v6

    goto :goto_1

    .line 60
    :catch_3
    move-exception v6

    goto :goto_1

    .line 59
    :catch_4
    move-exception v6

    goto :goto_1
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "smscardNumber"

    .prologue
    .line 72
    const/4 v3, 0x1

    .line 76
    .local v3, result:Z
    :try_start_0
    const-string v6, "android.telephony.MSimSmsManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 77
    .local v5, yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 78
    .local v2, method_getSmsManager:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, smssender:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "sendTextMessage"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-class v10, Landroid/app/PendingIntent;

    aput-object v10, v8, v9

    const/4 v9, 0x5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 84
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    aput-object p5, v6, v7

    const/4 v7, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 97
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #method_getSmsManager:Ljava/lang/reflect/Method;
    .end local v3           #result:Z
    .end local v4           #smssender:Ljava/lang/Object;
    .end local v5           #yidmc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v3

    .line 86
    .restart local v3       #result:Z
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const/4 v3, 0x0

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 91
    .local v0, e:Ljava/lang/IllegalAccessException;
    const/4 v3, 0x0

    goto :goto_0

    .line 92
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const/4 v3, 0x0

    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method
