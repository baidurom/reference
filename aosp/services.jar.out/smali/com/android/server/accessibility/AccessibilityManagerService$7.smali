.class Lcom/android/server/accessibility/AccessibilityManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerIPOReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1394
    const-string v0, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1395
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityEnabled:Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClientsLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 1402
    :cond_1
    :goto_0
    return-void

    .line 1399
    :cond_2
    const-string v0, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$7;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->manageAccessibilityServices()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    goto :goto_0
.end method
