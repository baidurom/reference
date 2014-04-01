.class Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;
.super Landroid/os/HandlerThread;
.source "YellowPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/YellowPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# static fields
.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "YellowPhotoLoader"

.field private static final MESSAGE_LOAD_PHOTOS:I = 0x1


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/baidu/internal/contacts/YellowPhotoManager;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/contacts/YellowPhotoManager;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "resolver"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->this$0:Lcom/baidu/internal/contacts/YellowPhotoManager;

    .line 282
    const-string v0, "YellowPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 275
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mNumbers:Ljava/util/Set;

    .line 277
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mPhotoUris:Ljava/util/Set;

    .line 283
    iput-object p2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 284
    return-void
.end method

.method private loadPhotosFromDatabase()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 313
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mNumbers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 318
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "number IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mNumbers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 320
    if-eqz v8, :cond_1

    .line 321
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    const/4 v7, 0x0

    .line 328
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/baidu/internal/contacts/YellowPagesContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/baidu/internal/contacts/YellowPhotoManager;->access$300()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mNumbers:Ljava/util/Set;

    invoke-static {}, Lcom/baidu/internal/contacts/YellowPhotoManager;->access$400()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 330
    if-eqz v7, :cond_4

    .line 331
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 333
    .local v10, number:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 334
    .local v6, bytes:[B
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->this$0:Lcom/baidu/internal/contacts/YellowPhotoManager;

    #calls: Lcom/baidu/internal/contacts/YellowPhotoManager;->cacheBitmap(Ljava/lang/Object;[B)V
    invoke-static {v0, v10, v6}, Lcom/baidu/internal/contacts/YellowPhotoManager;->access$500(Lcom/baidu/internal/contacts/YellowPhotoManager;Ljava/lang/Object;[B)V

    .line 335
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mNumbers:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 339
    .end local v6           #bytes:[B
    .end local v10           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 340
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 339
    :cond_4
    if-eqz v7, :cond_5

    .line 340
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mNumbers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 345
    .restart local v10       #number:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->this$0:Lcom/baidu/internal/contacts/YellowPhotoManager;

    #calls: Lcom/baidu/internal/contacts/YellowPhotoManager;->cacheBitmap(Ljava/lang/Object;Z)V
    invoke-static {v0, v10, v11}, Lcom/baidu/internal/contacts/YellowPhotoManager;->access$600(Lcom/baidu/internal/contacts/YellowPhotoManager;Ljava/lang/Object;Z)V

    goto :goto_3

    .line 348
    .end local v10           #number:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->this$0:Lcom/baidu/internal/contacts/YellowPhotoManager;

    #getter for: Lcom/baidu/internal/contacts/YellowPhotoManager;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/internal/contacts/YellowPhotoManager;->access$700(Lcom/baidu/internal/contacts/YellowPhotoManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private loadPhotosInBackground()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->this$0:Lcom/baidu/internal/contacts/YellowPhotoManager;

    iget-object v1, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mNumbers:Ljava/util/Set;

    iget-object v2, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mPhotoUris:Ljava/util/Set;

    #calls: Lcom/baidu/internal/contacts/YellowPhotoManager;->obtainNumbersAndPhotoUris(Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v0, v1, v2}, Lcom/baidu/internal/contacts/YellowPhotoManager;->access$200(Lcom/baidu/internal/contacts/YellowPhotoManager;Ljava/util/Set;Ljava/util/Set;)V

    .line 309
    invoke-direct {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->loadPhotosFromDatabase()V

    .line 310
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 290
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 299
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 304
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 301
    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->ensureHandler()V

    .line 294
    iget-object v0, p0, Lcom/baidu/internal/contacts/YellowPhotoManager$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 295
    return-void
.end method
