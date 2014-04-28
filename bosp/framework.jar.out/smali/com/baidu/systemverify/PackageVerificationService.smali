.class public Lcom/baidu/systemverify/PackageVerificationService;
.super Ljava/lang/Object;
.source "PackageVerificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/systemverify/PackageVerificationService$VerifyHandler;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_COMPLETE:I = 0x1

.field private static final MSG_CHECK_PREINSTALL_PACKAGES:I = 0x0

.field private static final PREINSTALL_PACKAGES:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "PackageVerificationService"

.field private static mService:Lcom/baidu/systemverify/PackageVerificationService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.baidu.bsf.system"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.baidu.bsf.service"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/systemverify/PackageVerificationService;->PREINSTALL_PACKAGES:[Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/systemverify/PackageVerificationService;->mService:Lcom/baidu/systemverify/PackageVerificationService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/baidu/systemverify/PackageVerificationService;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/systemverify/PackageVerificationService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Package_Verify"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/systemverify/PackageVerificationService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iget-object v0, p0, Lcom/baidu/systemverify/PackageVerificationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v0, Lcom/baidu/systemverify/PackageVerificationService$VerifyHandler;

    iget-object v1, p0, Lcom/baidu/systemverify/PackageVerificationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/systemverify/PackageVerificationService$VerifyHandler;-><init>(Lcom/baidu/systemverify/PackageVerificationService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/systemverify/PackageVerificationService;->mHandler:Landroid/os/Handler;

    .line 45
    iget-object v0, p0, Lcom/baidu/systemverify/PackageVerificationService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/baidu/systemverify/PackageVerificationService;->PREINSTALL_PACKAGES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/systemverify/PackageVerificationService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/systemverify/PackageVerificationService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/systemverify/PackageVerificationService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/systemverify/PackageVerificationService;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/baidu/systemverify/PackageVerificationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 61
    iput-object v1, p0, Lcom/baidu/systemverify/PackageVerificationService;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object v1, p0, Lcom/baidu/systemverify/PackageVerificationService;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/baidu/systemverify/PackageVerificationService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v1, 0x1

    .line 55
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/systemverify/PackageVerificationService;->mService:Lcom/baidu/systemverify/PackageVerificationService;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/baidu/systemverify/PackageVerificationService;

    invoke-direct {v0, p0}, Lcom/baidu/systemverify/PackageVerificationService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/systemverify/PackageVerificationService;->mService:Lcom/baidu/systemverify/PackageVerificationService;

    .line 35
    :cond_0
    return-void
.end method
