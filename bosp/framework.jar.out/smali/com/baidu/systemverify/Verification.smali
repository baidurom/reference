.class public Lcom/baidu/systemverify/Verification;
.super Ljava/lang/Object;
.source "Verification.java"


# static fields
.field private static final ADDED:I = 0x1

.field private static final CHANGED:I = 0x3

.field private static final FRAMEWORK_YI:Ljava/lang/String; = "/system/framework/framework-res-yi.apk"

.field private static final PATH_CHANGE_HASHFILE:Ljava/lang/String; = "data/data/verification/changeHashFile.dat"

.field private static final PATH_LAST_UPLOAD_HASHFILE:Ljava/lang/String; = "data/data/verification/lastUploadHashFile.dat"

.field private static final PATH_RM_SYSTEMAPPS_FILE_PATH:Ljava/lang/String; = "/system/usr/share/applist"

.field private static final REMOVED:I = 0x2

.field private static final SHA1_FILE:Ljava/lang/String; = "res/raw/signatures.dat"

.field private static final TAG:Ljava/lang/String;

.field private static skipFiles:[Ljava/lang/String;


# instance fields
.field private mChangeHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mLastSourceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/systemverify/Utils$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResults:Ljava/lang/StringBuilder;

.field private mSourceHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/systemverify/Utils$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private skipFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private verifyResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v0, Lcom/baidu/systemverify/Verification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/framework/framework-res-yi.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/etc/install-recovery.sh"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/recovery-from-boot.p"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/etc/channel"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/bin/test"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/system/bin/["

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/app/BaiduMap.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/system/app/BaiduVideoPlayer.apk"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/system/app/BaiduMusicPlayer.apk"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/system/app/BaiduReader.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/system/app/BaiduTheme.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/system/app/BaiduNotepad.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/system/app/BaiduSoundRecorder.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "/system/app/BaiduWeather.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "/system/app/Calculator.apk"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "/system/app/BaiduMap.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "/system/app/BaiduVideoPlayer.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "/system/app/BaiduMusicPlayer.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "/system/app/BaiduReader.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "/system/app/BaiduTheme.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "/system/app/BaiduNotepad.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "/system/app/BaiduSoundRecorder.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "/system/app/BaiduWeather.odex"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "/system/app/Calculator.odex"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/systemverify/Verification;->skipFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/systemverify/Verification;->verifyResult:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/systemverify/Verification;->mChangeHashMap:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/systemverify/Verification;->skipFileList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    return-void
.end method

.method private checkLinkFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 11
    .parameter "fileName"
    .parameter "file"

    .prologue
    const/4 v10, 0x3

    const/4 v5, 0x1

    const-wide/16 v2, -0x1

    .line 148
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, path:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/systemverify/Utils$FileInfo;

    .line 150
    .local v7, fileInfo:Lcom/baidu/systemverify/Utils$FileInfo;
    const/4 v4, 0x0

    .line 152
    .local v4, objFilename:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 156
    :goto_0
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enter checkLinkFile() fileName:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "  objFilename:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-nez v7, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    .line 173
    :goto_1
    return-void

    .line 153
    :catch_0
    move-exception v6

    .line 154
    .local v6, e:Ljava/io/IOException;
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v6           #e:Ljava/io/IOException;
    :cond_0
    iget-wide v0, v7, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v5, v10

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    .line 172
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, v7, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v5, v10

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_2
.end method

.method private checkRemoved()V
    .locals 10

    .prologue
    .line 176
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v1, "enter checkRemoved()"

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 180
    .local v9, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 181
    .local v6, fileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/systemverify/Utils$FileInfo;

    .line 182
    .local v8, info:Lcom/baidu/systemverify/Utils$FileInfo;
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRemoved() : remove file is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v8, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    iget-object v4, v8, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_0

    .line 186
    .end local v6           #fileName:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #info:Lcom/baidu/systemverify/Utils$FileInfo;
    .end local v9           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private isLastUpload(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 9
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "hashValueString"

    .prologue
    const/4 v8, 0x0

    .line 251
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v1, "enter isLastUpload()"

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 254
    .local v7, result:Ljava/lang/Boolean;
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/systemverify/Utils$FileInfo;

    .line 258
    .local v6, fileInfo:Lcom/baidu/systemverify/Utils$FileInfo;
    if-nez v6, :cond_2

    .line 259
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->updateHash(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;)V

    .line 260
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 272
    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLastUpload result is:fileName is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 262
    :cond_2
    iget-wide v0, v6, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_3

    .line 263
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->updateHash(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;)V

    .line 264
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    .line 266
    :cond_3
    if-eqz p4, :cond_1

    iget-object v0, v6, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->updateHash(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;)V

    .line 268
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0
.end method

.method private loadHashMap()V
    .locals 7

    .prologue
    .line 189
    sget-object v4, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v5, "enter loadHashMap()"

    invoke-static {v4, v5}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v2, 0x0

    .line 193
    .local v2, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    const-string v4, "/system/framework/framework-res-yi.apk"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .local v3, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    const-string/jumbo v4, "res/raw/signatures.dat"

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 195
    .local v1, entry:Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/systemverify/Utils;->getHashInfoFromFile(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 202
    :cond_0
    if-eqz v3, :cond_1

    .line 203
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v3

    .line 209
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return-void

    .line 205
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .restart local v1       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 208
    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :catch_1
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-object v4, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    if-eqz v2, :cond_2

    .line 203
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 205
    :catch_2
    move-exception v0

    .line 206
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 202
    :goto_2
    if-eqz v2, :cond_3

    .line 203
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    :cond_3
    :goto_3
    throw v4

    .line 205
    :catch_3
    move-exception v0

    .line 206
    .restart local v0       #e:Ljava/io/IOException;
    sget-object v5, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 201
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 198
    .end local v2           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #zip:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #zip:Ljava/util/zip/ZipFile;
    .restart local v2       #zip:Ljava/util/zip/ZipFile;
    goto :goto_1
.end method

.method private loadLastHashMap()V
    .locals 5

    .prologue
    .line 212
    sget-object v3, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v4, "enter loadLastHashMap()"

    invoke-static {v3, v4}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "data/data/verification/lastUploadHashFile.dat"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, lastHashMapFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 217
    .local v2, parent:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 219
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 220
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 222
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 223
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 224
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/baidu/systemverify/Utils;->getHashInfoFromFile(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v1           #lastHashMapFile:Ljava/io/File;
    .end local v2           #parent:Ljava/io/File;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resultAppend(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 4
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "hashValueString"
    .parameter "operation"

    .prologue
    .line 231
    sget-object v1, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter resultAppend(),fileName is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/baidu/systemverify/Verification;->isIgnoreFile(Ljava/lang/String;)Z

    move-result v0

    .line 234
    .local v0, checkIgnore:Z
    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/systemverify/Verification;->verifyResult:Z

    .line 238
    sget-object v1, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyResult set false :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/baidu/systemverify/Verification;->verifyResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mChangeHashMap:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/systemverify/Verification;->isLastUpload(Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    iget v1, p0, Lcom/baidu/systemverify/Verification;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/systemverify/Verification;->mCount:I

    .line 243
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private updateHash(Ljava/util/HashMap;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "hashValueString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/systemverify/Utils$FileInfo;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/systemverify/Utils$FileInfo;>;"
    sget-object v1, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter updateHash() ,fileName is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v0, Lcom/baidu/systemverify/Utils$FileInfo;

    invoke-direct {v0}, Lcom/baidu/systemverify/Utils$FileInfo;-><init>()V

    .line 281
    .local v0, info:Lcom/baidu/systemverify/Utils$FileInfo;
    iput-wide p3, v0, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    .line 282
    iput-object p5, v0, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-void
.end method

.method private updateskipFileslist()V
    .locals 10

    .prologue
    .line 297
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    sget-object v7, Lcom/baidu/systemverify/Verification;->skipFiles:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_0

    .line 298
    iget-object v7, p0, Lcom/baidu/systemverify/Verification;->skipFileList:Ljava/util/ArrayList;

    sget-object v8, Lcom/baidu/systemverify/Verification;->skipFiles:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    :cond_0
    const/4 v2, 0x0

    .line 303
    .local v2, f:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v7, "/system/usr/share/applist"

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 304
    .end local v2           #f:Ljava/io/FileInputStream;
    .local v3, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 305
    .local v0, dr:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, line:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_1

    .line 307
    const/4 v7, 0x0

    const-string v8, ".apk"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/systemverify/Verification;->skipFileList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v7, p0, Lcom/baidu/systemverify/Verification;->skipFileList:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".odex"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v5

    .line 311
    goto :goto_1

    .line 318
    .end local v6           #name:Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 319
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v2, v3

    .line 325
    .end local v0           #dr:Ljava/io/BufferedReader;
    .end local v3           #f:Ljava/io/FileInputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v2       #f:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    return-void

    .line 321
    .end local v2           #f:Ljava/io/FileInputStream;
    .restart local v0       #dr:Ljava/io/BufferedReader;
    .restart local v3       #f:Ljava/io/FileInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 324
    .end local v3           #f:Ljava/io/FileInputStream;
    .restart local v2       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .line 312
    .end local v0           #dr:Ljava/io/BufferedReader;
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #line:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 313
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    if-eqz v2, :cond_3

    .line 319
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 321
    :catch_2
    move-exception v1

    .line 322
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 314
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 315
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    if-eqz v2, :cond_3

    .line 319
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 321
    :catch_4
    move-exception v1

    .line 322
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 317
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 318
    :goto_5
    if-eqz v2, :cond_4

    .line 319
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 323
    :cond_4
    :goto_6
    throw v7

    .line 321
    :catch_5
    move-exception v1

    .line 322
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 317
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/FileInputStream;
    .restart local v3       #f:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #f:Ljava/io/FileInputStream;
    .restart local v2       #f:Ljava/io/FileInputStream;
    goto :goto_5

    .line 314
    .end local v2           #f:Ljava/io/FileInputStream;
    .restart local v3       #f:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3           #f:Ljava/io/FileInputStream;
    .restart local v2       #f:Ljava/io/FileInputStream;
    goto :goto_4

    .line 312
    .end local v2           #f:Ljava/io/FileInputStream;
    .restart local v3       #f:Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3           #f:Ljava/io/FileInputStream;
    .restart local v2       #f:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private verify(Ljava/io/File;)V
    .locals 13
    .parameter "file"

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x1

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, fileName:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, path:Ljava/lang/String;
    const/4 v6, 0x0

    .line 117
    .local v6, canonicalName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 122
    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-direct {p0, v1, p1}, Lcom/baidu/systemverify/Verification;->checkLinkFile(Ljava/lang/String;Ljava/io/File;)V

    .line 144
    :cond_0
    :goto_1
    return-void

    .line 118
    :catch_0
    move-exception v7

    .line 119
    .local v7, e:Ljava/io/IOException;
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/systemverify/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v7           #e:Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/systemverify/Utils$FileInfo;

    .line 128
    .local v8, fileInfo:Lcom/baidu/systemverify/Utils$FileInfo;
    if-nez v8, :cond_2

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p1}, Lcom/baidu/systemverify/Utils;->sha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v10, v8, Lcom/baidu/systemverify/Utils$FileInfo;->fileSize:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p1}, Lcom/baidu/systemverify/Utils;->sha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    .line 142
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    :cond_4
    invoke-static {p1}, Lcom/baidu/systemverify/Utils;->sha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, sha1:Ljava/lang/String;
    if-eqz v4, :cond_3

    iget-object v0, v8, Lcom/baidu/systemverify/Utils$FileInfo;->fileHash:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object v0, p0

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/baidu/systemverify/Verification;->resultAppend(Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_2
.end method

.method private verifyDirectory(Landroid/os/PowerManager;Ljava/io/File;)V
    .locals 9
    .parameter "pm"
    .parameter "dir"

    .prologue
    .line 90
    sget-object v6, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter verifyDirectory() dir is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, files:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 96
    .local v2, fileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 98
    invoke-direct {p0, p1, v1}, Lcom/baidu/systemverify/Verification;->verifyDirectory(Landroid/os/PowerManager;Ljava/io/File;)V

    .line 95
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    const-wide/16 v6, 0x1388

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 103
    :catch_0
    move-exception v6

    goto :goto_2

    .line 106
    :cond_1
    invoke-direct {p0, v1}, Lcom/baidu/systemverify/Verification;->verify(Ljava/io/File;)V

    goto :goto_1

    .line 109
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileName:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v1, "enter getResult()"

    invoke-static {v0, v1}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->mResults:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVerifyResult()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/baidu/systemverify/Verification;->verifyResult:Z

    return v0
.end method

.method isIgnoreFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/baidu/systemverify/Verification;->skipFileList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verifySystem(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 62
    sget-object v3, Lcom/baidu/systemverify/Verification;->TAG:Ljava/lang/String;

    const-string v4, "enter verifySystem()"

    invoke-static {v3, v4}, Lcom/baidu/systemverify/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/baidu/systemverify/Verification;->updateskipFileslist()V

    .line 65
    invoke-direct {p0}, Lcom/baidu/systemverify/Verification;->loadHashMap()V

    .line 66
    invoke-direct {p0}, Lcom/baidu/systemverify/Verification;->loadLastHashMap()V

    .line 67
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    .line 68
    .local v1, root:Ljava/io/File;
    iget-object v3, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/systemverify/Verification;->mSourceHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 69
    :cond_0
    iput-boolean v2, p0, Lcom/baidu/systemverify/Verification;->verifyResult:Z

    .line 81
    :goto_0
    return v2

    .line 73
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 76
    .local v0, pm:Landroid/os/PowerManager;
    invoke-direct {p0, v0, v1}, Lcom/baidu/systemverify/Verification;->verifyDirectory(Landroid/os/PowerManager;Ljava/io/File;)V

    .line 77
    invoke-direct {p0}, Lcom/baidu/systemverify/Verification;->checkRemoved()V

    .line 79
    iget-object v2, p0, Lcom/baidu/systemverify/Verification;->mLastSourceHashMap:Ljava/util/HashMap;

    const-string v3, "data/data/verification/lastUploadHashFile.dat"

    invoke-static {v2, v3}, Lcom/baidu/systemverify/Utils;->WriteHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/baidu/systemverify/Verification;->mChangeHashMap:Ljava/util/HashMap;

    const-string v3, "data/data/verification/changeHashFile.dat"

    invoke-static {v2, v3}, Lcom/baidu/systemverify/Utils;->WriteChangeHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 81
    iget v2, p0, Lcom/baidu/systemverify/Verification;->mCount:I

    goto :goto_0
.end method
