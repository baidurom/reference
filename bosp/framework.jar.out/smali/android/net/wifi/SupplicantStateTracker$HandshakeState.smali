.class Landroid/net/wifi/SupplicantStateTracker$HandshakeState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeState"
.end annotation


# static fields
.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x5


# instance fields
.field private mLoopDetectCount:I

.field private mLoopDetectIndex:I

.field final synthetic this$0:Landroid/net/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Landroid/net/wifi/SupplicantStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 272
    iput v0, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 273
    iput v0, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    .line 274
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 278
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 309
    :cond_0
    :goto_0
    return v2

    .line 280
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 281
    .local v1, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 282
    .local v0, state:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    iget v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 284
    iget v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    .line 285
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mLoopDetectIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", increase mLoopDetectCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1
    iget v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 289
    const-string v3, "SupplicantStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Supplicant loop detected, disabling network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget v4, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    #calls: Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(I)V
    invoke-static {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->access$1000(Landroid/net/wifi/SupplicantStateTracker;I)V

    .line 293
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    iput v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 294
    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mIsRekey:Z
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$1100(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    const-string v3, "SupplicantStateTracker"

    const-string v4, "Supplicant rekey ends"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #setter for: Landroid/net/wifi/SupplicantStateTracker;->mIsRekey:Z
    invoke-static {v3, v2}, Landroid/net/wifi/SupplicantStateTracker;->access$1102(Landroid/net/wifi/SupplicantStateTracker;Z)Z

    .line 309
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 299
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    iget-object v3, p0, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;->this$0:Landroid/net/wifi/SupplicantStateTracker;

    #getter for: Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z
    invoke-static {v3}, Landroid/net/wifi/SupplicantStateTracker;->access$100(Landroid/net/wifi/SupplicantStateTracker;)Z

    move-result v3

    #calls: Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    invoke-static {v2, v0, v3}, Landroid/net/wifi/SupplicantStateTracker;->access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V

    goto :goto_1

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x24006
        :pswitch_0
    .end packed-switch
.end method
