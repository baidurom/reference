.class public Lcom/android/phone/VTEMMediaLoopBack;
.super Landroid/app/Activity;
.source "VTEMMediaLoopBack.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mHighVideoChanged:Z

.field private mLowVideoChanged:Z

.field private mVTDial:Landroid/widget/Button;

.field private mVTEnd:Landroid/widget/Button;

.field private mVTHighVideo:Landroid/view/SurfaceView;

.field private mVTLowVideo:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mHighVideoChanged:Z

    .line 30
    iput-boolean v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mLowVideoChanged:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 127
    const v0, 0x7f070148

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 129
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VT EM Media loopback : dial ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTSettingUtils.getInstance().updateVTEngineerModeValues() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/android/phone/VTSettingUtils;->getInstance()Lcom/android/phone/VTSettingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/VTSettingUtils;->updateVTEngineerModeValues()V

    .line 133
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTSettingUtils.getInstance().updateVTEngineerModeValues() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().setVTOpen() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->mCMGemini:Lcom/android/internal/telephony/gemini/MTKCallManager;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setVTOpen(Landroid/content/Context;Ljava/lang/Object;)V

    .line 141
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().setVTOpen() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().setVTReady() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 145
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().setVTReady() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().onConnected() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onConnected()V

    .line 149
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().onConnected() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const v0, 0x7f07014c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 152
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VT EM Media loopback : hangup ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().onConnected() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 156
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().onConnected() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().onConnected() start ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 160
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "VTManager.getInstance().onConnected() end ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/VTEMMediaLoopBack;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Lcom/android/phone/VTEMMediaLoopBack;->setContentView(I)V

    .line 38
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->registerVTListener(Landroid/os/Handler;)V

    .line 40
    const v0, 0x7f070144

    invoke-virtual {p0, v0}, Lcom/android/phone/VTEMMediaLoopBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTHighVideo:Landroid/view/SurfaceView;

    .line 41
    const v0, 0x7f07014a

    invoke-virtual {p0, v0}, Lcom/android/phone/VTEMMediaLoopBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTLowVideo:Landroid/view/SurfaceView;

    .line 43
    const-string v0, "VTEMMediaLoopBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVTHighVideo\'s holder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v0, "VTEMMediaLoopBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVTLowVideo\'s holder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 47
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 49
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "set type - SurfaceHolder.SURFACE_TYPE_PUSH_BUFFERS ! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 51
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 53
    const v0, 0x7f070148

    invoke-virtual {p0, v0}, Lcom/android/phone/VTEMMediaLoopBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTDial:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTDial:Landroid/widget/Button;

    const-string v1, "Dial"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTDial:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTDial:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 58
    const v0, 0x7f07014c

    invoke-virtual {p0, v0}, Lcom/android/phone/VTEMMediaLoopBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTEnd:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTEnd:Landroid/widget/Button;

    const-string v1, "End"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTEnd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTEnd:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "onPause! -> finish itself !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/VTEMMediaLoopBack;->finish()V

    .line 70
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "onResume!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 87
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "onStart!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 81
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "onStop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 94
    const-string v0, "VTEMMediaLoopBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mHighVideoChanged:Z

    if-nez v0, :cond_0

    .line 97
    iput-boolean v3, p0, Lcom/android/phone/VTEMMediaLoopBack;->mHighVideoChanged:Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mLowVideoChanged:Z

    if-nez v0, :cond_1

    .line 100
    iput-boolean v3, p0, Lcom/android/phone/VTEMMediaLoopBack;->mLowVideoChanged:Z

    .line 102
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mHighVideoChanged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mLowVideoChanged:Z

    if-eqz v0, :cond_2

    .line 104
    const-string v0, "VTEMMediaLoopBack"

    const-string v1, "surfaceChanged : VTManager.getInstance().setDisplay(mVTLowVideo.getHolder(), mVTHighVideo.getHolder())"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTDial:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/phone/VTEMMediaLoopBack;->mVTEnd:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 114
    const-string v0, "VTEMMediaLoopBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 120
    const-string v0, "VTEMMediaLoopBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method
