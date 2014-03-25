.class public abstract Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIccPhoneBook"

.field static final TRANSACTION_addContactToGroup:I = 0x11

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsSize:I = 0xa

.field static final TRANSACTION_getAnrCount:I = 0x1b

.field static final TRANSACTION_getEmailCount:I = 0x1c

.field static final TRANSACTION_getPhonebookMemStorageExt:I = 0x24

.field static final TRANSACTION_getSneRecordLen:I = 0x22

.field static final TRANSACTION_getUsimAasById:I = 0x19

.field static final TRANSACTION_getUsimAasList:I = 0x18

.field static final TRANSACTION_getUsimAasMaxCount:I = 0x1d

.field static final TRANSACTION_getUsimAasMaxNameLen:I = 0x1e

.field static final TRANSACTION_getUsimGroupById:I = 0xd

.field static final TRANSACTION_getUsimGroups:I = 0xc

.field static final TRANSACTION_getUsimGrpMaxCount:I = 0x17

.field static final TRANSACTION_getUsimGrpMaxNameLen:I = 0x16

.field static final TRANSACTION_hasExistGroup:I = 0x15

.field static final TRANSACTION_hasSne:I = 0x21

.field static final TRANSACTION_insertUsimAas:I = 0x1a

.field static final TRANSACTION_insertUsimGroup:I = 0xf

.field static final TRANSACTION_isAdnAccessible:I = 0x23

.field static final TRANSACTION_isPhbReady:I = 0xb

.field static final TRANSACTION_moveContactFromGroupsToGroups:I = 0x14

.field static final TRANSACTION_removeContactFromGroup:I = 0x12

.field static final TRANSACTION_removeUsimAasById:I = 0x20

.field static final TRANSACTION_removeUsimGroupById:I = 0xe

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x5

.field static final TRANSACTION_updateAdnRecordsInEfByIndexWithError:I = 0x6

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x2

.field static final TRANSACTION_updateAdnRecordsInEfBySearchWithError:I = 0x3

.field static final TRANSACTION_updateContactToGroups:I = 0x13

.field static final TRANSACTION_updateUsimAas:I = 0x1f

.field static final TRANSACTION_updateUsimGroup:I = 0x10

.field static final TRANSACTION_updateUsimPBRecordsByIndexWithError:I = 0x8

.field static final TRANSACTION_updateUsimPBRecordsBySearchWithError:I = 0x9

.field static final TRANSACTION_updateUsimPBRecordsInEfByIndexWithError:I = 0x7

