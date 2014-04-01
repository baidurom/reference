.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x1d

.field static final TRANSACTION_adjustStreamVolume:I = 0x3

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x2

.field static final TRANSACTION_adjustVolume:I = 0x1

.field static final TRANSACTION_enableHDMIAudio:I = 0x2a

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xb

.field static final TRANSACTION_getMode:I = 0x12

.field static final TRANSACTION_getRingerMode:I = 0xd

.field static final TRANSACTION_getStreamMaxVolume:I = 0xa

.field static final TRANSACTION_getStreamVolume:I = 0x9

.field static final TRANSACTION_getVibrateSetting:I = 0xf

.field static final TRANSACTION_isBluetoothScoOn:I = 0x1b

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x19

.field static final TRANSACTION_isStreamMute:I = 0x8

.field static final TRANSACTION_listenRingerModeAndVolume:I = 0x2b

.field static final TRANSACTION_loadSoundEffects:I = 0x15

.field static final TRANSACTION_playSoundEffect:I = 0x13

.field static final TRANSACTION_playSoundEffectVolume:I = 0x14

.field static final TRANSACTION_registerMediaButtonIntent:I = 0x1f

.field static final TRANSACTION_registerRemoteControlClient:I = 0x21

.field static final TRANSACTION_registerRemoteControlDisplay:I = 0x23

.field static final TRANSACTION_reloadAudioSettings:I = 0x17

.field static final TRANSACTION_remoteControlDisplayUsesBitmapSize:I = 0x25

.field static final TRANSACTION_requestAudioFocus:I = 0x1c

.field static final TRANSACTION_setAudioPathOutofFMTx:I = 0x29

.field static final TRANSACTION_setAudioPathToFMTx:I = 0x28

.field static final TRANSACTION_setAudioProfileStreamVolume:I = 0x5

.field static final TRANSACTION_setBluetoothScoOn:I = 0x1a

.field static final TRANSACTION_setMode:I = 0x11

.field static final TRANSACTION_setRingerMode:I = 0xc

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x18

.field static final TRANSACTION_setStreamMute:I = 0x7

.field static final TRANSACTION_setStreamSolo:I = 0x6

.field static final TRANSACTION_setStreamVolume:I = 0x4

.field static final TRANSACTION_setVibrateSetting:I = 0xe

.field static final TRANSACTION_shouldVibrate:I = 0x10

.field static final TRANSACTION_startBluetoothSco:I = 0x26

.field static final TRANSACTION_stopBluetoothSco:I = 0x27

.field static final TRANSACTION_unloadSoundEffects:I = 0x16

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x1e

.field static final TRANSACTION_unregisterMediaButtonIntent:I = 0x20

.field static final TRANSACTION_unregisterRemoteControlClient:I = 0x22

