.class public interface abstract Lcom/android/phone/IVTInCallScreen;
.super Ljava/lang/Object;
.source "IVTInCallScreen.java"


# virtual methods
.method public abstract NotifyLocaleChange()V
.end method

.method public abstract dismissVTDialogs()V
.end method

.method public abstract getVTScreenMode()Lcom/android/phone/VTCallUtils$VTScreenMode;
.end method

.method public abstract handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z
.end method

.method public abstract initCommonVTState()V
.end method

.method public abstract initDialingSuccessVTState()V
.end method

.method public abstract initDialingVTState()V
.end method

.method public abstract internalAnswerVTCallPre()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDisconnectVT(Lcom/android/internal/telephony/Connection;IZ)Z
.end method

.method public abstract onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onReceiveVTManagerStartCounter()V
.end method

.method public abstract onStop()V
.end method

.method public abstract refreshAudioModePopup()V
.end method

.method public abstract resetVTFlags()V
.end method

.method public abstract setVTDisplayScreenMode(Z)V
.end method

.method public abstract setVTScreenMode(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
.end method

.method public abstract setVTVisible(Z)V
.end method

.method public abstract setupMenuItems(Landroid/view/Menu;)V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract updateElapsedTime(J)V
.end method

.method public abstract updateVTScreen(Lcom/android/phone/VTCallUtils$VTScreenMode;)V
.end method

.method public abstract updateVideoCallRecordState(I)V
.end method
