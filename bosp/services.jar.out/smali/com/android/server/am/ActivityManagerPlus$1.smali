.class Lcom/android/server/am/ActivityManagerPlus$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerPlus;->startHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerPlus;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerPlus;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 240
    const-string v1, "ActivityManagerPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v1, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 242
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 245
    .local v11, bundle:Landroid/os/Bundle;
    if-nez v11, :cond_1

    .line 360
    .end local v11           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 247
    .restart local v11       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v1, "package_name"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 248
    .local v17, pkgName:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 250
    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 251
    .local v13, enabled:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 252
    .local v12, count:I
    add-int/lit8 v14, v12, -0x1

    .line 253
    .local v14, i:I
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 255
    .local v10, alreadyInList:Ljava/lang/Boolean;
    if-eqz v12, :cond_3

    .line 256
    :goto_1
    if-ltz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 259
    :cond_2
    if-gez v14, :cond_4

    .line 260
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 265
    :cond_3
    :goto_2
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 266
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_2

    .line 267
    :cond_5
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 270
    .end local v10           #alreadyInList:Ljava/lang/Boolean;
    .end local v11           #bundle:Landroid/os/Bundle;
    .end local v12           #count:I
    .end local v13           #enabled:Ljava/lang/Boolean;
    .end local v14           #i:I
    .end local v17           #pkgName:Ljava/lang/String;
    :cond_6
    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 271
    const-string v1, "ActivityManagerPlus"

    const-string v2, "ipo PREBOOT_IPO"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v20, Lcom/android/internal/app/ShutdownManager;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    .line 273
    .local v20, stMgr:Lcom/android/internal/app/ShutdownManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->preRestoreStates(Landroid/content/Context;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isAlarmBoot()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 276
    const-string v1, "ActivityManagerPlus"

    const-string v2, "power off alarm enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/server/am/ActivityManagerService;->checkFlightMode(ZZ)V

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/ActivityManagerPlus$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/am/ActivityManagerPlus$1$1;-><init>(Lcom/android/server/am/ActivityManagerPlus$1;)V

    const-wide/16 v7, 0xbb8

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :cond_7
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->postDelay:Z
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$200(Lcom/android/server/am/ActivityManagerPlus;)Z

    move-result v2

    if-ne v1, v2, :cond_8

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    monitor-enter v7

    .line 291
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$300(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v3

    .line 292
    .local v3, index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$300(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "clear"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 293
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/am/ActivityManagerPlus;->postDelay:Z
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerPlus;->access$202(Lcom/android/server/am/ActivityManagerPlus;Z)Z

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerPlus;->access$302(Lcom/android/server/am/ActivityManagerPlus;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 299
    .end local v3           #index:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->closeSystemDialogs()V

    goto/16 :goto_0

    .line 293
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 301
    .end local v20           #stMgr:Lcom/android/internal/app/ShutdownManager;
    :cond_9
    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 302
    const-string v1, "ActivityManagerPlus"

    const-string v2, "ipo BOOT_IPO"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v20, Lcom/android/internal/app/ShutdownManager;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    .line 305
    .restart local v20       #stMgr:Lcom/android/internal/app/ShutdownManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->restoreStates(Landroid/content/Context;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isAlarmBoot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->removeIPOWin(Landroid/content/Context;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerPlus;->IPOBootCompletedLocked()V

    goto/16 :goto_0

    .line 313
    .end local v20           #stMgr:Lcom/android/internal/app/ShutdownManager;
    :cond_a
    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/ActivityManagerService;->mFirstBoot:Z

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 318
    .local v19, size:I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v15, list:Ljava/util/ArrayList;
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_3
    move/from16 v0, v19

    if-ge v14, v0, :cond_d

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 321
    .local v5, r:Lcom/android/server/am/ActivityRecord;
    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_b

    .line 319
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 326
    :cond_b
    const-string v1, "com.android.server.ShutdownActivity"

    iget-object v2, v5, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 329
    const-string v1, "ActivityManagerPlus"

    const-string v2, "postpone shutdownActivity"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/am/ActivityManagerPlus;->postDelay:Z
    invoke-static {v1, v2}, Lcom/android/server/am/ActivityManagerPlus;->access$202(Lcom/android/server/am/ActivityManagerPlus;Z)Z

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #setter for: Lcom/android/server/am/ActivityManagerPlus;->mTarget:Lcom/android/server/am/ActivityRecord;
    invoke-static {v1, v5}, Lcom/android/server/am/ActivityManagerPlus;->access$302(Lcom/android/server/am/ActivityManagerPlus;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    goto :goto_4

    .line 333
    :cond_c
    const-string v1, "ActivityManagerPlus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "added activity = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v5, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 339
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    .line 341
    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v14, v0, :cond_e

    .line 342
    :try_start_2
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 343
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v6

    .line 344
    .local v6, idx:I
    const-string v1, "ActivityManagerPlus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHistory.index = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " list.index = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "clear"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 341
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 347
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    .end local v6           #idx:I
    :cond_e
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 349
    const-string v1, "ActivityManagerPlus"

    const-string v2, "finished"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 350
    .end local v14           #i:I
    .end local v15           #list:Ljava/util/ArrayList;
    .end local v19           #size:I
    :cond_f
    const-string v1, "android.intent.action.black.mode"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 351
    const-string v1, "_black_mode"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 352
    .local v16, mode:Z
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_0

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->createIPOWin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 355
    .end local v16           #mode:Z
    :cond_10
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 357
    .local v18, ringerMode:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    .line 358
    .local v21, state:Ljava/lang/String;
    const-string v1, "persist.sys.mute.state"

    move-object/from16 v0, v21

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
