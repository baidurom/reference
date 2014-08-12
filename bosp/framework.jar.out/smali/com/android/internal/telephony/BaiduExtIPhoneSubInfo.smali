.class public interface abstract Lcom/android/internal/telephony/BaiduExtIPhoneSubInfo;
.super Ljava/lang/Object;
.source "BaiduExtIPhoneSubInfo.java"


# static fields
.field public static final EXT_FIRST_CALL_TRASACTION:I = 0x2711

.field public static final GET_ICC_CARD_TYPE:I = 0x2712


# virtual methods
.method public abstract getIccCardType(Landroid/os/IBinder;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
