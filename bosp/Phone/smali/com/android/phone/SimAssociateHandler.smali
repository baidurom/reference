.class public Lcom/android/phone/SimAssociateHandler;
.super Landroid/os/HandlerThread;
.source "SimAssociateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimAssociateHandler$MyHandler;,
        Lcom/android/phone/SimAssociateHandler$ContactContentObserver;
    }
.end annotation


# static fields
.field public static final ASSOCIATE_CHANGED:Ljava/lang/String; = "com.android.contacts.associate_changed"

.field private static final MIN_MATCH:I = 0x7

.field private static final MSG_LOAD:I = 0x0

.field private static final MSG_QUIT:I = 0x1

.field private static final MSG_REFRESH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SimAssociateHandler"

.field private static sMe:Lcom/android/phone/SimAssociateHandler;


# instance fields
.field private mCacheDirty:Z

.field mContactContentObserver:Lcom/android/phone/SimAssociateHandler$ContactContentObserver;

.field protected mContext:Landroid/content/Context;

.field private mLoading:Z

.field protected mMyHandler:Lcom/android/phone/SimAssociateHandler$MyHandler;

.field protected mSimAssociationMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field protected myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 74
    const-string v1, "SimAssociateHandler"

    invoke-direct {p0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 36
    iput-boolean v2, p0, Lcom/android/phone/SimAssociateHandler;->mLoading:Z

    .line 37
    iput-boolean v2, p0, Lcom/android/phone/SimAssociateHandler;->mStarted:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/phone/SimAssociateHandler;->mCacheDirty:Z

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/phone/SimAssociateHandler;->mSimAssociationMaps:Ljava/util/HashMap;

    .line 48
    new-instance v1, Lcom/android/phone/SimAssociateHandler$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SimAssociateHandler$1;-><init>(Lcom/android/phone/SimAssociateHandler;)V

    iput-object v1, p0, Lcom/android/phone/SimAssociateHandler;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object p1, p0, Lcom/android/phone/SimAssociateHandler;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.contacts.associate_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, filter:Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/phone/SimAssociateHandler$ContactContentObserver;

    invoke-direct {v1, p0}, Lcom/android/phone/SimAssociateHandler$ContactContentObserver;-><init>(Lcom/android/phone/SimAssociateHandler;)V

    iput-object v1, p0, Lcom/android/phone/SimAssociateHandler;->mContactContentObserver:Lcom/android/phone/SimAssociateHandler$ContactContentObserver;

    .line 78
    iget-object v1, p0, Lcom/android/phone/SimAssociateHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/SimAssociateHandler;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/phone/SimAssociateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/SimAssociateHandler;->mContactContentObserver:Lcom/android/phone/SimAssociateHandler$ContactContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimAssociateHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/phone/SimAssociateHandler;->mCacheDirty:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/SimAssociateHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/phone/SimAssociateHandler;->mCacheDirty:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/phone/SimAssociateHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/phone/SimAssociateHandler;->mLoading:Z

    return p1
.end method

.method public static getInstance()Lcom/android/phone/SimAssociateHandler;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/android/phone/SimAssociateHandler;->sMe:Lcom/android/phone/SimAssociateHandler;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/phone/SimAssociateHandler;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/SimAssociateHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/SimAssociateHandler;->sMe:Lcom/android/phone/SimAssociateHandler;

    .line 92
    :cond_0
    sget-object v0, Lcom/android/phone/SimAssociateHandler;->sMe:Lcom/android/phone/SimAssociateHandler;

    return-object v0
.end method


# virtual methods
.method public load()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 85
    const-string v0, "SimAssociateHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public prepair()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/phone/SimAssociateHandler;->start()V

    .line 97
    new-instance v0, Lcom/android/phone/SimAssociateHandler$MyHandler;

    invoke-virtual {p0}, Lcom/android/phone/SimAssociateHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/SimAssociateHandler$MyHandler;-><init>(Lcom/android/phone/SimAssociateHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/SimAssociateHandler;->mMyHandler:Lcom/android/phone/SimAssociateHandler$MyHandler;

    .line 98
    return-void
.end method

.method public query(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "number"

    .prologue
    .line 108
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, strNumber:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SimAssociateHandler;->mSimAssociationMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public relase()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/SimAssociateHandler;->mMyHandler:Lcom/android/phone/SimAssociateHandler$MyHandler;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/phone/SimAssociateHandler;->mMyHandler:Lcom/android/phone/SimAssociateHandler$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/SimAssociateHandler$MyHandler;->sendEmptyMessage(I)Z

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SimAssociateHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/SimAssociateHandler;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    iget-object v0, p0, Lcom/android/phone/SimAssociateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SimAssociateHandler;->mContactContentObserver:Lcom/android/phone/SimAssociateHandler$ContactContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    return-void
.end method
