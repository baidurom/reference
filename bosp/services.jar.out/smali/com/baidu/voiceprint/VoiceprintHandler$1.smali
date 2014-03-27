.class final Lcom/baidu/voiceprint/VoiceprintHandler$1;
.super Ljava/lang/Object;
.source "VoiceprintHandler.java"

# interfaces
.implements Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/voiceprint/VoiceprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0
    .parameter "errno"

    .prologue
    .line 94
    return-void
.end method

.method public onPartialData([SII)V
    .locals 0
    .parameter "data"
    .parameter "length"
    .parameter "lastFrame"

    .prologue
    .line 91
    return-void
.end method

.method public onVoiceEnd()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onVoiceStart()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
