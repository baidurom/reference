.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 502
    if-eqz p1, :cond_1

    .line 503
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v1

    .line 504
    .local v1, regState:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearching:Z

    if-ne v6, v2, :cond_0

    if-eq v1, v7, :cond_0

    .line 505
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "PhoneStateListener, sim1 searching finished"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-boolean v5, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearching:Z

    .line 507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v2, v5, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onSearchNetworkUpdate(IZ)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    .end local v0           #i:I
    :cond_0
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener, sim1 on service state changed before.state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-ne v1, v7, :cond_1

    .line 513
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-boolean v6, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mNetSearching:Z

    .line 514
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 515
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$2;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mInfoCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$800(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-interface {v2, v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;->onSearchNetworkUpdate(IZ)V

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    .end local v0           #i:I
    .end local v1           #regState:I
    :cond_1
    return-void
.end method
