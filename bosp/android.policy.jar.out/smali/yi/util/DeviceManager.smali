.class public Lyi/util/DeviceManager;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# static fields
.field private static final CHUNLEI_CODE:Ljava/lang/String; = "chunleiCode"

.field private static final CHUNLEI_ID:Ljava/lang/String; = "chunleiUid"

.field private static final DATA_PATH:Ljava/lang/String; = "/data/data"

.field private static final DATA_SUB_PATH:Ljava/lang/String; = "/data/data/register"

.field private static final DEVICE_BACKPANEL:I = 0x1

.field private static final DEVICE_SCREEN:I = 0x0

.field private static final FILE_NAME:Ljava/lang/String; = "/register_info.xml"

.field private static final REGINFO_URL:Ljava/lang/String; = "content://com.baidu.register.provider/"

.field private static final SETTINGS_KEY_DIGEST_CHUNLEI_UID:Ljava/lang/String; = "digest_chunleiUid"


# instance fields
.field private destFilePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lyi/util/DeviceManager;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private createNewFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "privateFile"
    .parameter "IMEI"
    .parameter "password"

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, out:Ljava/io/FileOutputStream;
    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 97
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 98
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 121
    .end local v3           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 101
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v3       #out:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v4, sf:Ljava/lang/StringBuffer;
    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8 \"?>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v5, "<response>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<ChunleiUid>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</ChunleiUid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<ChunleiCode>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</ChunleiCode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v5, "</response>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 109
    .local v0, bin:Ljava/io/ByteArrayInputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 110
    .local v1, buf:[B
    const/4 v2, 0x0

    .line 111
    .local v2, n:I
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 112
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 118
    .end local v0           #bin:Ljava/io/ByteArrayInputStream;
    .end local v1           #buf:[B
    .end local v2           #n:I
    .end local v3           #out:Ljava/io/FileOutputStream;
    .end local v4           #sf:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 114
    .restart local v0       #bin:Ljava/io/ByteArrayInputStream;
    .restart local v1       #buf:[B
    .restart local v2       #n:I
    .restart local v3       #out:Ljava/io/FileOutputStream;
    .restart local v4       #sf:Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 115
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 116
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lyi/util/DeviceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lyi/phone/IPhoneUtil$Creator;->getInstance(Landroid/content/Context;)Lyi/phone/IPhoneUtil;

    move-result-object v0

    .line 232
    .local v0, phoneUtil:Lyi/phone/IPhoneUtil;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lyi/phone/IPhoneUtil;->getIMEI(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMotionEventSource(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter "event"

    .prologue
    .line 62
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBmsDevice()Z
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/BaiduCamera.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isScreenMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 66
    invoke-static {p0}, Lyi/util/DeviceManager;->getMotionEventSource(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChunleiUid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, info:Ljava/lang/String;
    :try_start_0
    const-string v4, "content://com.baidu.register.provider/chunleiUid"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 131
    .local v2, queryurl:Landroid/net/Uri;
    iget-object v4, p0, Lyi/util/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 132
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    .end local v2           #queryurl:Landroid/net/Uri;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "in or out strean exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDestFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lyi/util/DeviceManager;->destFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 157
    const-string v1, ""

    .line 159
    .local v1, info:Ljava/lang/String;
    :try_start_0
    const-string v4, "content://com.baidu.register.provider/chunleiUid"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 160
    .local v2, queryurl:Landroid/net/Uri;
    iget-object v4, p0, Lyi/util/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 161
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 162
    if-nez v1, :cond_0

    iget-object v4, p0, Lyi/util/DeviceManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 163
    invoke-direct {p0}, Lyi/util/DeviceManager;->getIMEI()Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_0
    if-nez v1, :cond_1

    .line 166
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v2           #queryurl:Landroid/net/Uri;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "in or out strean exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDeviceKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 181
    const-string v1, ""

    .line 183
    .local v1, info:Ljava/lang/String;
    :try_start_0
    const-string v4, "content://com.baidu.register.provider/chunleiCode"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 184
    .local v2, queryurl:Landroid/net/Uri;
    iget-object v4, p0, Lyi/util/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 185
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-nez v1, :cond_0

    .line 187
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2           #queryurl:Landroid/net/Uri;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return-object v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "in or out strean exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDigestChunleiUid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lyi/util/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "digest_chunleiUid"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, digestChunleiUid:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 148
    .end local v0           #digestChunleiUid:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    const-string v1, ""

    .line 204
    .local v1, line1Number:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lyi/util/DeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Line1Number"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-nez v1, :cond_0

    .line 206
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    .line 210
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "in or out strean exception"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "IMEI"
    .parameter "password"

    .prologue
    .line 79
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/data"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, dataDir:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/data/register"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, dataSubDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 83
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/register/register_info.xml"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, dataFile:Ljava/io/File;
    invoke-direct {p0, v1, p1, p2}, Lyi/util/DeviceManager;->createNewFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0           #dataDir:Ljava/io/File;
    .end local v1           #dataFile:Ljava/io/File;
    .end local v2           #dataSubDir:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, e:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "file not found exception"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
