.class public Lcom/baidu/customization/PreferenceOverlayHelper;
.super Ljava/lang/Object;
.source "PreferenceOverlayHelper.java"


# static fields
.field private static final KEY_FIRST_DEFAULT_SUFFIX:Ljava/lang/String; = "_1def"

.field private static final KEY_FIRST_USED_SUFFIX:Ljava/lang/String; = "_1st"

.field private static final KEY_FROM_CUST_SUFFIX:Ljava/lang/String; = "_cust"

.field private static final TAG:Ljava/lang/String; = "PreferenceOverlayHelper"


# instance fields
.field private mAppPref:Landroid/content/SharedPreferences;

.field private mContext:Landroid/content/Context;

.field private mCustPref:Landroid/content/SharedPreferences;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mPackageName:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    .line 29
    invoke-direct {p0}, Lcom/baidu/customization/PreferenceOverlayHelper;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "pref_file_name"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mPackageName:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    .line 37
    invoke-direct {p0}, Lcom/baidu/customization/PreferenceOverlayHelper;->init()V

    .line 38
    return-void
.end method

.method private copyFile(Ljava/io/File;)V
    .locals 10
    .parameter "toFile"

    .prologue
    .line 61
    const/4 v5, 0x0

    .line 62
    .local v5, inStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 64
    .local v3, fout:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, Parent:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 67
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 68
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 69
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 71
    :cond_0
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 72
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 73
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/baidu/customization/PreferenceOverlayHelper;->getAbsoluteSystemSharedPrefCustFileLPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 74
    .end local v5           #inStream:Ljava/io/InputStream;
    .local v6, inStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 75
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .local v4, fout:Ljava/io/FileOutputStream;
    const/16 v8, 0x2000

    :try_start_2
    new-array v1, v8, [B

    .line 76
    .local v1, buffer:[B
    const/4 v7, -0x1

    .line 77
    .local v7, read_length:I
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 78
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 81
    .end local v1           #buffer:[B
    .end local v7           #read_length:I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 82
    .end local v0           #Parent:Ljava/io/File;
    .end local v6           #inStream:Ljava/io/InputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v5       #inStream:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    const-string v8, "PreferenceOverlayHelper"

    const-string v9, "copy file error."

    invoke-static {v8, v9}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    if-eqz v5, :cond_1

    .line 87
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_1
    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 98
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 86
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v5           #inStream:Ljava/io/InputStream;
    .restart local v0       #Parent:Ljava/io/File;
    .restart local v1       #buffer:[B
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    .restart local v6       #inStream:Ljava/io/InputStream;
    .restart local v7       #read_length:I
    :cond_3
    if-eqz v6, :cond_4

    .line 87
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_4
    if-eqz v4, :cond_5

    .line 90
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v3, v4

    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 94
    .end local v6           #inStream:Ljava/io/InputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    goto :goto_2

    .line 92
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v5           #inStream:Ljava/io/InputStream;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    .restart local v6       #inStream:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 93
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 96
    .end local v6           #inStream:Ljava/io/InputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    goto :goto_2

    .line 92
    .end local v0           #Parent:Ljava/io/File;
    .end local v1           #buffer:[B
    .end local v7           #read_length:I
    :catch_2
    move-exception v2

    .line 93
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 85
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 86
    :goto_3
    if-eqz v5, :cond_6

    .line 87
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_6
    if-eqz v3, :cond_7

    .line 90
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 94
    :cond_7
    :goto_4
    throw v8

    .line 92
    :catch_3
    move-exception v2

    .line 93
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 85
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #inStream:Ljava/io/InputStream;
    .restart local v0       #Parent:Ljava/io/File;
    .restart local v6       #inStream:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #inStream:Ljava/io/InputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    goto :goto_3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v5           #inStream:Ljava/io/InputStream;
    .restart local v4       #fout:Ljava/io/FileOutputStream;
    .restart local v6       #inStream:Ljava/io/InputStream;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6           #inStream:Ljava/io/InputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    goto :goto_3

    .line 81
    .end local v0           #Parent:Ljava/io/File;
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v5           #inStream:Ljava/io/InputStream;
    .restart local v0       #Parent:Ljava/io/File;
    .restart local v6       #inStream:Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6           #inStream:Ljava/io/InputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private init()V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/customization/PreferenceOverlayHelper;->getAbsoluteAppSharedPrefCustFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, toFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-direct {p0, v0}, Lcom/baidu/customization/PreferenceOverlayHelper;->copyFile(Ljava/io/File;)V

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_cust"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method


# virtual methods
.method public getAbsoluteAppSharedPrefCustFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_cust.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAbsoluteSystemSharedPrefCustFileLPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/etc/baidu/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shared_prefs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pref.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 10
    .parameter "key"
    .parameter "default_value"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_1st"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, key_first_used:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_1def"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, key_first_default:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_cust"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, key_from_cust:Ljava/lang/String;
    const-string v5, "PreferenceOverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "first_used value from cust is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v6, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 145
    .local v4, value:Z
    const-string v5, "PreferenceOverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1st :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 161
    .end local v4           #value:Z
    :goto_0
    return-object v5

    .line 148
    :cond_0
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, v3, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 151
    .local v0, first_default_value:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 152
    .local v4, value:Ljava/lang/Boolean;
    const-string v5, "PreferenceOverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first default cust value :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pref value is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-eq v4, v0, :cond_1

    .line 155
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 158
    :cond_1
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 161
    .end local v0           #first_default_value:Ljava/lang/Boolean;
    .end local v4           #value:Ljava/lang/Boolean;
    :cond_2
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 10
    .parameter "key"
    .parameter "default_value"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_1st"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, key_first_used:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_1def"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, key_first_default:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_cust"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, key_from_cust:Ljava/lang/String;
    const-string v5, "PreferenceOverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "first_used value from cust is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v6, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 178
    .local v4, value:I
    const-string v5, "PreferenceOverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1st :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v4           #value:I
    :goto_0
    return v4

    .line 181
    :cond_0
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    const/high16 v6, -0x8000

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, first_default_value:I
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 184
    .restart local v4       #value:I
    const-string v5, "PreferenceOverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first default cust value :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pref value is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-eq v4, v0, :cond_1

    .line 187
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v3, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    .line 190
    :cond_1
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    .line 193
    .end local v0           #first_default_value:I
    .end local v4           #value:I
    :cond_2
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "key"
    .parameter "default_value"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_1st"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, key_first_used:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_1def"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, key_first_default:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_cust"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, key_from_cust:Ljava/lang/String;
    const-string v5, "PreferenceOverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "first_used :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v6, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, value:Ljava/lang/String;
    const-string v5, "PreferenceOverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1st :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v4           #value:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 115
    :cond_0
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, first_default_value:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    .restart local v4       #value:Ljava/lang/String;
    const-string v5, "PreferenceOverlayHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first default cust value :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pref value is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/customization/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    if-eqz v4, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 122
    :cond_2
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v3, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 125
    :cond_3
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mCustPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 128
    .end local v0           #first_default_value:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/baidu/customization/PreferenceOverlayHelper;->mAppPref:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
