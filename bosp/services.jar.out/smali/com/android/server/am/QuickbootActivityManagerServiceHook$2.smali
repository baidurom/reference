.class Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;
.super Ljava/lang/Object;
.source "QuickbootActivityManagerServiceHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/QuickbootActivityManagerServiceHook;->notifyBootCompleted()V
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
    .line 244
    iput-object p1, p0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$1200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    const/4 v13, 0x0

    .line 249
    .local v13, registeredReceivers:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    const/4 v12, 0x0

    .line 250
    .local v12, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 253
    .local v5, intent:Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    const/16 v4, 0x400

    invoke-interface {v2, v5, v3, v4}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 257
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v13

    .line 259
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    .line 260
    .local v21, sizeOfRegisteredReceivers:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 261
    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/BroadcastFilter;

    .line 262
    .local v15, filter:Lcom/android/server/am/BroadcastFilter;
    invoke-static {}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$1300()[Ljava/lang/String;

    move-result-object v14

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v22, v14, v17

    .line 263
    .local v22, target:Ljava/lang/String;
    iget-object v2, v15, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    move/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 265
    add-int/lit8 v21, v21, -0x1

    .line 266
    add-int/lit8 v16, v16, -0x1

    .line 260
    .end local v22           #target:Ljava/lang/String;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 262
    .restart local v22       #target:Ljava/lang/String;
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 272
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v15           #filter:Lcom/android/server/am/BroadcastFilter;
    .end local v17           #i$:I
    .end local v19           #len$:I
    .end local v22           #target:Ljava/lang/String;
    :cond_2
    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v20

    .line 273
    .local v20, sizeOfReceivers:I
    :goto_3
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 274
    move/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 275
    .local v18, info:Landroid/content/pm/ResolveInfo;
    invoke-static {}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$1300()[Ljava/lang/String;

    move-result-object v14

    .restart local v14       #arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v19, v0

    .restart local v19       #len$:I
    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v22, v14, v17

    .line 276
    .restart local v22       #target:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 277
    move/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 278
    add-int/lit8 v20, v20, -0x1

    .line 279
    add-int/lit8 v16, v16, -0x1

    .line 273
    .end local v22           #target:Ljava/lang/String;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 272
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #info:Landroid/content/pm/ResolveInfo;
    .end local v19           #len$:I
    .end local v20           #sizeOfReceivers:I
    :cond_4
    const/16 v20, 0x0

    goto :goto_3

    .line 275
    .restart local v14       #arr$:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v18       #info:Landroid/content/pm/ResolveInfo;
    .restart local v19       #len$:I
    .restart local v20       #sizeOfReceivers:I
    .restart local v22       #target:Ljava/lang/String;
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 285
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v18           #info:Landroid/content/pm/ResolveInfo;
    .end local v19           #len$:I
    .end local v22           #target:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v23

    monitor-enter v23

    .line 286
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/QuickbootActivityManagerServiceHook$2;->this$0:Lcom/android/server/am/QuickbootActivityManagerServiceHook;

    #getter for: Lcom/android/server/am/QuickbootActivityManagerServiceHook;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/QuickbootActivityManagerServiceHook;->access$200(Lcom/android/server/am/QuickbootActivityManagerServiceHook;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->broadcastSpecificIntentLockedForQb(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)I

    .line 290
    monitor-exit v23

    .line 292
    return-void

    .line 290
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 255
    .end local v16           #i:I
    .end local v20           #sizeOfReceivers:I
    .end local v21           #sizeOfRegisteredReceivers:I
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method
