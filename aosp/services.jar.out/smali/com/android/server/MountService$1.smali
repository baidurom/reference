.class Lcom/android/server/MountService$1;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 561
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 564
    const-string v4, "MountService"

    const-string v5, "MountService BOOT_COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$1302(Lcom/android/server/MountService;Z)Z

    .line 571
    const-string v4, "simulator"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 572
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v5, "/sdcard"

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v4, v7, v5, v3, v6}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    new-instance v3, Lcom/android/server/MountService$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$1;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$1$1;->start()V

    goto :goto_0

    .line 646
    :cond_2
    const-string v4, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 647
    const-string v4, "MountService"

    const-string v5, "MountService BOOT_IPO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v4, v1}, Lcom/android/server/MountService;->access$1302(Lcom/android/server/MountService;Z)Z

    .line 654
    const-string v4, "simulator"

    const-string v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 655
    iget-object v4, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v5, "/sdcard"

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v4, v7, v5, v3, v6}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 659
    :cond_3
    new-instance v3, Lcom/android/server/MountService$1$2;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$2;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$1$2;->start()V

    goto :goto_0

    .line 762
    :cond_4
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 763
    const-string v4, "connected"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "mass_storage"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 765
    .local v1, available:Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #setter for: Lcom/android/server/MountService;->mIsUsbConnected:Z
    invoke-static {v3, v1}, Lcom/android/server/MountService;->access$202(Lcom/android/server/MountService;Z)Z

    .line 766
    iget-object v3, p0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
    invoke-static {v3, v1}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;Z)V

    goto :goto_0

    .end local v1           #available:Z
    :cond_5
    move v1, v3

    .line 763
    goto :goto_1

    .line 767
    :cond_6
    const-string v3, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 768
    const-string v3, "MountService"

    const-string v4, "USB enable"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v3, Lcom/android/server/MountService$1$3;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$3;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$1$3;->start()V

    goto :goto_0

    .line 780
    :cond_7
    const-string v3, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 781
    const-string v3, "MountService"

    const-string v4, "USB disable"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v3, Lcom/android/server/MountService$1$4;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$4;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$1$4;->start()V

    goto/16 :goto_0

    .line 793
    :cond_8
    const-string v3, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 794
    const-string v3, "MountService"

    const-string v4, "format SD"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    new-instance v3, Lcom/android/server/MountService$1$5;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$5;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$1$5;->start()V

    goto/16 :goto_0

    .line 831
    :cond_9
    const-string v3, "android.action.AMS_SYSTEM_READY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 832
    const-string v3, "MountService"

    const-string v4, "receive intent - android.action.AMS_SYSTEM_READY"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v3, Lcom/android/server/MountService$1$6;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$6;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$1$6;->start()V

    goto/16 :goto_0

    .line 870
    :cond_a
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 871
    new-instance v3, Lcom/android/server/MountService$1$7;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$1$7;-><init>(Lcom/android/server/MountService$1;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$1$7;->start()V

    goto/16 :goto_0

    .line 878
    :cond_b
    const-string v3, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 880
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "rm -r /mnt/sdcard/sdcard2/"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 881
    :catch_0
    move-exception v2

    .line 882
    .local v2, e:Ljava/io/IOException;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete /mnt/sdcard/sdcard2/ fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
