.class Lcom/android/server/power/PowerManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 608
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 609
    const-string v0, "PowerManagerService"

    const-string v1, "set mBootCompleted as true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$3;->this$0:Lcom/android/server/power/PowerManagerService;

    #setter for: Lcom/android/server/power/PowerManagerService;->mBootCompleted:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2002(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 612
    :cond_0
    return-void
.end method
