.class Lcom/android/server/am/ActivityManagerPlus$2;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerPlus;->IPOBootCompletedLocked()V
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
    .line 548
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 550
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerPlus;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 551
    const/4 v12, 0x0

    .line 552
    .local v12, registeredReceivers:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    const/4 v11, 0x0

    .line 553
    .local v11, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 556
    .local v4, intent:Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    const/16 v3, 0x400

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 561
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mReceiverResolver:Lcom/android/server/IntentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v12

    .line 563
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    .line 564
    .local v18, sizeOfRegisteredReceivers:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 565
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/BroadcastFilter;

    .line 566
    .local v13, curr:Lcom/android/server/am/BroadcastFilter;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 567
    .local v19, target:Ljava/lang/String;
    iget-object v1, v13, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    invoke-interface {v12, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 569
    add-int/lit8 v18, v18, -0x1

    .line 570
    add-int/lit8 v15, v15, -0x1

    .line 564
    .end local v19           #target:Ljava/lang/String;
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 576
    .end local v13           #curr:Lcom/android/server/am/BroadcastFilter;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_2
    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v17

    .line 577
    .local v17, sizeOfReceivers:I
    :goto_2
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    .line 578
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 580
    .local v14, curt:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerPlus;->mProcessWL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 581
    .restart local v19       #target:Ljava/lang/String;
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 582
    invoke-interface {v11, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 583
    add-int/lit8 v17, v17, -0x1

    .line 584
    add-int/lit8 v15, v15, -0x1

    .line 577
    .end local v19           #target:Ljava/lang/String;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 576
    .end local v14           #curt:Landroid/content/pm/ResolveInfo;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #sizeOfReceivers:I
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 589
    .restart local v17       #sizeOfReceivers:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v21

    monitor-enter v21

    .line 591
    const/4 v15, 0x0

    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_7

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .line 593
    .local v20, userId:I
    const-string v1, "android.intent.extra.user_handle"

    move/from16 v0, v20

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerPlus$2;->this$0:Lcom/android/server/am/ActivityManagerPlus;

    #getter for: Lcom/android/server/am/ActivityManagerPlus;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerPlus;->access$100(Lcom/android/server/am/ActivityManagerPlus;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ActivityManagerService;->broadcastSpecificIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)I

    .line 591
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 599
    .end local v20           #userId:I
    :cond_7
    monitor-exit v21

    .line 601
    return-void

    .line 599
    :catchall_0
    move-exception v1

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 558
    .end local v15           #i:I
    .end local v17           #sizeOfReceivers:I
    .end local v18           #sizeOfRegisteredReceivers:I
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
