.class Lcom/mediatek/lowstorage/LowStorageHandle$1;
.super Landroid/content/BroadcastReceiver;
.source "LowStorageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lowstorage/LowStorageHandle;->registerFilter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lowstorage/LowStorageHandle;


# direct methods
.method constructor <init>(Lcom/mediatek/lowstorage/LowStorageHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mediatek/lowstorage/LowStorageHandle$1;->this$0:Lcom/mediatek/lowstorage/LowStorageHandle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 153
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const-wide/16 v1, 0x0

    .line 155
    .local v1, freeKBStorage:J
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, dataFileStats:Landroid/os/StatFs;
    const-string v3, "LowStorageHandle"

    const-string/jumbo v4, "receive the storage low intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x400

    div-long v1, v3, v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    const-wide/16 v3, 0x600

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 165
    sput-boolean v7, Lcom/mediatek/lowstorage/LowStorageHandle;->mLowMemFlag:Z

    .line 174
    .end local v0           #dataFileStats:Landroid/os/StatFs;
    .end local v1           #freeKBStorage:J
    :cond_0
    :goto_1
    return-void

    .line 167
    :cond_1
    const-string v3, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 168
    const-string v3, "LowStorageHandle"

    const-string v4, "get storage full intent "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sput-boolean v7, Lcom/mediatek/lowstorage/LowStorageHandle;->mLowMemFlag:Z

    goto :goto_1

    .line 170
    :cond_2
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const-string v3, "LowStorageHandle"

    const-string/jumbo v4, "receive the storage ok intent"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, 0x0

    sput-boolean v3, Lcom/mediatek/lowstorage/LowStorageHandle;->mLowMemFlag:Z

    goto :goto_1

    .line 160
    .restart local v0       #dataFileStats:Landroid/os/StatFs;
    .restart local v1       #freeKBStorage:J
    :catch_0
    move-exception v3

    goto :goto_0
.end method
