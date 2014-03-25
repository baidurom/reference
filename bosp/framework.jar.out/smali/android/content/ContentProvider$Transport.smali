.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

.field mQueryPermission:Ljava/lang/String;

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 180
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 182
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 183
    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mQueryPermission:Ljava/lang/String;

    return-void
.end method

.method private enforceReadPermission(Landroid/net/Uri;)V
    .locals 19
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 312
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 313
    .local v12, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 314
    .local v15, uid:I
    const/4 v9, 0x0

    .line 316
    .local v9, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 360
    :cond_0
    return-void

    .line 320
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, componentPerm:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 323
    invoke-virtual {v5, v4, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 326
    move-object v9, v4

    .line 332
    :cond_2
    if-nez v4, :cond_4

    const/4 v2, 0x1

    .line 334
    .local v2, allowDefaultRead:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v14

    .line 335
    .local v14, pps:[Landroid/content/pm/PathPermission;
    if-eqz v14, :cond_5

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, path:Ljava/lang/String;
    move-object v3, v14

    .local v3, arr$:[Landroid/content/pm/PathPermission;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v13, v3, v7

    .line 338
    .local v13, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v11

    .line 339
    .local v11, pathPerm:Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v13, v10}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 340
    invoke-virtual {v5, v11, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 345
    const/4 v2, 0x0

    .line 346
    move-object v9, v11

    .line 337
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 332
    .end local v2           #allowDefaultRead:Z
    .end local v3           #arr$:[Landroid/content/pm/PathPermission;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pathPerm:Ljava/lang/String;
    .end local v13           #pp:Landroid/content/pm/PathPermission;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 354
    .restart local v2       #allowDefaultRead:Z
    .restart local v14       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    if-nez v2, :cond_0

    .line 358
    .end local v2           #allowDefaultRead:Z
    .end local v4           #componentPerm:Ljava/lang/String;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_6
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v5, v0, v12, v15, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v16

    if-eqz v16, :cond_0

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v16

    if-eqz v16, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " requires "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", or grantUriPermission()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, failReason:Ljava/lang/String;
    :goto_2
    new-instance v16, Ljava/lang/SecurityException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Permission Denial: reading "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " uri "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from pid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 363
    .end local v6           #failReason:Ljava/lang/String;
    :cond_7
    const-string v6, " requires the provider be exported, or grantUriPermission()"

    goto :goto_2
.end method

.method private enforceWritePermission(Landroid/net/Uri;)V
    .locals 19
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 373
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 374
    .local v12, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 375
    .local v15, uid:I
    const/4 v9, 0x0

    .line 377
    .local v9, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mMyUid:I
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 421
    :cond_0
    return-void

    .line 381
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, componentPerm:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 384
    invoke-virtual {v5, v4, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 387
    move-object v9, v4

    .line 393
    :cond_2
    if-nez v4, :cond_4

    const/4 v2, 0x1

    .line 395
    .local v2, allowDefaultWrite:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v14

    .line 396
    .local v14, pps:[Landroid/content/pm/PathPermission;
    if-eqz v14, :cond_5

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 398
    .local v10, path:Ljava/lang/String;
    move-object v3, v14

    .local v3, arr$:[Landroid/content/pm/PathPermission;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v13, v3, v7

    .line 399
    .local v13, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, pathPerm:Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v13, v10}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 401
    invoke-virtual {v5, v11, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 406
    const/4 v2, 0x0

    .line 407
    move-object v9, v11

    .line 398
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 393
    .end local v2           #allowDefaultWrite:Z
    .end local v3           #arr$:[Landroid/content/pm/PathPermission;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pathPerm:Ljava/lang/String;
    .end local v13           #pp:Landroid/content/pm/PathPermission;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 415
    .restart local v2       #allowDefaultWrite:Z
    .restart local v14       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    if-nez v2, :cond_0

    .line 419
    .end local v2           #allowDefaultWrite:Z
    .end local v4           #componentPerm:Ljava/lang/String;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_6
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v5, v0, v12, v15, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v16

    if-eqz v16, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v16, v0

    #getter for: Landroid/content/ContentProvider;->mExported:Z
    invoke-static/range {v16 .. v16}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;)Z

    move-result v16

    if-eqz v16, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " requires "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", or grantUriPermission()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, failReason:Ljava/lang/String;
    :goto_2
    new-instance v16, Ljava/lang/SecurityException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Permission Denial: writing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " uri "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from pid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 424
    .end local v6           #failReason:Ljava/lang/String;
    :cond_7
    const-string v6, " requires the provider be exported, or grantUriPermission()"

    goto :goto_2
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 247
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 248
    .local v1, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    .line 252
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    goto :goto_0

    .line 256
    .end local v1           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    return-object v2
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 241
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "method"
    .parameter "arg"
    .parameter "extras"

    .prologue
    .line 290
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 262
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "mimeTypeFilter"

    .prologue
    .line 295
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 229
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 235
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 283
    if-eqz p2, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 285
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p2, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 277
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mimeType"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    .line 302
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/net/Uri;)V

    .line 203
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v0, :cond_0

    .line 204
    const-string/jumbo v0, "mobile"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getQueryPermission()Ljava/lang/String;

    move-result-object v8

    .line 209
    .local v8, permission:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 211
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v8, v1}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermission(Ljava/lang/String;I)I

    move-result v9

    .line 212
    .local v9, result:I
    if-eqz v9, :cond_1

    .line 213
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static/range {p6 .. p6}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    .end local v9           #result:I
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v7

    .line 217
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "ContentProvider"

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static/range {p6 .. p6}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/net/Uri;)V

    .line 269
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