.field static final TRANSACTION_unregisterRemoteControlDisplay:I = 0x24


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Landroid/media/IAudioService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 516
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 45
    :sswitch_0
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_2
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 67
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_3
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(III)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_4
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamVolume(III)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_5
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setAudioProfileStreamVolume(III)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 113
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_6
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_0

    move v2, v8

    .line 119
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 120
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :cond_0
    move v2, v0

    .line 117
    goto :goto_1

    .line 126
    .end local v1           #_arg0:I
    :sswitch_7
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 130
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v2, v8

    .line 132
    .restart local v2       #_arg1:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 133
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Landroid/os/IBinder;
    :cond_1
    move v2, v0

    .line 130
    goto :goto_2

    .line 139
    .end local v1           #_arg0:I
    :sswitch_8
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v7

    .line 143
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v7, :cond_2

    move v0, v8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_9
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v7

    .line 153
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 159
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_a
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v7

    .line 163
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 169
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 172
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v7

    .line 173
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 179
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 188
    .end local v1           #_arg0:I
    :sswitch_d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v7

    .line 190
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 196
    .end local v7           #_result:I
    :sswitch_e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v7

    .line 211
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_10
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v7

    .line 221
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v7, :cond_3

    move v0, v8

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 227
    .end local v1           #_arg0:I
    .end local v7           #_result:Z
    :sswitch_11
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 232
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 238
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_12
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v7

    .line 240
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 246
    .end local v7           #_result:I
    :sswitch_13
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 249
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 254
    .end local v1           #_arg0:I
    :sswitch_14
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 259
    .local v2, _arg1:F
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    goto/16 :goto_0

    .line 264
    .end local v1           #_arg0:I
    .end local v2           #_arg1:F
    :sswitch_15
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v7

    .line 266
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v7, :cond_4

    move v0, v8

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    .end local v7           #_result:Z
    :sswitch_16
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    goto/16 :goto_0

    .line 278
    :sswitch_17
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    goto/16 :goto_0

    .line 284
    :sswitch_18
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    move v1, v8

    .line 287
    .local v1, _arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_5
    move v1, v0

    .line 286
    goto :goto_3

    .line 293
    :sswitch_19
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v7

    .line 295
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    if-eqz v7, :cond_6

    move v0, v8

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 301
    .end local v7           #_result:Z
    :sswitch_1a
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    move v1, v8

    .line 304
    .restart local v1       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_7
    move v1, v0

    .line 303
    goto :goto_4

    .line 310
    :sswitch_1b
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v7

    .line 312
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v7, :cond_8

    move v0, v8

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 318
    .end local v7           #_result:Z
    :sswitch_1c
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 326
    .restart local v3       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 328
    .local v4, _arg3:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 331
    invoke-virtual/range {v0 .. v6}, Landroid/media/IAudioService$Stub;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 332
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 338
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v4           #_arg3:Landroid/media/IAudioFocusDispatcher;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_1d
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 342
    .local v1, _arg0:Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v7

    .line 344
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 350
    .end local v1           #_arg0:Landroid/media/IAudioFocusDispatcher;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_1e
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 359
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_1f
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 362
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 368
    .local v1, _arg0:Landroid/app/PendingIntent;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 369
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 374
    .local v2, _arg1:Landroid/content/ComponentName;
    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 365
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :cond_9
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_5

    .line 372
    :cond_a
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_6

    .line 379
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :sswitch_20
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 382
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 388
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 389
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 394
    .restart local v2       #_arg1:Landroid/content/ComponentName;
    :goto_8
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 385
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_7

    .line 392
    :cond_c
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_8

    .line 399
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/content/ComponentName;
    :sswitch_21
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 402
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 408
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v2

    .line 410
    .local v2, _arg1:Landroid/media/IRemoteControlClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 405
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/media/IRemoteControlClient;
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_9

    .line 416
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :sswitch_22
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 419
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 425
    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;

    move-result-object v2

    .line 426
    .restart local v2       #_arg1:Landroid/media/IRemoteControlClient;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V

    goto/16 :goto_0

    .line 422
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    .end local v2           #_arg1:Landroid/media/IRemoteControlClient;
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;
    goto :goto_a

    .line 431
    .end local v1           #_arg0:Landroid/app/PendingIntent;
    :sswitch_23
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 434
    .local v1, _arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_0

    .line 439
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_24
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 442
    .restart local v1       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto/16 :goto_0

    .line 447
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    :sswitch_25
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    .line 451
    .restart local v1       #_arg0:Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 453
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 454
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    goto/16 :goto_0

    .line 459
    .end local v1           #_arg0:Landroid/media/IRemoteControlDisplay;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_26
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 462
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;)V

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 468
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_27
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 471
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 477
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_28
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 480
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/media/IAudioService$Stub;->setAudioPathToFMTx(Landroid/os/IBinder;)Z

    move-result v7

    .line 481
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    if-eqz v7, :cond_f

    move v0, v8

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 487
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v7           #_result:Z
    :sswitch_29
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->setAudioPathOutofFMTx()Z

    move-result v7

    .line 489
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    if-eqz v7, :cond_10

    move v0, v8

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 495
    .end local v7           #_result:Z
    :sswitch_2a
    const-string v9, "android.media.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    move v1, v8

    .line 499
    .local v1, _arg0:Z
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 500
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->enableHDMIAudio(ZLandroid/os/IBinder;)Z

    move-result v7

    .line 501
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v7, :cond_11

    move v0, v8

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v7           #_result:Z
    :cond_12
    move v1, v0

    .line 497
    goto :goto_b

    .line 507
    :sswitch_2b
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/audioprofile/IAudioProfileListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/audioprofile/IAudioProfileListener;

    move-result-object v1

    .line 511
    .local v1, _arg0:Lcom/mediatek/audioprofile/IAudioProfileListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 512
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/media/IAudioService$Stub;->listenRingerModeAndVolume(Lcom/mediatek/audioprofile/IAudioProfileListener;I)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
