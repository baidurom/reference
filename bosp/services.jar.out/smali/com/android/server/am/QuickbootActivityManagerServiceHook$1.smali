.class Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickbootActivityManagerServiceHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/QuickbootActivityManagerServiceHook;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;


# direct methods
.method constructor <init>(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v5, "QuickbootActivityManagerServiceHook"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v5, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$102(Z)Z

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v5, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->rmQbShutdownBackground()V

    .line 123
    invoke-static {}, Lcom/android/internal/app/QuickbootManager;->getInstance()Lcom/android/internal/app/QuickbootManager;

    move-result-object v3

    .line 124
    .local v3, qbMgr:Lcom/android/internal/app/QuickbootManager;
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$300(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/app/QuickbootManager;->restoreSystemStates(Landroid/content/Context;)V

    .line 125
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #calls: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->resetActivityStack()V
    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$400(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V

    .line 127
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #calls: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->notifyBootCompleted()V
    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$500(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)V

    .line 129
    :try_start_0
    const-string v5, "QuickBootService"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 130
    .local v2, iService:Landroid/os/IBinder;
    if-eqz v2, :cond_2

    .line 131
    invoke-static {v2}, Lcom/baidu/service/IQuickBootService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/service/IQuickBootService;

    move-result-object v4

    .line 132
    .local v4, qbService:Lcom/baidu/service/IQuickBootService;
    invoke-interface {v4}, Lcom/baidu/service/IQuickBootService;->notifyQuickBootComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v2           #iService:Landroid/os/IBinder;
    .end local v4           #qbService:Lcom/baidu/service/IQuickBootService;
    :goto_1
    invoke-static {v8}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$102(Z)Z

    goto :goto_0

    .line 134
    .restart local v2       #iService:Landroid/os/IBinder;
    :cond_2
    :try_start_1
    const-string v5, "QuickbootActivityManagerServiceHook"

    const-string v6, "QuickBootService not found!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 136
    .end local v2           #iService:Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 138
    .end local v3           #qbMgr:Lcom/android/internal/app/QuickbootManager;
    :cond_3
    const-string v5, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN_DONE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 139
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->createQbShutdownBackground()V

    goto :goto_0

    .line 140
    :cond_4
    const-string v5, "android.intent.action.ACTION_QUICKBOOT_BOOT_NOTICE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 141
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    const v6, #drawable@qb_boot_notice#t

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->setQbBackgroundRes(I)V

    goto :goto_0

    .line 142
    :cond_5
    const-string v5, "android.intent.action.ACTION_QUICKBOOT_START_CHARGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 143
    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, batteryLevel:I
    if-ltz v1, :cond_6

    const/16 v5, 0x64

    if-gt v1, v5, :cond_6

    .line 146
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #calls: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->getChargerPicIndex(I)I
    invoke-static {v5, v1}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$700(Lcom/android/server/am/QuickbootActivityManagerServiceHook;I)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$602(I)I

    .line 147
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    invoke-static {}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$600()I

    move-result v6

    #calls: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->setQbChargerBackground(II)V
    invoke-static {v5, v6, v8}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$800(Lcom/android/server/am/QuickbootActivityManagerServiceHook;II)V

    goto/16 :goto_0

    .line 149
    :cond_6
    const-string v5, "QuickbootActivityManagerServiceHook"

    const-string v6, "battery is invalid!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    const v6, #drawable@battery_fail#t

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->setQbBackgroundRes(I)V

    goto/16 :goto_0

    .line 152
    .end local v1           #batteryLevel:I
    :cond_7
    const-string v5, "android.intent.action.ACTION_QUICKBOOT_STOP_CHARGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    iget-object v5, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mMainHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$1000(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$1;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mSetBackgroundTask:Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;
    invoke-static {v6}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$900(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/QuickbootActivityManagerServiceHook$SetBackgroundTask;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
