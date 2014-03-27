.class Lcom/android/server/wm/WindowManagerService$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 820
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 823
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive the quickboot boradcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/wm/WindowManagerService;->mNeedResetRotation:Z
    invoke-static {v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$502(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mNeedResetRotation:Z
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v3, v1, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 830
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy;->setRotationLw(I)V

    .line 831
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    #setter for: Lcom/android/server/wm/WindowManagerService;->mNeedResetRotation:Z
    invoke-static {v1, v3}, Lcom/android/server/wm/WindowManagerService;->access$502(Lcom/android/server/wm/WindowManagerService;Z)Z

    goto :goto_0
.end method
