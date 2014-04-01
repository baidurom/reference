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

.field static final TRANSACTION_addContactToGroup:I = 0xf

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsSize:I = 0x8

.field static final TRANSACTION_getUSIMGroupById:I = 0xb

.field static final TRANSACTION_getUSIMGrpMaxCount:I = 0x13

.field static final TRANSACTION_getUSIMGrpMaxNameLen:I = 0x12

.field static final TRANSACTION_getUsimGroups:I = 0xa

.field static final TRANSACTION_hasExistGroup:I = 0x11

.field static final TRANSACTION_insertUSIMGroup:I = 0xd

.field static final TRANSACTION_isPhbReady:I = 0x9

.field static final TRANSACTION_removeContactFromGroup:I = 0x10

.field static final TRANSACTION_removeUSIMGroupById:I = 0xc

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x5

.field static final TRANSACTION_updateAdnRecordsInEfByIndexWithError:I = 0x6

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x2

.field static final TRANSACTION_updateAdnRecordsInEfBySearchWithError:I = 0x3

.field static final TRANSACTION_updateUSIMGroup:I = 0xe

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
    .locals 16
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

    .line 315
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 55
    :sswitch_0
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    :sswitch_1
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v14

    .line 64
    .local v14, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 66
    const/4 v1, 0x1

    goto :goto_0

    .line 70
    .end local v2           #_arg0:I
    .end local v14           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :sswitch_2
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg5:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 83
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 84
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v13, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 90
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_3
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 102
    .restart local v6       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #_arg5:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 103
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 104
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 110
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_4
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 118
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 120
    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 122
    .restart local v6       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, _arg5:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 132
    .local v11, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .local v12, _arg10:[Ljava/lang/String;
    move-object/from16 v1, p0

    .line 133
    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimPBRecordsInEfBySearchWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 134
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 140
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:[Ljava/lang/String;
    .end local v8           #_arg6:Ljava/lang/String;
    .end local v9           #_arg7:Ljava/lang/String;
    .end local v10           #_arg8:Ljava/lang/String;
    .end local v11           #_arg9:Ljava/lang/String;
    .end local v12           #_arg10:[Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_5
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 144
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 150
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg4:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 151
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v13

    .line 152
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v13, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 153
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 158
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_6
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 162
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 166
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 168
    .restart local v5       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg4:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 169
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v13

    .line 170
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 176
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_7
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 184
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 188
    .restart local v6       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 190
    .restart local v7       #_arg5:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg6:I
    move-object/from16 v1, p0

    .line 191
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUsimPBRecordsInEfByIndexWithError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v13

    .line 192
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 198
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:[Ljava/lang/String;
    .end local v8           #_arg6:I
    .end local v13           #_result:I
    :sswitch_8
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I

    move-result-object v13

    .line 202
    .local v13, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 204
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 208
    .end local v2           #_arg0:I
    .end local v13           #_result:[I
    :sswitch_9
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isPhbReady()Z

    move-result v13

    .line 210
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v13, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 211
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 216
    .end local v13           #_result:Z
    :sswitch_a
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimGroups()Ljava/util/List;

    move-result-object v15

    .line 218
    .local v15, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/UsimGroup;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 220
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 224
    .end local v15           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/UsimGroup;>;"
    :sswitch_b
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUSIMGroupById(I)Ljava/lang/String;

    move-result-object v13

    .line 228
    .local v13, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 234
    .end local v2           #_arg0:I
    .end local v13           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->removeUSIMGroupById(I)Z

    move-result v13

    .line 238
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v13, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 239
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 244
    .end local v2           #_arg0:I
    .end local v13           #_result:Z
    :sswitch_d
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->insertUSIMGroup(Ljava/lang/String;)I

    move-result v13

    .line 248
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 254
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_e
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .restart local v3       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateUSIMGroup(ILjava/lang/String;)I

    move-result v13

    .line 260
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 266
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_f
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 271
    .local v3, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->addContactToGroup(II)Z

    move-result v13

    .line 272
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 273
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 278
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v13           #_result:Z
    :sswitch_10
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 283
    .restart local v3       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->removeContactFromGroup(II)Z

    move-result v13

    .line 284
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v13, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 285
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 290
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v13           #_result:Z
    :sswitch_11
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->hasExistGroup(Ljava/lang/String;)I

    move-result v13

    .line 294
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 300
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:I
    :sswitch_12
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUSIMGrpMaxNameLen()I

    move-result v13

    .line 302
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 308
    .end local v13           #_result:I
    :sswitch_13
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUSIMGrpMaxCount()I

    move-result v13

    .line 310
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 51
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
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
