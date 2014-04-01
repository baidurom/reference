.class public Lcom/mediatek/audioprofile/AudioProfileListener;
.super Ljava/lang/Object;
.source "AudioProfileListener.java"


# static fields
.field public static final LISTEN_AUDIOPROFILE_CHANGEG:I = 0x1

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_RINGERMODE_CHANGED:I = 0x2

.field public static final LISTEN_RINGER_VOLUME_CHANGED:I = 0x4


# instance fields
.field callback:Lcom/mediatek/audioprofile/IAudioProfileListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileListener$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileListener$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileListener;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileListener;->callback:Lcom/mediatek/audioprofile/IAudioProfileListener;

    .line 139
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileListener$2;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileListener$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileListener;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileListener;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/mediatek/audioprofile/IAudioProfileListener;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileListener;->callback:Lcom/mediatek/audioprofile/IAudioProfileListener;

    return-object v0
.end method

.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "profileKey"

    .prologue
    .line 104
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 112
    return-void
.end method

.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 0
    .parameter "oldVolume"
    .parameter "newVolume"
    .parameter "extra"

    .prologue
    .line 119
    return-void
.end method
