.class public Lcom/baidu/customization/ExternalOverlayHelper;
.super Ljava/lang/Object;
.source "ExternalOverlayHelper.java"


# static fields
.field private static final BASE_PATHS:[Ljava/lang/String; = null

.field private static final BASE_PATH_PHONE:Ljava/lang/String; = "/system/etc/baidu/"

.field private static final BASE_PATH_SDCARD:Ljava/lang/String; = null

.field private static final CONF_FILENAME:Ljava/lang/String; = "cust.conf"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJAD76zTIC8rnwqY2kC02bTMht9qZWrAIvjlsMfOrB6jezMLjLQZA4AMx0ktOidreUcV7F61crlqMvNXLdzYVjcCAwEAAQ=="

.field private static final SIG_FILENAME:Ljava/lang/String; = "cust.sig"

.field private static final TAG:Ljava/lang/String; = "ExternalOverlayHelper"

.field private static mCheckedFile:Z

.field private static mLoggable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.overlaybaidu/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/customization/ExternalOverlayHelper;->BASE_PATH_SDCARD:Ljava/lang/String;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/etc/baidu/"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/baidu/customization/ExternalOverlayHelper;->BASE_PATH_SDCARD:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/customization/ExternalOverlayHelper;->BASE_PATHS:[Ljava/lang/String;

    .line 30
    sput-boolean v3, Lcom/baidu/customization/ExternalOverlayHelper;->mCheckedFile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 145
    .local v0, keyBytes:[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 146
    .local v2, keySpec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 147
    .local v1, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 148
    .local v3, publicKey:Ljava/security/PublicKey;
    return-object v3
.end method

.method private static getmd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "content"

    .prologue
    .line 127
    const/4 v4, 0x0

    .line 129
    .local v4, sb:Ljava/lang/StringBuffer;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 130
    .local v2, md5:Ljava/security/MessageDigest;
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 131
    .local v3, mdbytes:[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 133
    aget-byte v6, v3, v1

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 138
    .end local v1           #i:I
    .end local v2           #md5:Ljava/security/MessageDigest;
    .end local v3           #mdbytes:[B
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4           #sb:Ljava/lang/StringBuffer;
    const-string v6, "12345"

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v4       #sb:Ljava/lang/StringBuffer;
    goto :goto_1

    .line 135
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .restart local v1       #i:I
    .restart local v2       #md5:Ljava/security/MessageDigest;
    .restart local v3       #mdbytes:[B
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5           #sb:Ljava/lang/StringBuffer;
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    goto :goto_2
.end method

.method public static isLoggable()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 38
    const-string v1, "ExternalOverlayHelper"

    const-string v2, "in isLoggable()."

    invoke-static {v1, v2}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-boolean v1, Lcom/baidu/customization/ExternalOverlayHelper;->mCheckedFile:Z

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "ExternalOverlayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return result is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/baidu/customization/ExternalOverlayHelper;->mLoggable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-boolean v1, Lcom/baidu/customization/ExternalOverlayHelper;->mLoggable:Z

    .line 52
    .local v0, i:I
    :goto_0
    return v1

    .line 43
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/customization/ExternalOverlayHelper;->mLoggable:Z

    .line 44
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    sget-object v1, Lcom/baidu/customization/ExternalOverlayHelper;->BASE_PATHS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/baidu/customization/ExternalOverlayHelper;->BASE_PATHS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cust.conf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/customization/ExternalOverlayHelper;->BASE_PATHS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cust.sig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/customization/ExternalOverlayHelper;->isrealLoggable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    sput-boolean v4, Lcom/baidu/customization/ExternalOverlayHelper;->mLoggable:Z

    .line 50
    :cond_1
    sput-boolean v4, Lcom/baidu/customization/ExternalOverlayHelper;->mCheckedFile:Z

    .line 51
    const-string v1, "ExternalOverlayHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after check return result is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/baidu/customization/ExternalOverlayHelper;->mLoggable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-boolean v1, Lcom/baidu/customization/ExternalOverlayHelper;->mLoggable:Z

    goto :goto_0

    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isrealLoggable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .parameter "conf_filename"
    .parameter "sig_filename"

    .prologue
    .line 57
    const/4 v14, 0x0

    .line 58
    .local v14, loggable:Z
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, confFile:Ljava/io/File;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v15, sigFile:Ljava/io/File;
    const/4 v5, 0x0

    .line 61
    .local v5, confReader:Ljava/io/BufferedReader;
    const/16 v16, 0x0

    .line 62
    .local v16, sigReader:Ljava/io/BufferedReader;
    const-string v19, "ExternalOverlayHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " in try read"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 66
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 67
    .end local v5           #confReader:Ljava/io/BufferedReader;
    .local v6, confReader:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 68
    .local v8, content:Ljava/lang/String;
    const/4 v10, 0x0

    .line 69
    .local v10, digest:Ljava/lang/String;
    const/4 v2, 0x0

    .line 70
    .local v2, baiduSig:Ljava/lang/String;
    :try_start_1
    const-string v19, "ExternalOverlayHelper"

    const-string v20, "in try."

    invoke-static/range {v19 .. v20}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v7, conf_sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 73
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    goto :goto_0

    .line 103
    .end local v7           #conf_sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v11

    move-object v5, v6

    .line 104
    .end local v2           #baiduSig:Ljava/lang/String;
    .end local v6           #confReader:Ljava/io/BufferedReader;
    .end local v8           #content:Ljava/lang/String;
    .end local v10           #digest:Ljava/lang/String;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    .local v11, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-eqz v5, :cond_0

    .line 112
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 114
    :cond_0
    if-eqz v16, :cond_1

    .line 115
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 123
    .end local v11           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return v14

    .line 76
    .end local v5           #confReader:Ljava/io/BufferedReader;
    .restart local v2       #baiduSig:Ljava/lang/String;
    .restart local v6       #confReader:Ljava/io/BufferedReader;
    .restart local v7       #conf_sb:Ljava/lang/StringBuffer;
    .restart local v8       #content:Ljava/lang/String;
    .restart local v10       #digest:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/baidu/customization/ExternalOverlayHelper;->getmd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 77
    const-string v19, "ExternalOverlayHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "get content ok."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v19, "ExternalOverlayHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "get md5 ok."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    .line 81
    .end local v16           #sigReader:Ljava/io/BufferedReader;
    .local v17, sigReader:Ljava/io/BufferedReader;
    :try_start_5
    const-string v19, "RSA"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 82
    .local v3, cipher:Ljavax/crypto/Cipher;
    const/16 v19, 0x2

    const-string v20, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJAD76zTIC8rnwqY2kC02bTMht9qZWrAIvjlsMfOrB6jezMLjLQZA4AMx0ktOidreUcV7F61crlqMvNXLdzYVjcCAwEAAQ=="

    invoke-static/range {v20 .. v20}, Lcom/baidu/customization/ExternalOverlayHelper;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 83
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v18, sig_sb:Ljava/lang/StringBuffer;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 85
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 103
    .end local v2           #baiduSig:Ljava/lang/String;
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v18           #sig_sb:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #sigReader:Ljava/io/BufferedReader;
    .restart local v16       #sigReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #confReader:Ljava/io/BufferedReader;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 87
    .end local v5           #confReader:Ljava/io/BufferedReader;
    .end local v16           #sigReader:Ljava/io/BufferedReader;
    .restart local v2       #baiduSig:Ljava/lang/String;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v6       #confReader:Ljava/io/BufferedReader;
    .restart local v17       #sigReader:Ljava/io/BufferedReader;
    .restart local v18       #sig_sb:Ljava/lang/StringBuffer;
    :cond_3
    const-string v19, "ExternalOverlayHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sig content is:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "#"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v9

    .line 89
    .local v9, deBytes:[B
    new-instance v2, Ljava/lang/String;

    .end local v2           #baiduSig:Ljava/lang/String;
    invoke-direct {v2, v9}, Ljava/lang/String;-><init>([B)V

    .line 91
    .restart local v2       #baiduSig:Ljava/lang/String;
    const-string v19, "ExternalOverlayHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "read ok!digest:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "# sig is:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz v10, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 93
    new-instance v13, Lorg/json/JSONObject;

    new-instance v19, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v13, json:Lorg/json/JSONObject;
    const-string v19, "IMEI"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, imei:Ljava/lang/String;
    const-string v19, "ExternalOverlayHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "imei:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/16 v19, 0x1

    sput-boolean v19, Lcom/baidu/customization/ExternalOverlayHelper;->mLoggable:Z

    .line 98
    const-string v19, "ExternalOverlayHelper"

    const-string v20, "loggable is true"

    invoke-static/range {v19 .. v20}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 111
    .end local v12           #imei:Ljava/lang/String;
    .end local v13           #json:Lorg/json/JSONObject;
    :goto_4
    if-eqz v6, :cond_4

    .line 112
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 114
    :cond_4
    if-eqz v17, :cond_5

    .line 115
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    move-object/from16 v16, v17

    .end local v17           #sigReader:Ljava/io/BufferedReader;
    .restart local v16       #sigReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 119
    .end local v6           #confReader:Ljava/io/BufferedReader;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 100
    .end local v5           #confReader:Ljava/io/BufferedReader;
    .end local v16           #sigReader:Ljava/io/BufferedReader;
    .restart local v6       #confReader:Ljava/io/BufferedReader;
    .restart local v17       #sigReader:Ljava/io/BufferedReader;
    :cond_6
    :try_start_7
    const-string v19, "ExternalOverlayHelper"

    const-string v20, "loggable is false"

    invoke-static/range {v19 .. v20}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_4

    .line 105
    .end local v2           #baiduSig:Ljava/lang/String;
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v9           #deBytes:[B
    .end local v18           #sig_sb:Ljava/lang/StringBuffer;
    :catch_2
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #sigReader:Ljava/io/BufferedReader;
    .restart local v16       #sigReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 106
    .end local v6           #confReader:Ljava/io/BufferedReader;
    .end local v7           #conf_sb:Ljava/lang/StringBuffer;
    .end local v8           #content:Ljava/lang/String;
    .end local v10           #digest:Ljava/lang/String;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    .local v11, e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 111
    if-eqz v5, :cond_7

    .line 112
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 114
    :cond_7
    if-eqz v16, :cond_1

    .line 115
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_2

    .line 117
    :catch_3
    move-exception v11

    .line 118
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 117
    .end local v5           #confReader:Ljava/io/BufferedReader;
    .end local v11           #e:Ljava/io/IOException;
    .end local v16           #sigReader:Ljava/io/BufferedReader;
    .restart local v2       #baiduSig:Ljava/lang/String;
    .restart local v3       #cipher:Ljavax/crypto/Cipher;
    .restart local v6       #confReader:Ljava/io/BufferedReader;
    .restart local v7       #conf_sb:Ljava/lang/StringBuffer;
    .restart local v8       #content:Ljava/lang/String;
    .restart local v9       #deBytes:[B
    .restart local v10       #digest:Ljava/lang/String;
    .restart local v17       #sigReader:Ljava/io/BufferedReader;
    .restart local v18       #sig_sb:Ljava/lang/StringBuffer;
    :catch_4
    move-exception v11

    .line 118
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v16, v17

    .end local v17           #sigReader:Ljava/io/BufferedReader;
    .restart local v16       #sigReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .line 121
    .end local v6           #confReader:Ljava/io/BufferedReader;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 117
    .end local v2           #baiduSig:Ljava/lang/String;
    .end local v3           #cipher:Ljavax/crypto/Cipher;
    .end local v7           #conf_sb:Ljava/lang/StringBuffer;
    .end local v8           #content:Ljava/lang/String;
    .end local v9           #deBytes:[B
    .end local v10           #digest:Ljava/lang/String;
    .end local v18           #sig_sb:Ljava/lang/StringBuffer;
    .local v11, e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v11

    .line 118
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 107
    .end local v11           #e:Ljava/io/IOException;
    :catch_6
    move-exception v11

    .line 108
    .local v11, e:Ljava/lang/Exception;
    :goto_6
    :try_start_a
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 111
    if-eqz v5, :cond_8

    .line 112
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 114
    :cond_8
    if-eqz v16, :cond_1

    .line 115
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_2

    .line 117
    :catch_7
    move-exception v11

    .line 118
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 110
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 111
    :goto_7
    if-eqz v5, :cond_9

    .line 112
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 114
    :cond_9
    if-eqz v16, :cond_a

    .line 115
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 119
    :cond_a
    :goto_8
    throw v19

    .line 117
    :catch_8
    move-exception v11

    .line 118
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 110
    .end local v5           #confReader:Ljava/io/BufferedReader;
    .end local v11           #e:Ljava/io/IOException;
    .restart local v2       #baiduSig:Ljava/lang/String;
    .restart local v6       #confReader:Ljava/io/BufferedReader;
    .restart local v8       #content:Ljava/lang/String;
    .restart local v10       #digest:Ljava/lang/String;
    :catchall_1
    move-exception v19

    move-object v5, v6

    .end local v6           #confReader:Ljava/io/BufferedReader;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    goto :goto_7

    .end local v2           #baiduSig:Ljava/lang/String;
    .end local v5           #confReader:Ljava/io/BufferedReader;
    .end local v16           #sigReader:Ljava/io/BufferedReader;
    .restart local v6       #confReader:Ljava/io/BufferedReader;
    .restart local v7       #conf_sb:Ljava/lang/StringBuffer;
    .restart local v17       #sigReader:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v19

    move-object/from16 v16, v17

    .end local v17           #sigReader:Ljava/io/BufferedReader;
    .restart local v16       #sigReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #confReader:Ljava/io/BufferedReader;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    goto :goto_7

    .line 107
    .end local v5           #confReader:Ljava/io/BufferedReader;
    .end local v7           #conf_sb:Ljava/lang/StringBuffer;
    .restart local v2       #baiduSig:Ljava/lang/String;
    .restart local v6       #confReader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v11

    move-object v5, v6

    .end local v6           #confReader:Ljava/io/BufferedReader;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    goto :goto_6

    .end local v2           #baiduSig:Ljava/lang/String;
    .end local v5           #confReader:Ljava/io/BufferedReader;
    .end local v16           #sigReader:Ljava/io/BufferedReader;
    .restart local v6       #confReader:Ljava/io/BufferedReader;
    .restart local v7       #conf_sb:Ljava/lang/StringBuffer;
    .restart local v17       #sigReader:Ljava/io/BufferedReader;
    :catch_a
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #sigReader:Ljava/io/BufferedReader;
    .restart local v16       #sigReader:Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6           #confReader:Ljava/io/BufferedReader;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 105
    .end local v7           #conf_sb:Ljava/lang/StringBuffer;
    .end local v8           #content:Ljava/lang/String;
    .end local v10           #digest:Ljava/lang/String;
    :catch_b
    move-exception v11

    goto :goto_5

    .end local v5           #confReader:Ljava/io/BufferedReader;
    .restart local v2       #baiduSig:Ljava/lang/String;
    .restart local v6       #confReader:Ljava/io/BufferedReader;
    .restart local v8       #content:Ljava/lang/String;
    .restart local v10       #digest:Ljava/lang/String;
    :catch_c
    move-exception v11

    move-object v5, v6

    .end local v6           #confReader:Ljava/io/BufferedReader;
    .restart local v5       #confReader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 103
    .end local v2           #baiduSig:Ljava/lang/String;
    .end local v8           #content:Ljava/lang/String;
    .end local v10           #digest:Ljava/lang/String;
    :catch_d
    move-exception v11

    goto/16 :goto_1
.end method
