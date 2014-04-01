.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getMediaProcessStorageUser:I = 0x23

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shareCDRom:I = 0x22

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 838
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 839
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 827
    if-nez p0, :cond_0

    .line 828
    const/4 v0, 0x0

    .line 834
    :goto_0
    return-object v0

    .line 830
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 831
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 832
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_0

    .line 834
    :cond_1
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 843
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 30
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
    .line 849
    sparse-switch p1, :sswitch_data_0

    .line 1169
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 851
    :sswitch_0
    const-string v3, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 852
    const/4 v3, 0x1

    goto :goto_0

    .line 855
    :sswitch_1
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v14

    .line 858
    .local v14, listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    const/4 v3, 0x1

    goto :goto_0

    .line 863
    .end local v14           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v14

    .line 866
    .restart local v14       #listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 867
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    const/4 v3, 0x1

    goto :goto_0

    .line 871
    .end local v14           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v25

    .line 873
    .local v25, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    if-eqz v25, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/4 v3, 0x1

    goto :goto_0

    .line 874
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 878
    .end local v25           #result:Z
    :sswitch_4
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v10, 0x1

    .line 881
    .local v10, enable:Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    const/4 v3, 0x1

    goto :goto_0

    .line 880
    .end local v10           #enable:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 886
    :sswitch_5
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v25

    .line 888
    .restart local v25       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    if-eqz v25, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 889
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 893
    .end local v25           #result:Z
    :sswitch_6
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 896
    .local v15, mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v26

    .line 897
    .local v26, resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 902
    .end local v15           #mountPoint:Ljava/lang/String;
    .end local v26           #resultCode:I
    :sswitch_7
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 905
    .restart local v15       #mountPoint:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v12, 0x1

    .line 906
    .local v12, force:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v24, 0x1

    .line 907
    .local v24, removeEncrypt:Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v15, v12, v1}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 905
    .end local v12           #force:Z
    .end local v24           #removeEncrypt:Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_4

    .line 906
    .restart local v12       #force:Z
    :cond_4
    const/16 v24, 0x0

    goto :goto_5

    .line 912
    .end local v12           #force:Z
    .end local v15           #mountPoint:Ljava/lang/String;
    :sswitch_8
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 915
    .restart local v15       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v25

    .line 916
    .local v25, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 921
    .end local v15           #mountPoint:Ljava/lang/String;
    .end local v25           #result:I
    :sswitch_9
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 924
    .local v22, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v23

    .line 925
    .local v23, pids:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 927
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 931
    .end local v22           #path:Ljava/lang/String;
    .end local v23           #pids:[I
    :sswitch_a
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 934
    .restart local v22       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMediaProcessStorageUser(Ljava/lang/String;)I

    move-result v23

    .line 935
    .local v23, pids:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 940
    .end local v22           #path:Ljava/lang/String;
    .end local v23           #pids:I
    :sswitch_b
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 942
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 943
    .restart local v15       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 944
    .local v28, state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 946
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 949
    .end local v15           #mountPoint:Ljava/lang/String;
    .end local v28           #state:Ljava/lang/String;
    :sswitch_c
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 953
    .local v4, id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 955
    .local v5, sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 957
    .local v6, fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 959
    .local v7, key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, ownerUid:I
    move-object/from16 v3, p0

    .line 960
    invoke-virtual/range {v3 .. v8}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v26

    .line 961
    .restart local v26       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 966
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #sizeMb:I
    .end local v6           #fstype:Ljava/lang/String;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #ownerUid:I
    .end local v26           #resultCode:I
    :sswitch_d
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 969
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v26

    .line 970
    .restart local v26       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 975
    .end local v4           #id:Ljava/lang/String;
    .end local v26           #resultCode:I
    :sswitch_e
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 979
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v12, 0x1

    .line 980
    .restart local v12       #force:Z
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v26

    .line 981
    .restart local v26       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 979
    .end local v12           #force:Z
    .end local v26           #resultCode:I
    :cond_5
    const/4 v12, 0x0

    goto :goto_6

    .line 986
    .end local v4           #id:Ljava/lang/String;
    :sswitch_f
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 990
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 992
    .restart local v7       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 993
    .restart local v8       #ownerUid:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    .line 994
    .restart local v26       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 999
    .end local v4           #id:Ljava/lang/String;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #ownerUid:I
    .end local v26           #resultCode:I
    :sswitch_10
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v12, 0x1

    .line 1004
    .restart local v12       #force:Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v26

    .line 1005
    .restart local v26       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1003
    .end local v12           #force:Z
    .end local v26           #resultCode:I
    :cond_6
    const/4 v12, 0x0

    goto :goto_7

    .line 1010
    .end local v4           #id:Ljava/lang/String;
    :sswitch_11
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1013
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v29

    .line 1014
    .local v29, status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    if-eqz v29, :cond_7

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1015
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 1019
    .end local v4           #id:Ljava/lang/String;
    .end local v29           #status:Z
    :sswitch_12
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1023
    .local v20, oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1024
    .local v17, newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 1025
    .restart local v26       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1030
    .end local v17           #newId:Ljava/lang/String;
    .end local v20           #oldId:Ljava/lang/String;
    .end local v26           #resultCode:I
    :sswitch_13
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1033
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1034
    .restart local v22       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1036
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1039
    .end local v4           #id:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    :sswitch_14
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v13

    .line 1041
    .local v13, ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1042
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1043
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1046
    .end local v13           #ids:[Ljava/lang/String;
    :sswitch_15
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v19

    .line 1050
    .local v19, observer:Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1055
    .end local v19           #observer:Landroid/os/storage/IMountShutdownObserver;
    :sswitch_16
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1061
    :sswitch_17
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1065
    .local v11, filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1067
    .restart local v7       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v19

    .line 1069
    .local v19, observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1070
    .local v18, nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v11, v7, v1, v2}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1075
    .end local v7           #key:Ljava/lang/String;
    .end local v11           #filename:Ljava/lang/String;
    .end local v18           #nonce:I
    .end local v19           #observer:Landroid/os/storage/IObbActionListener;
    :sswitch_18
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1079
    .restart local v11       #filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v12, 0x1

    .line 1081
    .restart local v12       #force:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v19

    .line 1083
    .restart local v19       #observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1084
    .restart local v18       #nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v11, v12, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1085
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1079
    .end local v12           #force:Z
    .end local v18           #nonce:I
    .end local v19           #observer:Landroid/os/storage/IObbActionListener;
    :cond_8
    const/4 v12, 0x0

    goto :goto_9

    .line 1089
    .end local v11           #filename:Ljava/lang/String;
    :sswitch_19
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1092
    .restart local v11       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v29

    .line 1093
    .restart local v29       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    if-eqz v29, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1094
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 1098
    .end local v11           #filename:Ljava/lang/String;
    .end local v29           #status:Z
    :sswitch_1a
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1101
    .restart local v11       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1102
    .local v16, mountedPath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1104
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1107
    .end local v11           #filename:Ljava/lang/String;
    .end local v16           #mountedPath:Ljava/lang/String;
    :sswitch_1b
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v9

    .line 1109
    .local v9, emulated:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    if-eqz v9, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1110
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 1114
    .end local v9           #emulated:Z
    :sswitch_1c
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1116
    .local v21, password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v25

    .line 1117
    .restart local v25       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1119
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1122
    .end local v21           #password:Ljava/lang/String;
    .end local v25           #result:I
    :sswitch_1d
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1124
    .restart local v21       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->encryptStorage(Ljava/lang/String;)I

    move-result v25

    .line 1125
    .restart local v25       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1130
    .end local v21           #password:Ljava/lang/String;
    .end local v25           #result:I
    :sswitch_1e
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1132
    .restart local v21       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(Ljava/lang/String;)I

    move-result v25

    .line 1133
    .restart local v25       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1135
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1138
    .end local v21           #password:Ljava/lang/String;
    .end local v25           #result:I
    :sswitch_1f
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v25

    .line 1140
    .local v25, result:[Landroid/os/Parcelable;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1141
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 1142
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1145
    .end local v25           #result:[Landroid/os/Parcelable;
    :sswitch_20
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1148
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1149
    .restart local v22       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1151
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1154
    .end local v4           #id:Ljava/lang/String;
    .end local v22           #path:Ljava/lang/String;
    :sswitch_21
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v25

    .line 1156
    .local v25, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v25           #result:I
    :sswitch_22
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v27, 0x1

    .line 1164
    .local v27, share:Z
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shareCDRom(Z)V

    .line 1165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1163
    .end local v27           #share:Z
    :cond_b
    const/16 v27, 0x0

    goto :goto_c

    .line 849
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
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_11
        0x11 -> :sswitch_12
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x18 -> :sswitch_19
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_1b
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_1d
        0x1d -> :sswitch_1e
        0x1e -> :sswitch_1f
        0x1f -> :sswitch_20
        0x20 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
