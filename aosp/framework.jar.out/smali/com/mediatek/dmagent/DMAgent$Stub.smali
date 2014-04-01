.class public abstract Lcom/mediatek/dmagent/DMAgent$Stub;
.super Landroid/os/Binder;
.source "DMAgent.java"

# interfaces
.implements Lcom/mediatek/dmagent/DMAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/dmagent/DMAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/dmagent/DMAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "DMAgent"

.field static final TRANSACTION_clearLockFlag:I = 0x5

.field static final TRANSACTION_clearRebootFlag:I = 0x6b

.field static final TRANSACTION_getLockType:I = 0x66

.field static final TRANSACTION_getOperatorID:I = 0x67

.field static final TRANSACTION_getOperatorName:I = 0x68

.field static final TRANSACTION_getUpgradeStatus:I = 0x6d

.field static final TRANSACTION_isBootRecoveryFlag:I = 0x6c

.field static final TRANSACTION_isHangMoCallLocking:I = 0x69

.field static final TRANSACTION_isHangMtCallLocking:I = 0x6a

.field static final TRANSACTION_isLockFlagSet:I = 0x3

.field static final TRANSACTION_readDMTree:I = 0x1

.field static final TRANSACTION_readIMSI:I = 0x6

.field static final TRANSACTION_readOperatorName:I = 0x8

.field static final TRANSACTION_restartAndroid:I = 0x6e

.field static final TRANSACTION_setLockFlag:I = 0x4

.field static final TRANSACTION_setRebootFlag:I = 0x65

.field static final TRANSACTION_writeDMTree:I = 0x2

.field static final TRANSACTION_writeIMSI:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "DMAgent"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/dmagent/DMAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/dmagent/DMAgent;
    .locals 2
    .parameter "obj"

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const-string v1, "DMAgent"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/dmagent/DMAgent;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Lcom/mediatek/dmagent/DMAgent;

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/mediatek/dmagent/DMAgent$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/dmagent/DMAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 71
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
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
    .line 75
    const/4 v0, 0x1

    return v0
.end method
