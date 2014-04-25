.class public Lcom/android/phone/DTMFTwelveKeyDialerProxy;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialerProxy.java"

# interfaces
.implements Lcom/android/phone/IDTMFTwelveKeyDialer;


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DTMFTwelveKeyDialerProxy"


# instance fields
.field mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field mInCallScreen:Lcom/android/phone/InCallScreen;

.field mIsInflate:Z

.field private mIsStartDialerSession:Z


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 2
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    .line 12
    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 13
    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 15
    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsStartDialerSession:Z

    .line 18
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 20
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 134
    const-string v0, "DTMFTwelveKeyDialerProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method


# virtual methods
.method public clearDigits()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    goto :goto_0
.end method

.method public clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    goto :goto_0
.end method

.method public closeDialer(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0
.end method

.method public handleBurstDtmfConfirmation()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->handleBurstDtmfConfirmation()V

    goto :goto_0
.end method

.method public isKeyEventAcceptable(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    goto :goto_0
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public openDialer(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    .line 64
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-nez v1, :cond_2

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 67
    .local v0, dialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Found dialerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->log(Ljava/lang/String;)V

    .line 70
    if-nez v0, :cond_1

    .line 71
    const-string v1, "DTMFTwelveKeyDialerProxy"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v0           #dialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;
    :goto_0
    return-void

    .line 75
    .restart local v0       #dialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;
    :cond_1
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v1, v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    .line 77
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsStartDialerSession:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->startDialerSession()V

    .line 79
    .end local v0           #dialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;
    :cond_2
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto :goto_0
.end method

.method public startDialerSession()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDialer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsInflate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->log(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsStartDialerSession:Z

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    goto :goto_0
.end method

.method public startLocalToneIfNeeded(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneIfNeeded(C)V

    goto :goto_0
.end method

.method public startTone(C)V
    .locals 1
    .parameter "c"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startTone(C)V

    goto :goto_0
.end method

.method public stopDialerSession()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 39
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsStartDialerSession:Z

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    goto :goto_0
.end method

.method public stopLocalToneIfNeeded()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneIfNeeded()V

    goto :goto_0
.end method

.method public stopTone()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerProxy;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_0
.end method
