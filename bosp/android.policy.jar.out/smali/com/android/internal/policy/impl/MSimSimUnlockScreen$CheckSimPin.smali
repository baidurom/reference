.class abstract Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;
.super Ljava/lang/Thread;
.source "MSimSimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pin"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(I)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 125
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->access$000(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->supplyPinReportResult(Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, result:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$1;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #result:I
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin$2;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
