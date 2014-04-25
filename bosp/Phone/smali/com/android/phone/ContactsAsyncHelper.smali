.class public Lcom/android/phone/ContactsAsyncHelper;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;,
        Lcom/android/phone/ContactsAsyncHelper$ImageTracker;,
        Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;,
        Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static sInstance:Lcom/android/phone/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# instance fields
.field private final mResultHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/android/phone/ContactsAsyncHelper;->sInstance:Lcom/android/phone/ContactsAsyncHelper;

    .line 98
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Lcom/android/phone/ContactsAsyncHelper$1;

    invoke-direct {v1, p0}, Lcom/android/phone/ContactsAsyncHelper$1;-><init>(Lcom/android/phone/ContactsAsyncHelper;)V

    iput-object v1, p0, Lcom/android/phone/ContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;

    .line 289
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 291
    new-instance v1, Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/ContactsAsyncHelper$WorkerHandler;-><init>(Lcom/android/phone/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/phone/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ContactsAsyncHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/ContactsAsyncHelper;->mResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V
    .locals 4
    .parameter "token"
    .parameter "context"
    .parameter "personUri"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 314
    if-nez p2, :cond_0

    .line 315
    const-string v2, "ContactsAsyncHelper"

    const-string v3, "Uri is missing"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_0
    return-void

    .line 323
    :cond_0
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/android/phone/ContactsAsyncHelper$1;)V

    .line 324
    .local v0, args:Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;
    iput-object p4, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 325
    iput-object p1, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 326
    iput-object p2, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 327
    iput-object p3, v0, Lcom/android/phone/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 330
    sget-object v2, Lcom/android/phone/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 331
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 332
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    sget-object v2, Lcom/android/phone/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
