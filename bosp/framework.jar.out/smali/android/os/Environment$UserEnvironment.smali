.class public Landroid/os/Environment$UserEnvironment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserEnvironment"
.end annotation


# instance fields
.field private final mExternalStorage:Ljava/io/File;

.field private final mExternalStorageAndroidData:Ljava/io/File;

.field private final mExternalStorageAndroidMedia:Ljava/io/File;

.field private final mExternalStorageAndroidObb:Ljava/io/File;

.field private final mMediaStorage:Ljava/io/File;

.field private final mSecondaryStorage:Ljava/io/File;


# direct methods
.method public constructor <init>(I)V
    .locals 13
    .parameter "userId"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const-string v7, "EXTERNAL_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, rawExternalStorage:Ljava/lang/String;
    const-string v7, "EMULATED_STORAGE_TARGET"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, rawEmulatedStorageTarget:Ljava/lang/String;
    const-string v7, "MEDIA_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, rawMediaStorage:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 140
    const-string v4, "/data/media"

    .line 143
    :cond_0
    const-string v7, "SECONDARY_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, rawSecondaryStorage:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 145
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mSecondaryStorage:Ljava/io/File;

    .line 151
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, rawUserId:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, emulatedBase:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, mediaBase:Ljava/io/File;
    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v7}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    .line 161
    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, v7}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    .line 176
    .end local v0           #emulatedBase:Ljava/io/File;
    .end local v1           #mediaBase:Ljava/io/File;
    .end local v6           #rawUserId:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v8, v12, [Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v9, v8, v10

    const-string/jumbo v9, "obb"

    aput-object v9, v8, v11

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v7, v8}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    .line 177
    iget-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v8, v12, [Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v9, v8, v10

    const-string v9, "data"

    aput-object v9, v8, v11

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v7, v8}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    .line 178
    iget-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    new-array v8, v12, [Ljava/lang/String;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_ANDROID:Ljava/lang/String;

    aput-object v9, v8, v10

    const-string/jumbo v9, "media"

    aput-object v9, v8, v11

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v7, v8}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidMedia:Ljava/io/File;

    .line 179
    return-void

    .line 147
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mSecondaryStorage:Ljava/io/File;

    .line 148
    const-string v7, "Environment"

    const-string v8, "SECONDARY_STORAGE undefined; return null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 166
    const-string v7, "Environment"

    const-string v8, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v3, "/storage/sdcard0"

    .line 171
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    .line 173
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    goto :goto_1
.end method


# virtual methods
.method public getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 218
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppDataDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 202
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 214
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppMediaDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 206
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidMedia:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 210
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageObbDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 194
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    return-object v0
.end method

.method public getSecondaryExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mSecondaryStorage:Ljava/io/File;

    return-object v0
.end method
