.class public Lcom/android/phone/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneMemoryFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/android/phone/FileUtils;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/FileUtils;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/FileUtils;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSdCardFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/android/phone/FileUtils;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/FileUtils;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/FileUtils;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSecondaryStorageDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, result:Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/android/phone/SecondaryStorageReflect;->getSecondaryExternalStorageDirectory()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FileUtils"

    const-string v3, "No ExtSdCard"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isExternalStorageAvailable()Z
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isExternalStorageRemovable()Z
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0
.end method

.method public static isPhoneMemoryAvailable()Z
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/android/phone/FileUtils;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/FileUtils;->isExternalStorageAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/FileUtils;->isSecondaryStorageAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSdCardAvailable()Z
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/android/phone/FileUtils;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/FileUtils;->isExternalStorageAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/FileUtils;->isSecondaryStorageAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSecondaryStorageAvailable()Z
    .locals 4

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Lcom/android/phone/SecondaryStorageReflect;->getSecondaryExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    :goto_0
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FileUtils"

    const-string v3, "No ExtSdCard"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
