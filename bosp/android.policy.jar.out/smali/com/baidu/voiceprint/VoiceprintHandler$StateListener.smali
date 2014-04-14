.class public interface abstract Lcom/baidu/voiceprint/VoiceprintHandler$StateListener;
.super Ljava/lang/Object;
.source "VoiceprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/voiceprint/VoiceprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ILLEGAL_STATE:I = -0x3

.field public static final INVALID_OPERATION:I = -0x4

.field public static final SILENCE_TOO_LONG:I = -0x6

.field public static final SPEECH_TOO_SHORT:I = -0x5

.field public static final START_ERROR:I = -0x2


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onPartialData([SII)V
.end method

.method public abstract onVoiceEnd()V
.end method

.method public abstract onVoiceStart()V
.end method
