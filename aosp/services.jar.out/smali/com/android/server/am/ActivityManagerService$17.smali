.class Lcom/android/server/am/ActivityManagerService$17;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->registerNormalBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 15945
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15948
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFirstBoot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mFirstBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAlarmBoot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mAlarmBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15949
    const-string v0, "android.intent.action.normal.boot"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15950
    const-string v0, "ActivityManager"

    const-string v1, "DeskClock normally boots-up device"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15951
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3, v3}, Lcom/android/server/am/ActivityManagerService;->checkFlightMode(ZZ)V

    .line 15952
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mFirstBoot:Z

    if-eqz v0, :cond_1

    .line 15953
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v4, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 15954
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 15964
    :cond_0
    :goto_0
    return-void

    .line 15956
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAmPlus:Lcom/android/server/am/ActivityManagerPlus;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerPlus;->IPOBootCompletedLocked()V

    goto :goto_0

    .line 15958
    :cond_2
    const-string v0, "android.intent.action.normal.shutdown"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15959
    const-string v0, "ActivityManager"

    const-string v1, "DeskClock normally shutdowns device"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15960
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->createIPOWin(Landroid/content/Context;)V

    .line 15961
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkFlightMode(ZZ)V

    .line 15962
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$17;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerService;->mAlarmBoot:Z

    goto :goto_0
.end method
