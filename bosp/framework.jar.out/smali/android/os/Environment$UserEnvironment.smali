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

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v7, "EXTERNAL_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, rawExternalStorage:Ljava/lang/String;
    const-string v7, "EMULATED_STORAGE_TARGET"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, rawEmulatedStorageTarget:Ljava/lang/String;
    const-string v7, "MEDIA_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, rawMediaStorage:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 133
    const-string v4, "/data/media"

    .line 136
    :cond_0
    const-string v7, "SECONDARY_STORAGE"

    invoke-static {v7}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, rawSecondaryStorage:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 138
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mSecondaryStorage:Ljava/io/File;

    .line 144
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, rawUserId:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, emulatedBase:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, mediaBase:Ljava/io/File;
    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v0, v7}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    .line 154
    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    #calls: Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    invoke-static {v1, v7}, Landroid/os/Environment;->access$000(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    .line 169
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

    .line 170
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

    .line 171
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

    .line 172
    return-void

    .line 140
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mSecondaryStorage:Ljava/io/File;

    .line 141
    const-string v7, "Environment"

    const-string v8, "SECONDARY_STORAGE undefined; return null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 159
    const-string v7, "Environment"

    const-string v8, "EXTERNAL_STORAGE undefined; falling back to default"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v3, "/storage/sdcard0"

    .line 164
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    .line 166
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    goto :goto_1
.end method


# virtual methods
.method public getExternalStorageAndroidDataDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 211
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
    .line 195
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidData:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 207
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
    .line 199
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidMedia:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageAppObbDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "packageName"

    .prologue
    .line 203
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStorageObbDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorageAndroidObb:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "type"

    .prologue
    .line 187
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/os/Environment$UserEnvironment;->mExternalStorage:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mMediaStorage:Ljava/io/File;

    return-object v0
.end method

.method public getSecondaryExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/os/Environment$UserEnvironment;->mSecondaryStorage:Ljava/io/File;

    return-object v0
.end method
