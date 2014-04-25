.class Lcom/android/server/MountService$7;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1355
    iput-object p1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1359
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v3}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1361
    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    const-string v5, "ums"

    const/4 v6, 0x1

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1385
    :goto_0
    return-void

    .line 1363
    :cond_0
    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$3700(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v2

    .line 1364
    .local v2, rc:I
    iget-object v3, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    const-string v4, "/mnt/usbotg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1365
    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)V

    .line 1366
    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1367
    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 1370
    :cond_1
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->enableDefaultPathDialog()Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$3800(Lcom/android/server/MountService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1371
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mediatek.storage.StorageDefaultPathDialog"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1373
    iget-object v3, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    const-string v4, "/mnt/usbotg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1374
    const-string v3, "insert_otg"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1376
    :cond_2
    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3900(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1382
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #rc:I
    :catch_0
    move-exception v0

    .line 1383
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Failed to mount media on insertion"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1378
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #rc:I
    :cond_3
    :try_start_1
    const-string v3, "MountService"

    const-string v4, "Insertion mount failed (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
