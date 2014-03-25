.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x6

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_HIGHEST:I = 0x5

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcn0Qdbm:I

.field private mGsmRscpQdbm:I

.field private mGsmRssiQdbm:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mSimId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string/jumbo v3, "poor"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "moderate"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "good"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "great"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "highest"

    aput-object v3, v1, v2

    sput-object v1, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 116
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    sput-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    new-instance v1, Landroid/telephony/SignalStrength$1;

    invoke-direct {v1}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 117
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 118
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 149
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 150
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 151
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 152
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 153
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 154
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 155
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 156
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 157
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 158
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 159
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 161
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "simId"

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x0

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    iput p1, p0, Landroid/telephony/SignalStrength;->mSimId:I

    .line 1108
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1109
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1110
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1111
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1112
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1113
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1114
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1116
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1117
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1118
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1119
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1120
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1122
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1123
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1124
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1125
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZIII)V
    .locals 1
    .parameter "simId"
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"
    .parameter "gsmRssiQdbm"
    .parameter "gsmRscpQdbm"
    .parameter "gsmEcn0Qdbm"

    .prologue
    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1137
    iput p1, p0, Landroid/telephony/SignalStrength;->mSimId:I

    .line 1138
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1139
    iput p3, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1140
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1141
    iput p5, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1142
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1143
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1144
    iput p8, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1145
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1146
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1147
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1148
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1149
    iput p13, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1150
    iput-boolean p14, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1152
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1153
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1154
    move/from16 v0, p17

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1155
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsmFlag"

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 200
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZIII)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsmFlag"
    .parameter "gsmRssiQdbm"
    .parameter "gsmRscpQdbm"
    .parameter "gsmEcn0Qdbm"

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 218
    iput p14, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 219
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 220
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 221
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsmFlag"

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 368
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .parameter "gsmFlag"

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 173
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 174
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 175
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 176
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 177
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 178
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 179
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 180
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 181
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 182
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 183
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 184
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 185
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1225
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1095
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 137
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 138
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 139
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1041
    const-string/jumbo v0, "simId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    .line 1043
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1044
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1045
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1046
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1047
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1048
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1049
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1050
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1051
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1052
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1053
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1054
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1055
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1057
    const-string v0, "RssiQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1058
    const-string v0, "RscpQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1059
    const-string v0, "Ecn0Qdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1060
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 317
    iget v0, p1, Landroid/telephony/SignalStrength;->mSimId:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    .line 319
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 320
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 321
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 322
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 323
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 324
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 325
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 326
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 327
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 328
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 329
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 330
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 331
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 332
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 333
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 334
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 335
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 981
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 990
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 982
    :catch_0
    move-exception v1

    .line 983
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 990
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1070
    const-string/jumbo v0, "simId"

    iget v1, p0, Landroid/telephony/SignalStrength;->mSimId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1072
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1073
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1075
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1076
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1077
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1080
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1082
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1083
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1084
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1086
    const-string v0, "RssiQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1087
    const-string v0, "RscpQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1088
    const-string v0, "Ecn0Qdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1089
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 580
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 581
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 582
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 601
    .local v0, asuLevel:I
    :goto_0
    return v0

    .line 584
    .end local v0           #asuLevel:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 587
    .end local v0           #asuLevel:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 588
    .local v1, cdmaAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 589
    .local v2, evdoAsuLevel:I
    if-nez v2, :cond_2

    .line 591
    move v0, v1

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 592
    .end local v0           #asuLevel:I
    :cond_2
    if-nez v1, :cond_3

    .line 594
    move v0, v2

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 597
    .end local v0           #asuLevel:I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0       #asuLevel:I
    :goto_1
    goto :goto_0

    .end local v0           #asuLevel:I
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 767
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 768
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 772
    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 780
    .local v0, cdmaAsuLevel:I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 787
    .local v3, ecioAsuLevel:I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 789
    .local v4, level:I
    :goto_2
    return v4

    .line 773
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 774
    .end local v0           #cdmaAsuLevel:I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 775
    .end local v0           #cdmaAsuLevel:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 776
    .end local v0           #cdmaAsuLevel:I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 777
    .end local v0           #cdmaAsuLevel:I
    :cond_4
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 781
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 782
    .end local v3           #ecioAsuLevel:I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 783
    .end local v3           #ecioAsuLevel:I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 784
    .end local v3           #ecioAsuLevel:I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 785
    .end local v3           #ecioAsuLevel:I
    :cond_9
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 787
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    .prologue
    .line 738
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 739
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 743
    .local v1, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 750
    .local v3, levelDbm:I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 756
    .local v4, levelEcio:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 758
    .local v2, level:I
    :goto_2
    return v2

    .line 744
    .end local v2           #level:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 745
    .end local v3           #levelDbm:I
    :cond_1
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 746
    .end local v3           #levelDbm:I
    :cond_2
    const/16 v5, -0x64

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 747
    .end local v3           #levelDbm:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 751
    :cond_4
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 752
    .end local v4           #levelEcio:I
    :cond_5
    const/16 v5, -0x82

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 753
    .end local v4           #levelEcio:I
    :cond_6
    const/16 v5, -0x96

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 754
    .end local v4           #levelEcio:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #levelEcio:I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 756
    goto :goto_2
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 612
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 614
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 626
    :goto_0
    return v1

    .line 616
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .local v1, dBm:I
    goto :goto_0

    .line 619
    .end local v1           #dBm:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 620
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 622
    .local v2, evdoDbm:I
    if-ne v2, v4, :cond_3

    .end local v0           #cdmaDbm:I
    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local v0       #cdmaDbm:I
    :cond_3
    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v0, v2, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 826
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 827
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 831
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 838
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 845
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 847
    .local v2, level:I
    :goto_2
    return v2

    .line 832
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 833
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 834
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 835
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 836
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 839
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 840
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 841
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 842
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 843
    .end local v4           #levelEvdoSnr:I
    :cond_9
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 845
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    .prologue
    .line 798
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 799
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 803
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .line 809
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x4

    .line 815
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 817
    .local v2, level:I
    :goto_2
    return v2

    .line 804
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 805
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 806
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x69

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 807
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 810
    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 811
    .end local v4           #levelEvdoSnr:I
    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 812
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 813
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 815
    goto :goto_2
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 729
    .local v0, level:I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 637
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 638
    .local v3, gsmSignalStrength:I
    const/16 v5, 0x63

    if-ne v3, v5, :cond_0

    move v0, v4

    .line 639
    .local v0, asu:I
    :goto_0
    if-eq v0, v4, :cond_1

    .line 641
    :try_start_0
    sget-object v4, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v4, v5, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 649
    .local v1, dBm:I
    :goto_1
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_0
    move v0, v3

    .line 638
    goto :goto_0

    .line 642
    .restart local v0       #asu:I
    :catch_0
    move-exception v2

    .line 643
    .local v2, e:Ljava/lang/Exception;
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    .line 644
    .restart local v1       #dBm:I
    goto :goto_1

    .line 646
    .end local v1           #dBm:I
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getGsmEcn0Qdbm()I
    .locals 1

    .prologue
    .line 1193
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/16 v7, -0x63

    const/16 v6, -0x69

    .line 664
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 671
    .local v0, asu:I
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    .line 672
    .local v1, dbm:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGsmLevel() dbm = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 674
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v4, :cond_5

    .line 687
    if-ne v1, v8, :cond_0

    const/4 v3, 0x0

    .line 714
    .end local v1           #dbm:I
    .local v3, level:I
    :goto_0
    return v3

    .line 689
    .end local v3           #level:I
    .restart local v1       #dbm:I
    :cond_0
    const/16 v4, -0x55

    if-lt v1, v4, :cond_1

    const/4 v3, 0x4

    .restart local v3       #level:I
    goto :goto_0

    .line 690
    .end local v3           #level:I
    :cond_1
    const/16 v4, -0x5c

    if-lt v1, v4, :cond_2

    const/4 v3, 0x3

    .restart local v3       #level:I
    goto :goto_0

    .line 691
    .end local v3           #level:I
    :cond_2
    if-lt v1, v7, :cond_3

    const/4 v3, 0x2

    .restart local v3       #level:I
    goto :goto_0

    .line 692
    .end local v3           #level:I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v3, 0x1

    .restart local v3       #level:I
    goto :goto_0

    .line 693
    .end local v3           #level:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #level:I
    goto :goto_0

    .line 696
    .end local v3           #level:I
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v3, 0x0

    .restart local v3       #level:I
    goto :goto_0

    .line 698
    .end local v3           #level:I
    :cond_6
    const/16 v4, -0x50

    if-lt v1, v4, :cond_7

    const/4 v3, 0x4

    .restart local v3       #level:I
    goto :goto_0

    .line 699
    .end local v3           #level:I
    :cond_7
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_8

    const/4 v3, 0x3

    .restart local v3       #level:I
    goto :goto_0

    .line 700
    .end local v3           #level:I
    :cond_8
    if-lt v1, v7, :cond_9

    const/4 v3, 0x2

    .restart local v3       #level:I
    goto :goto_0

    .line 701
    .end local v3           #level:I
    :cond_9
    if-lt v1, v6, :cond_a

    const/4 v3, 0x1

    .restart local v3       #level:I
    goto :goto_0

    .line 702
    .end local v3           #level:I
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #level:I
    goto :goto_0

    .line 705
    .end local v1           #dbm:I
    .end local v3           #level:I
    :catch_0
    move-exception v2

    .line 706
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    if-le v0, v4, :cond_b

    const/16 v4, 0x63

    if-ne v0, v4, :cond_c

    :cond_b
    const/4 v3, 0x0

    .restart local v3       #level:I
    goto :goto_0

    .line 707
    .end local v3           #level:I
    :cond_c
    const/16 v4, 0xc

    if-lt v0, v4, :cond_d

    const/4 v3, 0x4

    .restart local v3       #level:I
    goto :goto_0

    .line 708
    .end local v3           #level:I
    :cond_d
    const/16 v4, 0x8

    if-lt v0, v4, :cond_e

    const/4 v3, 0x3

    .restart local v3       #level:I
    goto :goto_0

    .line 709
    .end local v3           #level:I
    :cond_e
    const/4 v4, 0x5

    if-lt v0, v4, :cond_f

    const/4 v3, 0x2

    .restart local v3       #level:I
    goto :goto_0

    .line 710
    .end local v3           #level:I
    :cond_f
    const/4 v3, 0x1

    .restart local v3       #level:I
    goto :goto_0
