.class public abstract Lcom/mediatek/epo/IMtkEpoClientManager$Stub;
.super Landroid/os/Binder;
.source "IMtkEpoClientManager.java"

# interfaces
.implements Lcom/mediatek/epo/IMtkEpoClientManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epo/IMtkEpoClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/epo/IMtkEpoClientManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.epo.IMtkEpoClientManager"

.field static final TRANSACTION_addStatusListener:I = 0x7

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_enableAutoDownload:I = 0x5

.field static final TRANSACTION_extraCommand:I = 0x11

.field static final TRANSACTION_getAutoDownloadStatus:I = 0x6

.field static final TRANSACTION_getEpoFileInfo:I = 0xb

.field static final TRANSACTION_getProgress:I = 0x4

.field static final TRANSACTION_getStatus:I = 0x3

.field static final TRANSACTION_getUpdatePeriod:I = 0xd

.field static final TRANSACTION_removeStatusListener:I = 0x8

.field static final TRANSACTION_setProfile:I = 0x10

.field static final TRANSACTION_setRetryTimes:I = 0xf

.field static final TRANSACTION_setTimeout:I = 0xe

.field static final TRANSACTION_setUpdatePeriod:I = 0xc

.field static final TRANSACTION_startDownload:I = 0x9

.field static final TRANSACTION_stopDownload:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/epo/IMtkEpoClientManager;
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
    const-string v1, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/epo/IMtkEpoClientManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/mediatek/epo/IMtkEpoClientManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/mediatek/epo/IMtkEpoClientManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->enable()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->disable()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v9, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->getStatus()Z

    move-result v5

    .line 63
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v5, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v5           #_result:Z
    :sswitch_4
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->getProgress()I

    move-result v5

    .line 71
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v5           #_result:I
    :sswitch_5
    const-string v9, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    move v0, v8

    .line 80
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->enableAutoDownload(Z)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v7

    .line 79
    goto :goto_1

    .line 86
    :sswitch_6
    const-string v9, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->getAutoDownloadStatus()Z

    move-result v5

    .line 88
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v5, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v5           #_result:Z
    :sswitch_7
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/epo/IMtkEpoStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/epo/IMtkEpoStatusListener;

    move-result-object v0

    .line 97
    .local v0, _arg0:Lcom/mediatek/epo/IMtkEpoStatusListener;
    invoke-virtual {p0, v0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->addStatusListener(Lcom/mediatek/epo/IMtkEpoStatusListener;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:Lcom/mediatek/epo/IMtkEpoStatusListener;
    :sswitch_8
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/epo/IMtkEpoStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/epo/IMtkEpoStatusListener;

    move-result-object v0

    .line 106
    .restart local v0       #_arg0:Lcom/mediatek/epo/IMtkEpoStatusListener;
    invoke-virtual {p0, v0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->removeStatusListener(Lcom/mediatek/epo/IMtkEpoStatusListener;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:Lcom/mediatek/epo/IMtkEpoStatusListener;
    :sswitch_9
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->startDownload()I

    move-result v5

    .line 114
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v5           #_result:I
    :sswitch_a
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->stopDownload()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    :sswitch_b
    const-string v9, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->getEpoFileInfo()Lcom/mediatek/epo/MtkEpoFileInfo;

    move-result-object v5

    .line 129
    .local v5, _result:Lcom/mediatek/epo/MtkEpoFileInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v5, :cond_3

    .line 131
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v5, p3, v8}, Lcom/mediatek/epo/MtkEpoFileInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 135
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v5           #_result:Lcom/mediatek/epo/MtkEpoFileInfo;
    :sswitch_c
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 144
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->setUpdatePeriod(J)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 150
    .end local v0           #_arg0:J
    :sswitch_d
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->getUpdatePeriod()J

    move-result-wide v5

    .line 152
    .local v5, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 158
    .end local v5           #_result:J
    :sswitch_e
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->setTimeout(I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 167
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 170
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->setRetryTimes(I)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 176
    .end local v0           #_arg0:I
    :sswitch_10
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->setProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 191
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_11
    const-string v7, "com.mediatek.epo.IMtkEpoClientManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 196
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 201
    .local v2, _arg1:Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/epo/IMtkEpoClientManager$Stub;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v5

    .line 202
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 199
    .end local v2           #_arg1:Landroid/os/Bundle;
    .end local v5           #_result:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Bundle;
    goto :goto_2

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
