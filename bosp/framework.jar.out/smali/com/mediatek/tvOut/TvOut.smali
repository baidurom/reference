.class public Lcom/mediatek/tvOut/TvOut;
.super Ljava/lang/Object;
.source "TvOut.java"


# static fields
.field public static final NTSC:I = 0x0

.field public static final PAL:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TV/JAV"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "TV/JAV"

    const-string v1, "com.mediatek.TvOut"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v0, "TV/JAV"

    const-string/jumbo v1, "load libtvoutjni.so"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string/jumbo v0, "tvoutjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native IPOPowerOff()Z
.end method

.method public native disableVideoMode(Z)Z
.end method

.method public native enableTvOut(Z)Z
.end method

.method public native enableTvOutManual(Z)Z
.end method

.method public native isShowButton()Z
.end method

.method public native leavePattern()Z
.end method

.method public native setTvSystem(I)Z
.end method

.method public native showPattern(I)Z
.end method

.method public native tvoutPowerEnable(Z)Z
.end method
