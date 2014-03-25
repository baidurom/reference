.class public Lcom/baidu/service/power/PowerModeManager;
.super Ljava/lang/Object;
.source "PowerModeManager.java"


# static fields
.field private static final FILE_CORRECT_SIZE:I = 0x200

.field private static final FILE_OLD_SIZE:I = 0xa00

.field private static final MODES_XML_FILE:Ljava/lang/String; = "power_modes.xml"

.field private static final MODE_LIST_SIZE:I = 0x2

.field private static final POLICYS_XML_FILE:Ljava/lang/String; = "power_policys.xml"

.field private static final POLICY_LIST_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SmartPowerService"

.field private static mInstance:Lcom/baidu/service/power/PowerModeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataDir:Ljava/lang/String;

.field private mForegroundPackage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/app/PendingIntent;

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/PowerMode;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private mPreDataStatus:Z

.field private mSuperReason:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v2, p0, Lcom/baidu/service/power/PowerModeManager;->mSuperReason:I

    .line 44
    iput-boolean v2, p0, Lcom/baidu/service/power/PowerModeManager;->mPreDataStatus:Z

    .line 56
    iput-object p1, p0, Lcom/baidu/service/power/PowerModeManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/baidu/service/power/PowerModeManager;->mHandler:Landroid/os/Handler;

    .line 58
    iget-object v2, p0, Lcom/baidu/service/power/PowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/service/power/PowerModeManager;->mDataDir:Ljava/lang/String;

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/baidu/service/power/PowerModeManager;->mModes:Ljava/util/ArrayList;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;

    .line 61
    invoke-direct {p0}, Lcom/baidu/service/power/PowerModeManager;->initModes()V

    .line 62
    invoke-direct {p0}, Lcom/baidu/service/power/PowerModeManager;->initPolicys()V

    .line 63
    new-instance v1, Lcom/baidu/service/power/PowerModeManager$1;

    invoke-direct {v1, p0}, Lcom/baidu/service/power/PowerModeManager$1;-><init>(Lcom/baidu/service/power/PowerModeManager;)V

    .line 82
    .local v1, receiver:Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/baidu/service/power/PowerModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/service/power/PowerModeManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/service/power/PowerModeManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mModes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/service/power/PowerModeManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mDataDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/service/power/PowerModeManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/baidu/service/power/PowerModeManager;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 88
    sget-object v0, Lcom/baidu/service/power/PowerModeManager;->mInstance:Lcom/baidu/service/power/PowerModeManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/baidu/service/power/PowerModeManager;

    invoke-direct {v0, p0, p1}, Lcom/baidu/service/power/PowerModeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/baidu/service/power/PowerModeManager;->mInstance:Lcom/baidu/service/power/PowerModeManager;

    .line 90
    :cond_0
    sget-object v0, Lcom/baidu/service/power/PowerModeManager;->mInstance:Lcom/baidu/service/power/PowerModeManager;

    return-object v0
.end method

.method public static getInstance()Lcom/baidu/service/power/PowerModeManager;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/baidu/service/power/PowerModeManager;->mInstance:Lcom/baidu/service/power/PowerModeManager;

    return-object v0
.end method

.method private initModes()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/service/power/PowerModeManager$3;

    invoke-direct {v1, p0}, Lcom/baidu/service/power/PowerModeManager$3;-><init>(Lcom/baidu/service/power/PowerModeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method private initPolicys()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/service/power/PowerModeManager$5;

    invoke-direct {v1, p0}, Lcom/baidu/service/power/PowerModeManager$5;-><init>(Lcom/baidu/service/power/PowerModeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method


# virtual methods
.method applyRecoveryPolicy(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 288
    iget-object v2, p0, Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/Policy;

    .line 289
    .local v1, p:Lcom/baidu/service/power/Policy;
    iget v2, v1, Lcom/baidu/service/power/Policy;->mId:I

    if-ne p2, v2, :cond_0

    .line 290
    invoke-virtual {v1, p1}, Lcom/baidu/service/power/Policy;->applyPolicy(Landroid/content/Context;)V

    goto :goto_0

    .line 293
    .end local v1           #p:Lcom/baidu/service/power/Policy;
    :cond_1
    return-void
.end method

.method public getDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getForegroundPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mForegroundPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getPolicy(I)Lcom/baidu/service/power/Policy;
    .locals 3
    .parameter "id"

    .prologue
    .line 279
    iget-object v2, p0, Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/Policy;

    .line 280
    .local v1, p:Lcom/baidu/service/power/Policy;
    iget v2, v1, Lcom/baidu/service/power/Policy;->mId:I

    if-ne p1, v2, :cond_0

    .line 284
    .end local v1           #p:Lcom/baidu/service/power/Policy;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/Policy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mPolicys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPowerMode(I)Lcom/baidu/service/power/PowerMode;
    .locals 3
    .parameter "id"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/baidu/service/power/PowerModeManager;->mModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/service/power/PowerMode;

    .line 227
    .local v1, mode:Lcom/baidu/service/power/PowerMode;
    iget v2, v1, Lcom/baidu/service/power/PowerMode;->mId:I

    if-ne p1, v2, :cond_0

    .line 231
    .end local v1           #mode:Lcom/baidu/service/power/PowerMode;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPowerModeList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/service/power/PowerMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mModes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreDataStatus()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/baidu/service/power/PowerModeManager;->mPreDataStatus:Z

    return v0
.end method

.method public getSuperReason()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/baidu/service/power/PowerModeManager;->mSuperReason:I

    return v0
.end method

.method public setDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/baidu/service/power/PowerModeManager;->mLowBatteryDialog:Landroid/app/AlertDialog;

    .line 272
    return-void
.end method

.method public setForegroundPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/baidu/service/power/PowerModeManager;->mForegroundPackage:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/baidu/service/power/PowerModeManager;->mIntent:Landroid/app/PendingIntent;

    .line 256
    return-void
.end method

.method public setPreDataStatus(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 263
    iput-boolean p1, p0, Lcom/baidu/service/power/PowerModeManager;->mPreDataStatus:Z

    .line 264
    return-void
.end method

.method public setSuperReason(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 239
    iput p1, p0, Lcom/baidu/service/power/PowerModeManager;->mSuperReason:I

    .line 240
    return-void
.end method

.method public storeModes()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/service/power/PowerModeManager$2;

    invoke-direct {v1, p0}, Lcom/baidu/service/power/PowerModeManager$2;-><init>(Lcom/baidu/service/power/PowerModeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method

.method public storePolicys()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/service/power/PowerModeManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/service/power/PowerModeManager$4;

    invoke-direct {v1, p0}, Lcom/baidu/service/power/PowerModeManager$4;-><init>(Lcom/baidu/service/power/PowerModeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method
