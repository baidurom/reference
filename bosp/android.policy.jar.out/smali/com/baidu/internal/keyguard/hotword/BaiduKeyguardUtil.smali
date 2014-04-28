.class public Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;
.super Ljava/lang/Object;
.source "BaiduKeyguardUtil.java"


# static fields
.field public static final CLIENT_SECRET_KEY:Ljava/lang/String; = "hotword_lock"

.field public static final DEFAULT_TN:Ljava/lang/String; = "1000466m"

.field public static final DEFAULT_TRADEID:Ljava/lang/String; = "1005777u"

.field private static final HEXCHAR:[C = null

.field private static final SEPERATER_FOR_KEY:C = '|'

.field private static final TAG:Ljava/lang/String; = "BaiduKeyguardUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->HEXCHAR:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gZip([B)[B
    .locals 4
    .parameter "data"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, b:[B
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 201
    .local v3, gzip:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 202
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 203
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 204
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 205
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #gzip:Ljava/util/zip/GZIPOutputStream;
    :goto_0
    return-object v0

    .line 206
    :catch_0
    move-exception v2

    .line 207
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/DeviceId;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, imei:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    const-string v1, "0"

    .line 189
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, uid:Ljava/lang/String;
    return-object v3
.end method

.method public static getClientKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "type"
    .parameter "clientIp"
    .parameter "timestamp"

    .prologue
    const/16 v2, 0x7c

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "hotword_lock"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getMD5([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->getMD5([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getGzipInputStream(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 6
    .parameter "resEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 214
    .local v1, header:Lorg/apache/http/Header;
    const/4 v0, 0x0

    .line 215
    .local v0, contentEncoding:Ljava/lang/String;
    const/4 v2, 0x0

    .line 216
    .local v2, inputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v3, "BaiduKeyguardUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contentEncoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 220
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .end local v2           #inputStream:Ljava/io/InputStream;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 224
    .restart local v2       #inputStream:Ljava/io/InputStream;
    :cond_0
    return-object v2
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 10
    .parameter "useIPv4"

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    .line 52
    .local v5, interfaces:Ljava/util/List;,"Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 53
    .local v6, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    .local v1, addrs:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 55
    .local v0, addr:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    .line 56
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, sAddr:Ljava/lang/String;
    invoke-static {v8}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v7

    .line 58
    .local v7, isIPv4:Z
    if-eqz p0, :cond_3

    .line 59
    if-eqz v7, :cond_1

    .line 73
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrs:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #interfaces:Ljava/util/List;,"Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v6           #intf:Ljava/net/NetworkInterface;
    .end local v7           #isIPv4:Z
    .end local v8           #sAddr:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v8

    .line 62
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v1       #addrs:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #interfaces:Ljava/util/List;,"Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v6       #intf:Ljava/net/NetworkInterface;
    .restart local v7       #isIPv4:Z
    .restart local v8       #sAddr:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_1

    .line 63
    const/16 v9, 0x25

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 65
    .local v2, delim:I
    if-ltz v2, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 71
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #addrs:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2           #delim:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #interfaces:Ljava/util/List;,"Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v6           #intf:Ljava/net/NetworkInterface;
    .end local v7           #isIPv4:Z
    .end local v8           #sAddr:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 73
    :cond_4
    const-string v8, ""

    goto :goto_0
.end method

.method public static getMD5([B)Ljava/lang/String;
    .locals 4
    .parameter "plainText"

    .prologue
    .line 113
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 114
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 117
    .local v0, b:[B
    invoke-static {v0}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 120
    .end local v0           #b:[B
    .end local v2           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 120
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 159
    const-string v7, ""

    .line 160
    .local v7, uid:Ljava/lang/String;
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    move-result-object v0

    .line 161
    .local v0, mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "uid"

    aput-object v1, v2, v8

    .line 164
    .local v2, projection:[Ljava/lang/String;
    const-string v1, "config"

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    .local v6, configCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 168
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 170
    :cond_0
    if-eqz v6, :cond_1

    .line 172
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_1
    :goto_0
    const-string v1, "BaiduKeyguardUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-object v7

    .line 173
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 136
    const-string v7, ""

    .line 137
    .local v7, uuid:Ljava/lang/String;
    invoke-static {p0}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;

    move-result-object v0

    .line 138
    .local v0, mDbhelp:Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "uuid"

    aput-object v1, v2, v8

    .line 141
    .local v2, projection:[Ljava/lang/String;
    const-string v1, "config"

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/internal/keyguard/hotword/HotwordSQLiteOpenHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    .local v6, configCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 145
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 147
    :cond_0
    if-eqz v6, :cond_1

    .line 149
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_1
    :goto_0
    const-string v1, "BaiduKeyguardUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-object v7

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4
    .parameter "byt"

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 88
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->HEXCHAR:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    sget-object v2, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->HEXCHAR:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toHexString([BLjava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "bytes"
    .parameter "separator"
    .parameter "upperCase"

    .prologue
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v2, hexString:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-byte v1, v0, v3

    .line 99
    .local v1, b:B
    and-int/lit16 v6, v1, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, str:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 103
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 104
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v1           #b:B
    .end local v5           #str:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static toMd5([BZ)Ljava/lang/String;
    .locals 4
    .parameter "bytes"
    .parameter "upperCase"

    .prologue
    .line 126
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 127
    .local v0, algorithm:Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 128
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 129
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/baidu/internal/keyguard/hotword/BaiduKeyguardUtil;->toHexString([BLjava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 130
    .end local v0           #algorithm:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
