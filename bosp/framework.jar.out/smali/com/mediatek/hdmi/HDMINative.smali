.class public Lcom/mediatek/hdmi/HDMINative;
.super Ljava/lang/Object;
.source "HDMINative.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "hdmi"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "hdmi"

    const-string/jumbo v1, "load libhdminative_jni.so"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string/jumbo v0, "mtkhdmi_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native enableAudio(Z)Z
.end method

.method public native enableHDMI(Z)Z
.end method

.method public native enableHDMIIPO(Z)Z
.end method

.method public native enableVideo(Z)Z
.end method

.method public native hdmiPortraitEnable(Z)Z
.end method

.method public native hdmiPowerEnable(Z)Z
.end method

.method public native ishdmiForceAwake()Z
.end method

.method public native setAudioConfig(I)Z
.end method

.method public native setVideoConfig(I)Z
.end method
