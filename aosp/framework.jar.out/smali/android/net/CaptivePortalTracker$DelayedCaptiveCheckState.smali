.class Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;
.super Lcom/android/internal/util/State;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedCaptiveCheckState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 225
    iget-object v0, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$1504(Landroid/net/CaptivePortalTracker;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/CaptivePortalTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/CaptivePortalTracker;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 227
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 232
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 247
    const/4 v1, 0x0

    .line 249
    :cond_0
    :goto_0
    return v1

    .line 234
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I
    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$1500(Landroid/net/CaptivePortalTracker;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 235
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$1600(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v2, v3}, Landroid/net/CaptivePortalTracker;->access$1700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 236
    .local v0, server:Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 237
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #calls: Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z
    invoke-static {v2, v0}, Landroid/net/CaptivePortalTracker;->access$1800(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #calls: Landroid/net/CaptivePortalTracker;->setNotificationVisible(Z)V
    invoke-static {v2, v1}, Landroid/net/CaptivePortalTracker;->access$700(Landroid/net/CaptivePortalTracker;Z)V

    .line 243
    :cond_1
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;
    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$1900(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v3

    #calls: Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/net/CaptivePortalTracker;->access$2000(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