.field static final TRANSACTION_updateUsimPBRecordsInEfBySearchWithError:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 51
    sparse-switch p1, :sswitch_data_0

    .line 502
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 55
    :sswitch_0
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v2, 0x1

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v15

    .line 64
    .local v15, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    .line 70
    .end local v3           #_arg0:I
    .end local v15           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :sswitch_2
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg5:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 83
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 84
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v14, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 90
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v8           #_arg5:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_3
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 98
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 100
    .restart local v6       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 102
    .restart local v7       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #_arg5:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 103
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 104
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 110
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v8           #_arg5:Ljava/lang/String;
    .end local v14           #_result:I
    :sswitch_4
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 114
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 116
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 118
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 120
    .restart local v6       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 122
    .restart local v7       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 124
    .local v8, _arg5:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 128
    .local v10, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 132
    .local v12, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .local v13, _arg10:[Ljava/lang/String;
    move-object/from16 v2, p0

    .line 133
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 134
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 140
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v8           #_arg5:[Ljava/lang/String;
    .end local v9           #_arg6:Ljava/lang/String;
    .end local v10           #_arg7:Ljava/lang/String;
    .end local v11           #_arg8:Ljava/lang/String;
    .end local v12           #_arg9:Ljava/lang/String;
    .end local v13           #_arg10:[Ljava/lang/String;
    .end local v14           #_result:I
    :sswitch_5
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 148
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 150
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg4:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 151
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v14

    .line 152
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v14, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 153
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 158
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:I
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_6
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 166
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 168
    .restart local v6       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg4:Ljava/lang/String;
    move-object/from16 v2, p0

    .line 169
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v14

    .line 170
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:I
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v14           #_result:I
    :sswitch_7
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 180
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 184
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 188
    .restart local v7       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 190
    .restart local v8       #_arg5:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg6:I
    move-object/from16 v2, p0

    .line 191
    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v14

    .line 192
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 198
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:Ljava/lang/String;
    .end local v8           #_arg5:[Ljava/lang/String;
    .end local v9           #_arg6:I
    .end local v14           #_result:I
    :sswitch_8
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    sget-object v2, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    .line 209
    .local v4, _arg1:Lcom/android/internal/telephony/AdnRecord;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 210
    .local v5, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimPBRecordsByIndexWithError(ILcom/android/internal/telephony/AdnRecord;I)I

    move-result v14

    .line 211
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 206
    .end local v4           #_arg1:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #_arg2:I
    .end local v14           #_result:I
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_3

    .line 217
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Lcom/android/internal/telephony/AdnRecord;
    :sswitch_9
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 221
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 222
    sget-object v2, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    .line 228
    .restart local v4       #_arg1:Lcom/android/internal/telephony/AdnRecord;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 229
    sget-object v2, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    .line 234
    .local v5, _arg2:Lcom/android/internal/telephony/AdnRecord;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimPBRecordsBySearchWithError(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)I

    move-result v14

    .line 235
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 225
    .end local v4           #_arg1:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #_arg2:Lcom/android/internal/telephony/AdnRecord;
    .end local v14           #_result:I
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_4

    .line 232
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #_arg2:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_5

    .line 241
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Lcom/android/internal/telephony/AdnRecord;
    .end local v5           #_arg2:Lcom/android/internal/telephony/AdnRecord;
    :sswitch_a
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 244
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I

    move-result-object v14

    .line 245
    .local v14, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 247
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 251
    .end local v3           #_arg0:I
    .end local v14           #_result:[I
    :sswitch_b
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isPhbReady()Z

    move-result v14

    .line 253
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v14, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 254
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 259
    .end local v14           #_result:Z
    :sswitch_c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimGroups()Ljava/util/List;

    move-result-object v17

    .line 261
    .local v17, _result:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/UsimGroup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 263
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 267
    .end local v17           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/UsimGroup;>;"
    :sswitch_d
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 270
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimGroupById(I)Ljava/lang/String;

    move-result-object v14

    .line 271
    .local v14, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 277
    .end local v3           #_arg0:I
    .end local v14           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 280
    .restart local v3       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->removeUsimGroupById(I)Z

    move-result v14

    .line 281
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v14, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 282
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 287
    .end local v3           #_arg0:I
    .end local v14           #_result:Z
    :sswitch_f
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->insertUsimGroup(Ljava/lang/String;)I

    move-result v14

    .line 291
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 297
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v14           #_result:I
    :sswitch_10
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 301
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimGroup(ILjava/lang/String;)I

    move-result v14

    .line 303
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 309
    .end local v3           #_arg0:I
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v14           #_result:I
    :sswitch_11
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 313
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 314
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->addContactToGroup(II)Z

    move-result v14

    .line 315
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v14, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 316
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 321
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_12
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 325
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 326
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->removeContactFromGroup(II)Z

    move-result v14

    .line 327
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v14, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 328
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 333
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_13
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 337
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 338
    .local v4, _arg1:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateContactToGroups(I[I)Z

    move-result v14

    .line 339
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v14, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 340
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 345
    .end local v3           #_arg0:I
    .end local v4           #_arg1:[I
    .end local v14           #_result:Z
    :sswitch_14
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 349
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 351
    .restart local v4       #_arg1:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 352
    .local v5, _arg2:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->moveContactFromGroupsToGroups(I[I[I)Z

    move-result v14

    .line 353
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v14, :cond_a

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 354
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 359
    .end local v3           #_arg0:I
    .end local v4           #_arg1:[I
    .end local v5           #_arg2:[I
    .end local v14           #_result:Z
    :sswitch_15
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->hasExistGroup(Ljava/lang/String;)I

    move-result v14

    .line 363
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 369
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v14           #_result:I
    :sswitch_16
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimGrpMaxNameLen()I

    move-result v14

    .line 371
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 377
    .end local v14           #_result:I
    :sswitch_17
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimGrpMaxCount()I

    move-result v14

    .line 379
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 385
    .end local v14           #_result:I
    :sswitch_18
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimAasList()Ljava/util/List;

    move-result-object v16

    .line 387
    .local v16, _result:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 389
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 393
    .end local v16           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/AlphaTag;>;"
    :sswitch_19
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 396
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimAasById(I)Ljava/lang/String;

    move-result-object v14

    .line 397
    .local v14, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 403
    .end local v3           #_arg0:I
    .end local v14           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->insertUsimAas(Ljava/lang/String;)I

    move-result v14

    .line 407
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 413
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v14           #_result:I
    :sswitch_1b
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAnrCount()I

    move-result v14

    .line 415
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 421
    .end local v14           #_result:I
    :sswitch_1c
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getEmailCount()I

    move-result v14

    .line 423
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 429
    .end local v14           #_result:I
    :sswitch_1d
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimAasMaxCount()I

    move-result v14

    .line 431
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 437
    .end local v14           #_result:I
    :sswitch_1e
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimAasMaxNameLen()I

    move-result v14

    .line 439
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 445
    .end local v14           #_result:I
    :sswitch_1f
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 449
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 451
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 452
    .local v5, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimAas(IILjava/lang/String;)Z

    move-result v14

    .line 453
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    if-eqz v14, :cond_b

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 454
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 459
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v14           #_result:Z
    :sswitch_20
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 463
    .restart local v3       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 464
    .restart local v4       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->removeUsimAasById(II)Z

    move-result v14

    .line 465
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    if-eqz v14, :cond_c

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 466
    :cond_c
    const/4 v2, 0x0

    goto :goto_d

    .line 471
    .end local v3           #_arg0:I
    .end local v4           #_arg1:I
    .end local v14           #_result:Z
    :sswitch_21
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->hasSne()Z

    move-result v14

    .line 473
    .restart local v14       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v14, :cond_d

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 474
    :cond_d
    const/4 v2, 0x0

    goto :goto_e

    .line 479
    .end local v14           #_result:Z
    :sswitch_22
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSneRecordLen()I

    move-result v14

    .line 481
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 487
    .end local v14           #_result:I
    :sswitch_23
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isAdnAccessible()Z

    move-result v14

    .line 489
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    if-eqz v14, :cond_e

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 490
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 495
    .end local v14           #_result:Z
    :sswitch_24
    const-string v2, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getPhonebookMemStorageExt()[Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;

    move-result-object v14

    .line 497
    .local v14, _result:[Lcom/mediatek/common/telephony/gsm/UsimPBMemInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 499
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 51
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
