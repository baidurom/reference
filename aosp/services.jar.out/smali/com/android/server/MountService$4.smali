.class Lcom/android/server/MountService$4;
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
    .line 866
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    const-string v1, "MountService"

    const-string v2, "USB enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v1, Lcom/android/server/MountService$4$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$4$1;-><init>(Lcom/android/server/MountService$4;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$4$1;->start()V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    const-string v1, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 884
    const-string v1, "MountService"

    const-string v2, "USB disable"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v1, Lcom/android/server/MountService$4$2;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$4$2;-><init>(Lcom/android/server/MountService$4;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$4$2;->start()V

    goto :goto_0

    .line 896
    :cond_2
    const-string v1, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 897
    const-string v1, "MountService"

    const-string v2, "format SD"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v1, Lcom/android/server/MountService$4$3;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$4$3;-><init>(Lcom/android/server/MountService$4;)V

    invoke-virtual {v1}, Lcom/android/server/MountService$4$3;->start()V

    goto :goto_0
.end method
