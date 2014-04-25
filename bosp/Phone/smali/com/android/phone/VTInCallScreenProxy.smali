.class public Lcom/android/phone/VTInCallScreenProxy;
.super Ljava/lang/Object;
.source "VTInCallScreenProxy.java"

# interfaces
.implements Lcom/android/phone/IVTInCallScreen;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VTInCallScreenProxy"


# instance fields
.field mDialerProxy:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

.field mInCallScreen:Lcom/android/phone/InCallScreen;

.field mIsInflate:Z

.field mIsLocaleChanged:Z

.field mVTInCallScreen:Lcom/android/phone/VTInCallScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerProxy;)V
    .locals 1
    .parameter "inCallScreen"
    .parameter "dialerProxy"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsLocaleChanged:Z

    .line 23
    iput-object p1, p0, Lcom/android/phone/VTInCallScreenProxy;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 24
    iput-object p2, p0, Lcom/android/phone/VTInCallScreenProxy;->mDialerProxy:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    .line 25
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 235
    const-string v0, "VTInCallScreenProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method


# virtual methods
.method public NotifyLocaleChange()V
    .locals 1

    .prologue
    .line 210
    const-string v0, "NotifyLocaleChange"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreenProxy;->log(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 212
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsLocaleChanged:Z

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->NotifyLocaleChange()V

    goto :goto_0
.end method

.method public closeVTInCallCanvas()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->closeVTInCallCanvas()V

    goto :goto_0
.end method

.method public dismissVTDialogs()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->dismissVTDialogs()V

    goto :goto_0
.end method

.method public getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 90
    :cond_0
    sget-object v0, Lcom/android/phone/VTCallUtils$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/VTCallUtils$VTScreenMode;

    .line 91
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;

    move-result-object v0

    goto :goto_0
.end method

.method public handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menuItem"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public initCommonVTState()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->initCommonVTState()V

    goto :goto_0
.end method

.method public initDialingSuccessVTState()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->initDialingSuccessVTState()V

    goto :goto_0
.end method

.method public initDialingVTState()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->initDialingVTState()V

    goto :goto_0
.end method

.method public initVTInCallScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 28
    iget-object v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 29
    const-string v1, "mInCallScreen is null, just return"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreenProxy;->log(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-eqz v1, :cond_1

    .line 33
    const-string v1, "already inflate, just return"

    invoke-direct {p0, v1}, Lcom/android/phone/VTInCallScreenProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f0700cc

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 38
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 39
    iget-object v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f07014d

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/VTInCallScreen;

    iput-object v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    .line 40
    iget-object v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreenProxy;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v2}, Lcom/android/phone/VTInCallScreen;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 41
    iget-object v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    iget-object v2, p0, Lcom/android/phone/VTInCallScreenProxy;->mDialerProxy:Lcom/android/phone/DTMFTwelveKeyDialerProxy;

    invoke-virtual {v1, v2}, Lcom/android/phone/VTInCallScreen;->setDialerProxy(Lcom/android/phone/DTMFTwelveKeyDialerProxy;)V

    .line 42
    iget-object v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreen;->initVTInCallScreen()V

    .line 43
    iget-boolean v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsLocaleChanged:Z

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreen;->NotifyLocaleChange()V

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsLocaleChanged:Z

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/VTInCallScreen;->registerForVTPhoneStates()V

    .line 48
    iput-boolean v3, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    .line 49
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTIsInflate:Z

    goto :goto_0
.end method

.method public internalAnswerVTCallPre()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/phone/VTInCallScreenProxy;->initVTInCallScreen()V

    .line 96
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-nez v0, :cond_0

    .line 97
    const-string v0, "inflate failed"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreenProxy;->log(Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->internalAnswerVTCallPre()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->onDestroy()V

    goto :goto_0
.end method

.method public onDisconnectVT(Lcom/android/internal/telephony/Connection;IZ)Z
    .locals 1
    .parameter "connection"
    .parameter "slotId"
    .parameter "isForeground"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/VTInCallScreen;->onDisconnectVT(Lcom/android/internal/telephony/Connection;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreen;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onReceiveVTManagerStartCounter()V
    .locals 1

    .prologue
    .line 219
    const-string v0, "onReceiveVTManagerStartCounter"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreenProxy;->log(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->onReceiveVTManagerStartCounter()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 203
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreenProxy;->log(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->onStop()V

    goto :goto_0
.end method

.method public openVTInCallCanvas()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->openVTInCallCanvas()V

    goto :goto_0
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->refreshAudioModePopup()V

    goto :goto_0
.end method

.method public registerForVTPhoneStates()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->registerForVTPhoneStates()V

    goto :goto_0
.end method

.method public resetVTFlags()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->resetVTFlags()V

    goto :goto_0
.end method

.method public setVTDisplayScreenMode(Z)V
    .locals 1
    .parameter "isFullScreenMode"

    .prologue
    .line 196
    const-string v0, "setVTDisplayScreenMode"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreenProxy;->log(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreen;->setVTDisplayScreenMode(Z)V

    goto :goto_0
.end method

.method public setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreen;->setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_0
.end method

.method public setVTVisible(Z)V
    .locals 1
    .parameter "bIsVisible"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreen;->setVTVisible(Z)V

    goto :goto_0
.end method

.method public setupMenuItems(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreen;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public showReCallDialog(ILjava/lang/String;I)V
    .locals 1
    .parameter "resid"
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 227
    const-string v0, "showReCallDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreenProxy;->log(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 189
    const-string v0, "stopRecord"

    invoke-direct {p0, v0}, Lcom/android/phone/VTInCallScreenProxy;->log(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->stopRecord()V

    goto :goto_0
.end method

.method public unregisterForVTPhoneStates()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/VTInCallScreen;->unregisterForVTPhoneStates()V

    goto :goto_0
.end method

.method public updateElapsedTime(J)V
    .locals 1
    .parameter "elapsedTime"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/VTInCallScreen;->updateElapsedTime(J)V

    goto :goto_0
.end method

.method public updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreen;->updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V

    goto :goto_0
.end method

.method public updateVideoCallRecordState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mIsInflate:Z

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTInCallScreenProxy;->mVTInCallScreen:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/VTInCallScreen;->updateVideoCallRecordState(I)V

    goto :goto_0
.end method
