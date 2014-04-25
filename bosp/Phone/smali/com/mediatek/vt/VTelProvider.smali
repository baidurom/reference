.class public Lcom/mediatek/vt/VTelProvider;
.super Ljava/lang/Object;
.source "VTelProvider.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VTelProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "mtk_vt_client"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native closeVTService()I
.end method

.method public static native enableAlwaysAskSettings(I)I
.end method

.method public static native enableHideMe(I)I
.end method

.method public static native enableHideYou(I)I
.end method

.method public static native getCameraSensorCount()I
.end method

.method public static getParameters()Lcom/mediatek/vt/CameraParamters;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/mediatek/vt/CameraParamters;

    invoke-direct {v0}, Lcom/mediatek/vt/CameraParamters;-><init>()V

    .line 78
    .local v0, p:Lcom/mediatek/vt/CameraParamters;
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->nativeGetParameters()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/mediatek/vt/CameraParamters;->unflatten(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lcom/mediatek/vt/CameraParamters;->dump()V

    .line 81
    return-object v0
.end method

.method public static native incomingVTCall(I)I
.end method

.method public static native incomingVideoDispaly(I)I
.end method

.method public static native initVTService(Landroid/view/Surface;Landroid/view/Surface;)I
.end method

.method public static native isMicrophoneOn()I
.end method

.method public static native isSpeakerOn()I
.end method

.method public static native lockPeerVideo()I
.end method

.method private static final native nativeGetParameters()Ljava/lang/String;
.end method

.method private static final native nativeSetParameters(Ljava/lang/String;)V
.end method

.method public static native onUserInput(Ljava/lang/String;)V
.end method

.method public static final native openVTSerice()I
.end method

.method public static postEventFromNative(IIILjava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 91
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mediatek/vt/VTManager;->postEventFromNative(IIILjava/lang/Object;)V

    .line 92
    return-void
.end method

.method public static native replacePeerVideoSettings(ILjava/lang/String;)I
.end method

.method public static native setEM(III)V
.end method

.method public static native setEndCallFlag()V
.end method

.method public static native setInvokeLockPeerVideoBeforeOpen(I)I
.end method

.method public static native setLocalVideoType(ILjava/lang/String;)V
.end method

.method public static setParameters(Lcom/mediatek/vt/CameraParamters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 68
    const-string v0, "VTelProvider"

    invoke-virtual {p0}, Lcom/mediatek/vt/CameraParamters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/vt/CameraParamters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/vt/VTelProvider;->nativeSetParameters(Ljava/lang/String;)V

    .line 70
    const-string v0, "VTelProvider"

    const-string v1, "setParameters ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public static native setPeerVideo(I)V
.end method

.method public static native setVTVisible(ILandroid/view/Surface;Landroid/view/Surface;)I
.end method

.method public static native snapshot(ILjava/lang/String;)I
.end method

.method public static native startRecording(ILjava/lang/String;J)I
.end method

.method public static final native startVTService()I
.end method

.method public static native stopRecording(I)I
.end method

.method public static native stopVTService()I
.end method

.method public static native switchCamera()I
.end method

.method public static native turnOnMicrophone(I)V
.end method

.method public static native turnOnSpeaker(I)V
.end method

.method public static native unlockPeerVideo()I
.end method

.method public static updateParameters(Lcom/mediatek/vt/CameraParamters;)Lcom/mediatek/vt/CameraParamters;
    .locals 1
    .parameter "p"

    .prologue
    .line 85
    invoke-static {}, Lcom/mediatek/vt/VTelProvider;->nativeGetParameters()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/vt/CameraParamters;->unflatten(Ljava/lang/String;)V

    .line 87
    return-object p0
.end method

.method public static native userSelectYes(I)I
.end method
