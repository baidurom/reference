.class public Lcom/mediatek/jpe/NativeCheck;
.super Ljava/lang/Object;
.source "NativeCheck.java"


# static fields
.field static final TAG:Ljava/lang/String; = "JpeNativeCheck"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "nativecheck-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkMtk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/jpe/JpeException;
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "JpeNativeCheck"

    const-string v1, "before calling ncheckMtk()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/mediatek/jpe/NativeCheck;->ncheckMtk()I

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/mediatek/jpe/JpeException;

    const-string/jumbo v1, "not mtk"

    invoke-direct {v0, v1}, Lcom/mediatek/jpe/JpeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    return-void
.end method

.method public native ncheckMtk()I
.end method
