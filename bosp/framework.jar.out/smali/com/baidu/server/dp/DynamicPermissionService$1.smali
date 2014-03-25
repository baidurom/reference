.class Lcom/baidu/server/dp/DynamicPermissionService$1;
.super Ljava/lang/Object;
.source "DynamicPermissionService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/server/dp/DynamicPermissionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/server/dp/DynamicPermissionService;


# direct methods
.method constructor <init>(Lcom/baidu/server/dp/DynamicPermissionService;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 260
    packed-switch p2, :pswitch_data_0

    .line 332
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 262
    .restart local p1
    :pswitch_0
    const/4 v5, 0x0

    .local v5, grant:I
    :goto_1
    move-object/from16 v2, p1

    .line 270
    check-cast v2, Lcom/baidu/server/dp/DynamicPermAlertDialog;

    invoke-virtual {v2}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->isRemembered()Z

    move-result v13

    .line 271
    .local v13, set:Z
    check-cast p1, Lcom/baidu/server/dp/DynamicPermAlertDialog;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/server/dp/DynamicPermAlertDialog;->isTimeout()Z

    move-result v14

    .line 273
    .local v14, timeout:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mCheckRequests:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$000(Lcom/baidu/server/dp/DynamicPermissionService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;

    .line 274
    .local v10, cr:Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;
    if-eqz v10, :cond_0

    .line 275
    if-eqz v13, :cond_2

    .line 276
    iget-object v4, v10, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    .line 277
    .local v4, realPerm:Ljava/lang/String;
    const-string v2, "dynamic.permission.SEND_MMS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const-string v4, "android.permission.SEND_SMS"

    .line 280
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    iget-object v3, v10, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->setPermission(Ljava/lang/String;Ljava/lang/String;IZZ)V
    invoke-static/range {v2 .. v7}, Lcom/baidu/server/dp/DynamicPermissionService;->access$100(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mUbcEnabled:Z
    invoke-static {v2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$200(Lcom/baidu/server/dp/DynamicPermissionService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    iget-object v3, v10, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    const/4 v6, 0x2

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->ubcReportPermissions(Ljava/lang/String;BLjava/lang/String;I)V
    invoke-static {v2, v3, v6, v4, v5}, Lcom/baidu/server/dp/DynamicPermissionService;->access$300(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;BLjava/lang/String;I)V

    .line 286
    .end local v4           #realPerm:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    iget-object v3, v10, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->permInTimePolicy(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/baidu/server/dp/DynamicPermissionService;->access$400(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 287
    new-instance v15, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    invoke-direct {v15, v2, v10, v5}, Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;-><init>(Lcom/baidu/server/dp/DynamicPermissionService;Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;I)V

    .line 296
    .local v15, ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$500(Lcom/baidu/server/dp/DynamicPermissionService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 297
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mUserDecisions:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$500(Lcom/baidu/server/dp/DynamicPermissionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;
    invoke-static {v2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$700(Lcom/baidu/server/dp/DynamicPermissionService;)Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v6, v7, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mTimeoutInterval:J
    invoke-static {v7}, Lcom/baidu/server/dp/DynamicPermissionService;->access$600(Lcom/baidu/server/dp/DynamicPermissionService;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v2, v6, v0, v1}, Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 299
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v15           #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mUbcEnabled:Z
    invoke-static {v2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$200(Lcom/baidu/server/dp/DynamicPermissionService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    new-instance v8, Lcom/baidu/server/dp/MetricBuilder;

    invoke-direct {v8}, Lcom/baidu/server/dp/MetricBuilder;-><init>()V

    .line 305
    .local v8, builder:Lcom/baidu/server/dp/MetricBuilder;
    const-wide/32 v2, 0x1001902

    invoke-virtual {v8, v2, v3}, Lcom/baidu/server/dp/MetricBuilder;->setMetricId(J)V

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {v8, v2}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 307
    iget-object v2, v10, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lcom/baidu/server/dp/MetricBuilder;->appendStringZ(Ljava/lang/String;)V

    .line 308
    if-eqz v13, :cond_5

    const/4 v9, 0x2

    .line 309
    .local v9, count:I
    :goto_2
    invoke-virtual {v8, v9}, Lcom/baidu/server/dp/MetricBuilder;->appendINT(I)V

    .line 310
    invoke-virtual {v8}, Lcom/baidu/server/dp/MetricBuilder;->buffer()[B

    move-result-object v11

    .line 311
    .local v11, data:[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    const-wide/32 v6, 0x1001902

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->sendUbcBroadcast(J[B)V
    invoke-static {v2, v6, v7, v11}, Lcom/baidu/server/dp/DynamicPermissionService;->access$800(Lcom/baidu/server/dp/DynamicPermissionService;J[B)V

    .line 313
    const-string v2, "DynamicPermissionService"

    const-string/jumbo v3, "send ubc broadcast 16783618"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v8           #builder:Lcom/baidu/server/dp/MetricBuilder;
    .end local v9           #count:I
    .end local v11           #data:[B
    :cond_4
    iget-object v2, v10, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->t:Lcom/baidu/server/dp/Transaction;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/baidu/server/dp/DynamicPermissionService;->access$900(Lcom/baidu/server/dp/DynamicPermissionService;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/baidu/server/dp/Transaction;->trans(ILandroid/content/Context;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    #getter for: Lcom/baidu/server/dp/DynamicPermissionService;->mHandler:Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;
    invoke-static {v2}, Lcom/baidu/server/dp/DynamicPermissionService;->access$700(Lcom/baidu/server/dp/DynamicPermissionService;)Lcom/baidu/server/dp/DynamicPermissionService$CheckHandler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 321
    const/4 v2, 0x1

    if-ne v5, v2, :cond_8

    .line 322
    if-eqz v14, :cond_7

    if-nez v13, :cond_7

    .line 323
    const/16 v12, 0x13

    .line 330
    .local v12, gtype:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/server/dp/DynamicPermissionService$1;->this$0:Lcom/baidu/server/dp/DynamicPermissionService;

    iget-object v3, v10, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->pkgName:Ljava/lang/String;

    iget-object v6, v10, Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;->perm:Ljava/lang/String;

    #calls: Lcom/baidu/server/dp/DynamicPermissionService;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v2, v3, v6, v12}, Lcom/baidu/server/dp/DynamicPermissionService;->access$1000(Lcom/baidu/server/dp/DynamicPermissionService;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 265
    .end local v5           #grant:I
    .end local v10           #cr:Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;
    .end local v12           #gtype:I
    .end local v13           #set:Z
    .end local v14           #timeout:Z
    .restart local p1
    :pswitch_1
    const/4 v5, 0x1

    .line 266
    .restart local v5       #grant:I
    goto/16 :goto_1

    .line 299
    .end local p1
    .restart local v10       #cr:Lcom/baidu/server/dp/DynamicPermissionService$CheckRequest;
    .restart local v13       #set:Z
    .restart local v14       #timeout:Z
    .restart local v15       #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 308
    .end local v15           #ud:Lcom/baidu/server/dp/DynamicPermissionService$UserDecision;
    .restart local v8       #builder:Lcom/baidu/server/dp/MetricBuilder;
    :cond_5
    if-eqz v14, :cond_6

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    .line 325
    .end local v8           #builder:Lcom/baidu/server/dp/MetricBuilder;
    :cond_7
    const/16 v12, 0x10

    .restart local v12       #gtype:I
    goto :goto_3

    .line 328
    .end local v12           #gtype:I
    :cond_8
    const/4 v12, 0x0

    .restart local v12       #gtype:I
    goto :goto_3

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
