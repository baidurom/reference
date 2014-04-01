.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "method"
    .parameter "force"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 368
    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    .line 369
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 5

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mIsUsbConnected:Z
    invoke-static {v0}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const-string v2, "checking"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const-string v2, "mounted"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    invoke-static {v0}, Lcom/android/server/MountService;->access$710(Lcom/android/server/MountService;)I

    .line 385
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mUMSCount:I
    invoke-static {v0}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/MountService;->mIsTurnOnUsb:Z
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$802(Lcom/android/server/MountService;Z)Z

    .line 388
    :cond_0
    return-void

    .line 379
    :cond_1
    invoke-static {}, Lcom/android/server/MountService;->access$500()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 380
    :try_start_0
    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    .line 381
    iget-object v0, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    const/4 v4, 0x1

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 382
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
