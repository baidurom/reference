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
    .line 249
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
    .line 252
    const-string v2, "ActivityManagerPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v2, "android.intent.action.BOOST_DOWNLOADING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 257
    .local v10, bundle:Landroid/os/Bundle;
    if-nez v10, :cond_1

    .line 423
    .end local v10           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 259
    .restart local v10       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v2, "package_name"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 260
    .local v16, pkgName:Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 262
    const-string v2, "enabled"

    const/4 v5, 0x0

    invoke-virtual {v10, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 263
    .local v12, enabled:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 264
    .local v11, count:I
    add-int/lit8 v13, v11, -0x1

    .line 265
    .local v13, i:I
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 267
    .local v9, alreadyInList:Ljava/lang/Boolean;
    if-eqz v11, :cond_3

    .line 268
    :goto_1
    if-ltz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 269
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 271
    :cond_2
    if-gez v13, :cond_4

    .line 272
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 277
    :cond_3
    :goto_2
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_4
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_2

    .line 279
    :cond_5
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerPlus;->mBoostDownloadingAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 282
    .end local v9           #alreadyInList:Ljava/lang/Boolean;
    .end local v10           #bundle:Landroid/os/Bundle;
    .end local v11           #count:I
    .end local v12           #enabled:Ljava/lang/Boolean;
    .end local v13           #i:I
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_6
    const-string v2, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 283
    const-string v2, "ActivityManagerPlus"

    const-string v5, "ipo PREBOOT_IPO"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v19, Lcom/android/internal/app/ShutdownManager;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    .line 285
    .local v19, stMgr:Lcom/android/internal/app/ShutdownManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ShutdownManager;->preRestoreStates(Landroid/content/Context;)V

    .line 289
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->prebootKillProcessListSize()I

    move-result v2

    if-eqz v2, :cond_7

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/ActivityManagerPlus$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lcom/android/server/am/ActivityManagerPlus$1$1;-><init>(Lcom/android/server/am/ActivityManagerPlus$1;Lcom/android/internal/app/ShutdownManager;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 331
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 332
    .local v18, size:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v14, list:Ljava/util/ArrayList;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    move/from16 v0, v18

    if-ge v13, v0, :cond_9

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 335
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_8

    .line 339
    const-string v2, "ActivityManagerPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skip activity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 329
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    .end local v13           #i:I
    .end local v14           #list:Ljava/util/ArrayList;
    .end local v18           #size:I
    :cond_7
    const-string v2, "ActivityManagerPlus"

    const-string v5, "prebootKillProcess list empty, don\'t need to perform kill"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 341
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v13       #i:I
    .restart local v14       #list:Ljava/util/ArrayList;
    .restart local v18       #size:I
    :cond_8
    const-string v2, "ActivityManagerPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "added activity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 346
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v21

    monitor-enter v21

    .line 348
    add-int/lit8 v13, v18, -0x1

    :goto_6
    if-ltz v13, :cond_a

    .line 349
    :try_start_0
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 350
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v4

    .line 351
    .local v4, idx:I
    const-string v2, "ActivityManagerPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHistory.index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " list.index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "clear"

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 348
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 354
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    .end local v4           #idx:I
    :cond_a
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 357
    const-string v2, "ActivityManagerPlus"

    const-string v5, "finished"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->closeSystemDialogs()V

    goto/16 :goto_0

    .line 354
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 362
    .end local v13           #i:I
    .end local v14           #list:Ljava/util/ArrayList;
    .end local v18           #size:I
    .end local v19           #stMgr:Lcom/android/internal/app/ShutdownManager;
    :cond_b
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 363
    const-string v2, "ActivityManagerPlus"

    const-string v5, "ipo BOOT_IPO"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v19, Lcom/android/internal/app/ShutdownManager;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    .line 366
    .restart local v19       #stMgr:Lcom/android/internal/app/ShutdownManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$000(Lcom/android/server/am/ActivityManagerPlus;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ShutdownManager;->restoreStates(Landroid/content/Context;)V

    .line 368
    invoke-static {}, Lcom/android/server/am/PowerOffAlarmUtility;->isAlarmBoot()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 369
    const-string v2, "ActivityManagerPlus"

    const-string v5, "power off alarm enabled"

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/ActivityManagerPlus$1$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerPlus$1$2;-><init>(Lcom/android/server/am/ActivityManagerPlus$1;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 376
    :cond_c
    const-string v2, "unencrypted"

    const-string v5, "ro.crypto.state"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const-string v2, "ActivityManagerPlus"

    const-string v5, "ipo BOOT_IPO: removeIPOWin"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->removeIPOWin(Landroid/content/Context;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    monitor-enter v5

    .line 380
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerPlus;->IPOBootCompletedLocked()V

    .line 381
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 385
    .end local v19           #stMgr:Lcom/android/internal/app/ShutdownManager;
    :cond_d
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPowerOffAlarmUtility:Lcom/android/server/am/PowerOffAlarmUtility;

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/server/am/PowerOffAlarmUtility;->mFirstBoot:Z

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 391
    .restart local v18       #size:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .restart local v14       #list:Ljava/util/ArrayList;
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_7
    move/from16 v0, v18

    if-ge v13, v0, :cond_f

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 394
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_e

    .line 395
    const-string v2, "ActivityManagerPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "added activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 399
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_f
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v21

    monitor-enter v21

    .line 401
    add-int/lit8 v13, v18, -0x1

    :goto_8
    if-ltz v13, :cond_10

    .line 402
    :try_start_3
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 403
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v4

    .line 405
    .restart local v4       #idx:I
    const-string v2, "ActivityManagerPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mHistory.index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " list.index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "clear"

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 401
    add-int/lit8 v13, v13, -0x1

    goto :goto_8

    .line 408
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    .end local v4           #idx:I
    :cond_10
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 409
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 411
    const-string v2, "ActivityManagerPlus"

    const-string v5, "handling SHUTDOWN_IPO finished"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 408
    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 413
    .end local v13           #i:I
    .end local v14           #list:Ljava/util/ArrayList;
    .end local v18           #size:I
    :cond_11
    const-string v2, "android.intent.action.black.mode"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 414
    const-string v2, "_black_mode"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 415
    .local v15, mode:Z
    const/4 v2, 0x1

    if-ne v15, v2, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerPlus$1;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->createIPOWin(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 418
    .end local v15           #mode:Z
    :cond_12
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const-string v2, "android.media.EXTRA_RINGER_MODE"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 420
    .local v17, ringerMode:I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 421
    .local v20, state:Ljava/lang/String;
    const-string v2, "persist.sys.mute.state"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
