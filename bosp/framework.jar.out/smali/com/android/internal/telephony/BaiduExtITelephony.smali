.class public interface abstract Lcom/android/internal/telephony/BaiduExtITelephony;
.super Ljava/lang/Object;
.source "BaiduExtITelephony.java"


# static fields
.field public static final EXT_FIRST_CALL_TRASACTION:I = 0x2711

.field public static final GET_ICC_PINPUK_RETRYTIMES:I = 0x2714

.field public static final GET_SMSC:I = 0x2712

.field public static final GET_SMSC_DSDS:I = 0x2715

.field public static final SET_SMSC:I = 0x2713

.field public static final SET_SMSC_DSDS:I = 0x2716


# virtual methods
.method public abstract getIccPinPukRetryTimes(Landroid/os/IBinder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getScAddress(Landroid/os/IBinder;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getScAddress(Landroid/os/IBinder;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setScAddress(Landroid/os/IBinder;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setScAddress(Landroid/os/IBinder;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
