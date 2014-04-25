.class Lcom/android/phone/CallNotifier$1;
.super Landroid/telephony/PhoneStateListener;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field inAirplaneMode:Z

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 1
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .parameter "cfi"

    .prologue
    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    aput-boolean p1, v0, v1

    .line 606
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    .line 610
    :cond_0
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 2
    .parameter "mwi"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/CallNotifier;->onMwiChanged(ZI)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;ZI)V

    .line 602
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 614
    const-string v0, "CallNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener.onServiceStateChanged: serviceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    .line 617
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier$1;->inAirplaneMode:Z

    if-ne v0, v1, :cond_2

    .line 619
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v0, v2, v2}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    .line 628
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 616
    goto :goto_0

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v0, v0, Lcom/android/phone/CallNotifier;->cfiStatus:[Z

    aget-boolean v0, v0, v2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->onCfiChanged(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;ZI)V

    goto :goto_1
.end method