.end method

.method public getGsmRscpQdbm()I
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    return v0
.end method

.method public getGsmRssiQdbm()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getGsmSignalStrengthDbm()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 1202
    const/4 v1, -0x1

    .line 1203
    .local v1, dBm:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1204
    .local v3, gsmSignalStrength:I
    const/16 v5, 0x63

    if-ne v3, v5, :cond_1

    move v0, v4

    .line 1206
    .local v0, asu:I
    :goto_0
    if-eq v0, v4, :cond_0

    .line 1208
    :try_start_0
    sget-object v4, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v4, v5, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1213
    :cond_0
    :goto_1
    return v1

    .end local v0           #asu:I
    :cond_1
    move v0, v3

    .line 1204
    goto :goto_0

    .line 1209
    .restart local v0       #asu:I
    :catch_0
    move-exception v2

    .line 1210
    .local v2, e:Ljava/lang/Exception;
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    goto :goto_1
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 550
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 551
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 552
    .local v2, level:I
    if-nez v2, :cond_0

    .line 553
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 570
    :cond_0
    :goto_0
    return v2

    .line 556
    .end local v2           #level:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 557
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 558
    .local v1, evdoLevel:I
    if-nez v1, :cond_2

    .line 560
    move v2, v0

    .restart local v2       #level:I
    goto :goto_0

    .line 561
    .end local v2           #level:I
    :cond_2
    if-nez v0, :cond_3

    .line 563
    move v2, v1

    .restart local v2       #level:I
    goto :goto_0

    .line 566
    .end local v2           #level:I
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    .restart local v2       #level:I
    :goto_1
    goto :goto_0

    .end local v2           #level:I
    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 930
    const/16 v0, 0x63

    .line 931
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 945
    .local v1, lteDbm:I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 948
    :goto_0
    return v0

    .line 946
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 856
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 871
    const/4 v1, 0x0

    .local v1, rssiIconLevel:I
    const/4 v0, -0x1

    .local v0, rsrpIconLevel:I
    const/4 v2, -0x1

    .line 873
    .local v2, snrIconLevel:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x2c

    if-le v3, v4, :cond_3

    const/4 v0, -0x1

    .line 886
    :cond_0
    :goto_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x12c

    if-le v3, v4, :cond_8

    const/4 v2, -0x1

    .line 898
    :cond_1
    :goto_1
    if-eq v2, v5, :cond_e

    if-eq v0, v5, :cond_e

    .line 904
    if-ge v0, v2, :cond_d

    .line 919
    .end local v0           #rsrpIconLevel:I
    :cond_2
    :goto_2
    return v0

    .line 874
    .restart local v0       #rsrpIconLevel:I
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x55

    if-lt v3, v4, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 875
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 876
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 877
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    .line 878
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v4, -0x8c

    if-lt v3, v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 887
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x82

    if-lt v3, v4, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    .line 888
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_a

    const/4 v2, 0x3

    goto :goto_1

    .line 889
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_b

    const/4 v2, 0x2

    goto :goto_1

    .line 890
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_c

    const/4 v2, 0x1

    goto :goto_1

    .line 891
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v4, -0xc8

    if-lt v3, v4, :cond_1

    .line 892
    const/4 v2, 0x0

    goto :goto_1

    :cond_d
    move v0, v2

    .line 904
    goto :goto_2

    .line 907
    :cond_e
    if-eq v2, v5, :cond_f

    move v0, v2

    goto :goto_2

    .line 909
    :cond_f
    if-ne v0, v5, :cond_2

    .line 912
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x3f

    if-le v3, v4, :cond_11

    const/4 v1, 0x0

    :cond_10
    :goto_3
    move v0, v1

    .line 919
    goto :goto_2

    .line 913
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_12

    const/4 v1, 0x4

    goto :goto_3

    .line 914
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_13

    const/4 v1, 0x3

    goto :goto_3

    .line 915
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_14

    const/4 v1, 0x2

    goto :goto_3

    .line 916
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v3, :cond_10

    const/4 v1, 0x1

    goto :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrenght()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 963
    const/16 v0, 0x1f

    .line 964
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 0
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 296
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 297
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 298
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 299
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 300
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 301
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 302
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 303
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 304
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 305
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 306
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 307
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 308
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 310
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 267
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 270
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 955
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .parameter "gsmFlag"

    .prologue
    .line 464
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 465
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    if-nez v0, :cond_0

    const-string v0, "SIM1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_1

    const-string v0, "gsm|lte"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SIM2"

    goto/16 :goto_0

    :cond_1
    const-string v0, "cdma"

    goto :goto_1
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 435
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 438
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 439
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 441
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 442
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 443
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 446
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 447
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 448
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 449
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 453
    return-void

    :cond_4
    move v0, v1

    .line 435
    goto :goto_0

    :cond_5
    move v0, v2

    .line 438
    goto :goto_1

    .line 439
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 442
    goto :goto_3

    :cond_8
    move v0, v4

    .line 447
    goto :goto_4

    :cond_9
    move v0, v4

    .line 448
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 374
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget v0, p0, Landroid/telephony/SignalStrength;->mSimId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    return-void

    .line 386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
