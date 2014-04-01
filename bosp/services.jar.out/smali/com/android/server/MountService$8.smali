.class Lcom/android/server/MountService$8;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->shareCDRom(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$doShare:Z


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3221
    iput-object p1, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iput-boolean p2, p0, Lcom/android/server/MountService$8;->val$doShare:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3223
    const-string v1, "yes"

    const-string v2, "sys.usb.mtk_bicr_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "yes_hide"

    const-string v2, "sys.usb.mtk_bicr_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3225
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v1}, Lcom/android/server/MountService;->access$4000(Lcom/android/server/MountService;)V

    .line 3226
    invoke-static {}, Lcom/android/server/MountService;->access$4400()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doGetCDRomState()I
    invoke-static {v1}, Lcom/android/server/MountService;->access$4500(Lcom/android/server/MountService;)I

    move-result v0

    .line 3228
    .local v0, state:I
    const-string v1, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CDRom status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/MountService$8;->val$doShare:Z

    if-eqz v1, :cond_2

    :cond_1
    if-ne v0, v5, :cond_3

    iget-boolean v1, p0, Lcom/android/server/MountService$8;->val$doShare:Z

    if-ne v1, v5, :cond_3

    .line 3231
    :cond_2
    iget-object v1, p0, Lcom/android/server/MountService$8;->this$0:Lcom/android/server/MountService;

    iget-boolean v3, p0, Lcom/android/server/MountService$8;->val$doShare:Z

    #calls: Lcom/android/server/MountService;->doShareUnshareCDRom(Z)V
    invoke-static {v1, v3}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;Z)V

    .line 3233
    :cond_3
    monitor-exit v2

    .line 3238
    .end local v0           #state:I
    :goto_0
    return-void

    .line 3233
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3236
    :cond_4
    const-string v1, "MountService"

    const-string v2, "CD rom feature not enable!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
