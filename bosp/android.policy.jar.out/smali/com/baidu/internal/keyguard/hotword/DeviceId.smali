.class public final Lcom/baidu/internal/keyguard/hotword/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.java"


# static fields
.field private static final AES_KEY:Ljava/lang/String; = "30212102dicudiab"

.field private static final DEBUG:Z = false

.field private static final EXT_FILE:Ljava/lang/String; = "baidu/.cuid"

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "com.baidu.deviceid"

.field private static final KEY_IMEI:Ljava/lang/String; = "bd_setting_i"

.field private static final TAG:Ljava/lang/String; = "DeviceId"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static checkPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "permission"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 228
    .local v1, result:I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 229
    .local v0, allowedByPermission:Z
    :goto_0
    if-nez v0, :cond_1

    .line 230
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: requires permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    .end local v0           #allowedByPermission:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    .restart local v0       #allowedByPermission:Z
    :cond_1
    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 208
    const-string v0, ""

    .line 210
    .local v0, DEFAULT_ANDROID_ID:Ljava/lang/String;
    const-string v1, ""

    .line 213
    .local v1, androidId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string v1, ""

    .line 218
    :cond_0
    return-object v1
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 67
    const-string v7, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v7}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    const-string v7, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v7}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v7}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    const/4 v4, 0x0

    .line 74
    .local v4, sysRwFail:Z
    const-string v5, ""

    .line 76
    .local v5, tmDeviceId:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "bd_setting_i"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    if-nez v5, :cond_0

    .line 78
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "bd_setting_i"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, androidId:Ljava/lang/String;
    const-string v1, ""

    .line 99
    .local v1, bdDeviceId:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.baidu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v9}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->toMd5([BZ)Ljava/lang/String;

    move-result-object v7

    .line 171
    :goto_1
    return-object v7

    .line 83
    .end local v0           #androidId:Ljava/lang/String;
    .end local v1           #bdDeviceId:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 84
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "DeviceId"

    const-string v8, "Settings.System.getString or putString failed"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v4, 0x1

    goto :goto_0

    .line 107
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #androidId:Ljava/lang/String;
    .restart local v1       #bdDeviceId:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 110
    .local v3, oldName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.baidu.deviceid"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.baidu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v9}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->toMd5([BZ)Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.baidu.deviceid"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    invoke-static {v5, v1}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 137
    invoke-static {v5}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->getExternalDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.baidu.deviceid"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 152
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, uuid:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v9}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->toMd5([BZ)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.baidu.deviceid"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 168
    invoke-static {v5, v1}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6           #uuid:Ljava/lang/String;
    :cond_4
    move-object v7, v1

    .line 171
    goto/16 :goto_1
.end method

.method private static getExternalDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "imei"

    .prologue
    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 249
    const-string v1, ""

    .line 286
    :cond_0
    :goto_0
    return-object v1

    .line 252
    :cond_1
    const-string v1, ""

    .line 253
    .local v1, deviceId:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "baidu/.cuid"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .local v3, extFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 256
    .local v4, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 257
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v2, encodeStr:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 259
    .local v7, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 260
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v8, "\r\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 272
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #encodeStr:Ljava/lang/StringBuilder;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v7           #line:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 266
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #encodeStr:Ljava/lang/StringBuilder;
    .restart local v4       #fr:Ljava/io/FileReader;
    .restart local v7       #line:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 267
    new-instance v5, Ljava/lang/String;

    const-string v8, "30212102dicudiab"

    const-string v9, "30212102dicudiab"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/internal/keyguard/hotword/Base64;->decode([B)[B

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/baidu/internal/keyguard/hotword/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    .line 268
    .local v5, idStr:Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, kv:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 270
    const/4 v8, 0x1

    aget-object v1, v6, v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 280
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #encodeStr:Ljava/lang/StringBuilder;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v5           #idStr:Ljava/lang/String;
    .end local v6           #kv:[Ljava/lang/String;
    .end local v7           #line:Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_0

    .line 276
    :catch_2
    move-exception v8

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 182
    const-string v0, ""

    .line 184
    .local v0, DEFAULT_TM_DEVICEID:Ljava/lang/String;
    const-string v2, ""

    .line 188
    .local v2, tmDeviceId:Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 189
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const-string v2, ""

    .line 197
    :cond_0
    return-object v2
.end method

.method private static setExternalDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "imei"
    .parameter "deviceId"

    .prologue
    .line 300
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    :goto_0
    return-void

    .line 307
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v3, idSB:Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "baidu/.cuid"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v1, extFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 314
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 315
    .local v2, fw:Ljava/io/FileWriter;
    const-string v4, "30212102dicudiab"

    const-string v5, "30212102dicudiab"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/baidu/internal/keyguard/hotword/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/baidu/internal/keyguard/hotword/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, encoded:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 321
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 322
    .end local v0           #encoded:Ljava/lang/String;
    .end local v2           #fw:Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 326
    :catch_1
    move-exception v4

    goto :goto_0
.end method
