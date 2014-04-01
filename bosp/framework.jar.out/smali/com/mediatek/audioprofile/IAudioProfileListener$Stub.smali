.class public abstract Lcom/mediatek/audioprofile/IAudioProfileListener$Stub;
.super Landroid/os/Binder;
.source "IAudioProfileListener.java"

# interfaces
.implements Lcom/mediatek/audioprofile/IAudioProfileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/IAudioProfileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/IAudioProfileListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.audioprofile.IAudioProfileListener"

.field static final TRANSACTION_onAudioProfileChanged:I = 0x1

.field static final TRANSACTION_onRingerModeChanged:I = 0x2

.field static final TRANSACTION_onRingerVolumeChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.audioprofile.IAudioProfileListener"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/audioprofile/IAudioProfileListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/audioprofile/IAudioProfileListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.mediatek.audioprofile.IAudioProfileListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/audioprofile/IAudioProfileListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/audioprofile/IAudioProfileListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/audioprofile/IAudioProfileListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/IAudioProfileListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v4, "com.mediatek.audioprofile.IAudioProfileListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.mediatek.audioprofile.IAudioProfileListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/IAudioProfileListener$Stub;->onAudioProfileChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v4, "com.mediatek.audioprofile.IAudioProfileListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/IAudioProfileListener$Stub;->onRingerModeChanged(I)V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v4, "com.mediatek.audioprofile.IAudioProfileListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/audioprofile/IAudioProfileListener$Stub;->onRingerVolumeChanged(IILjava/lang/String;)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
