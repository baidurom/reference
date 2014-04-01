.class public final Lcom/android/server/LowStorageHandle;
.super Ljava/lang/Object;
.source "LowStorageHandle.java"


# static fields
.field public static final APPBANK_MAX_KB_SIZE:J = 0x320L

.field public static final APPBANK_PATH:Ljava/lang/String; = "/data/appbank"

.field private static final FREE_MEMORY:I = 0xa

.field public static final LSM_THRESHOLD_FORCE_CLEAN:J = 0x0L

.field public static final LSM_THRESHOLD_LOWMEM:J = 0x600L

.field public static final LSM_THRESHOLD_WARN:J = 0x1000L

.field public static final PIGGYBANK_MAX_KB_SIZE:J = 0xc00L

.field public static final PIGGYBANK_PATH:Ljava/lang/String; = "/data/piggybank"

.field static final TAG:Ljava/lang/String; = "LowStorageHandle"

.field static mLowMemFlag:Z

.field private static sInstance:Lcom/android/server/LowStorageHandle;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LowStorageHandle;->mContext:Landroid/content/Context;

    .line 81
    iput-object p1, p0, Lcom/android/server/LowStorageHandle;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method


# virtual methods
.method public systemReadyLSM()V
    .locals 16

    .prologue
    .line 165
    const-wide/16 v7, 0x0

    .line 167
    .local v7, freeKBStorage:J
    const-string v12, "LowStorageHandle"

    const-string v13, " LSM_THRESHOLD_FORCE_CLEAN : 0; LSM_THRESHOLD_LOWMEM: 1536;LSM_THRESHOLD_WARN :4096"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, dataFileStats:Landroid/os/StatFs;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long v7, v12, v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    .line 177
    :goto_0
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data.free.before KB: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-wide/16 v10, 0xc00

    .line 181
    .local v10, piggyKBSize:J
    const-wide/16 v12, 0x1800

    cmp-long v12, v7, v12

    if-gtz v12, :cond_1

    const-wide/16 v12, 0xc00

    cmp-long v12, v7, v12

    if-lez v12, :cond_1

    .line 191
    :cond_0
    :goto_1
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "systemReady : want to create piggybank KB:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/piggybank"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v6, f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 196
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .local v9, out:Ljava/io/OutputStream;
    const/16 v12, 0x800

    :try_start_2
    new-array v2, v12, [B

    .line 199
    .local v2, buffer:[B
    const/4 v4, 0x0

    .line 200
    .local v4, dataWrite:I
    :goto_2
    int-to-long v12, v4

    const-wide/16 v14, 0x2

    div-long v14, v10, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_7

    .line 201
    const/4 v12, 0x0

    const/16 v13, 0x800

    invoke-virtual {v9, v2, v12, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 183
    .end local v2           #buffer:[B
    .end local v4           #dataWrite:I
    .end local v6           #f:Ljava/io/File;
    .end local v9           #out:Ljava/io/OutputStream;
    :cond_1
    const-wide/16 v12, 0xc00

    cmp-long v12, v7, v12

    if-gtz v12, :cond_2

    const-wide/16 v12, 0x600

    cmp-long v12, v7, v12

    if-ltz v12, :cond_2

    .line 184
    const-wide/16 v10, 0x600

    goto :goto_1

    .line 185
    :cond_2
    const-wide/16 v12, 0x600

    cmp-long v12, v7, v12

    if-gez v12, :cond_0

    .line 189
    long-to-double v12, v7

    const-wide v14, 0x3fe999999999999aL

    mul-double/2addr v12, v14

    double-to-long v10, v12

    goto :goto_1

    .line 206
    .restart local v6       #f:Ljava/io/File;
    .restart local v9       #out:Ljava/io/OutputStream;
    :catchall_0
    move-exception v12

    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 208
    .end local v9           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v5

    .line 210
    .local v5, e:Ljava/io/IOException;
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Can\'t create piggybank"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v5           #e:Ljava/io/IOException;
    :cond_3
    :goto_3
    new-instance v6, Ljava/io/File;

    .end local v6           #f:Ljava/io/File;
    const-string v12, "/data/appbank"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v6       #f:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_5

    .line 219
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long v7, v12, v14
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 224
    :goto_4
    const-wide/16 v0, 0x320

    .line 225
    .local v0, appKBSize:J
    const-wide/16 v12, 0x320

    cmp-long v12, v7, v12

    if-gtz v12, :cond_4

    .line 228
    long-to-double v12, v7

    const-wide v14, 0x3feccccccccccccdL

    mul-double/2addr v12, v14

    double-to-long v0, v12

    .line 230
    :cond_4
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "systemReady : want to create piggybank KB:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :try_start_5
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 234
    .restart local v9       #out:Ljava/io/OutputStream;
    const/16 v12, 0x800

    :try_start_6
    new-array v2, v12, [B

    .line 235
    .restart local v2       #buffer:[B
    const/4 v4, 0x0

    .line 236
    .restart local v4       #dataWrite:I
    :goto_5
    int-to-long v12, v4

    const-wide/16 v14, 0x2

    div-long v14, v0, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_6

    .line 237
    const/4 v12, 0x0

    const/16 v13, 0x800

    invoke-virtual {v9, v2, v12, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 238
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 242
    .end local v2           #buffer:[B
    .end local v4           #dataWrite:I
    :catchall_1
    move-exception v12

    :try_start_7
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    throw v12
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 244
    .end local v9           #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v5

    .line 246
    .restart local v5       #e:Ljava/io/IOException;
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Can\'t create appybank"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0           #appKBSize:J
    .end local v5           #e:Ljava/io/IOException;
    :cond_5
    :goto_6
    :try_start_8
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long v7, v12, v14
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    .line 254
    :goto_7
    const-string v12, "LowStorageHandle"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " data.free.after KB: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 242
    .restart local v0       #appKBSize:J
    .restart local v2       #buffer:[B
    .restart local v4       #dataWrite:I
    .restart local v9       #out:Ljava/io/OutputStream;
    :cond_6
    :try_start_9
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_6

    .line 206
    .end local v0           #appKBSize:J
    :cond_7
    :try_start_a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_3

    .line 252
    .end local v2           #buffer:[B
    .end local v4           #dataWrite:I
    .end local v9           #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v12

    goto :goto_7

    .line 221
    :catch_3
    move-exception v12

    goto/16 :goto_4

    .line 174
    .end local v6           #f:Ljava/io/File;
    .end local v10           #piggyKBSize:J
    :catch_4
    move-exception v12

    goto/16 :goto_0
.end method
