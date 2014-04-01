.class abstract Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.super Ljava/lang/Thread;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private result:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "pin"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPuk:Ljava/lang/String;

    .line 502
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "pin"
    .parameter "simId"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 504
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPuk:Ljava/lang/String;

    .line 507
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "puk"
    .parameter "pin"
    .parameter "simId"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 510
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    .line 511
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPuk:Ljava/lang/String;

    .line 513
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->result:Z

    return v0
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 520
    :try_start_0
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckSimPin,mSimId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v1, v1, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    if-nez v1, :cond_2

    .line 523
    const-string v1, "SimUnlockScreen"

    const-string v2, "CheckSimPin, check sim 1 or single"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_1

    .line 527
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPinGemini(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->result:Z

    .line 540
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    .line 568
    :goto_1
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 535
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->result:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 546
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v1, "SimUnlockScreen"

    const-string v2, "CheckSimPin, check sim 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_4

    .line 549
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPinGemini(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->result:Z

    .line 555
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v2, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 551
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_3

    .line 553
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPuk:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->result:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
