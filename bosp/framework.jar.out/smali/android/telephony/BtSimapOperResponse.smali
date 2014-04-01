.class public Landroid/telephony/BtSimapOperResponse;
.super Ljava/lang/Object;
.source "BtSimapOperResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final APDU_RESPONSE_MASK:B = 0x8t

.field private static final ATR_MASK:B = 0x4t

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/BtSimapOperResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURTYPE_MASK:B = 0x1t

.field public static final ERR_CARD_NOT_ACCESSIBLE:I = 0x2

.field public static final ERR_CARD_POWERED_OFF:I = 0x3

.field public static final ERR_CARD_POWERED_ON:I = 0x5

.field public static final ERR_CARD_REMOVED:I = 0x4

.field public static final ERR_DATA_NOT_AVAILABLE:I = 0x6

.field public static final ERR_NOT_SUPPORTED:I = 0x7

.field public static final ERR_NO_REASON_DEFINED:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTTYPE_MASK:B = 0x2t

.field static final UNKNOWN_PROTOCOL_TYPE:I = -0x1


# instance fields
.field private mCurType:I

.field private mParams:I

.field private mStrAPDU:Ljava/lang/String;

.field private mStrATR:Ljava/lang/String;

.field private mSupportType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Landroid/telephony/BtSimapOperResponse$1;

    invoke-direct {v0}, Landroid/telephony/BtSimapOperResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/BtSimapOperResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 72
    iput v1, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 73
    iput v1, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 74
    iput-object v2, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public getApduString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/telephony/BtSimapOperResponse;->isApduExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAtrString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/telephony/BtSimapOperResponse;->isAtrExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurType()I
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/telephony/BtSimapOperResponse;->isCurTypeExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSupportType()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/telephony/BtSimapOperResponse;->isSupportTypeExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isApduExist()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtrExist()Z
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurTypeExist()Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportTypeExist()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setApduString(Ljava/lang/String;)V
    .locals 1
    .parameter "strVal"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    iput-object p1, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 177
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 179
    :cond_0
    return-void
.end method

.method public setAtrString(Ljava/lang/String;)V
    .locals 1
    .parameter "strVal"

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    iput-object p1, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 170
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 172
    :cond_0
    return-void
.end method

.method public setCurType(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 155
    :cond_0
    iput p1, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 156
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 158
    :cond_1
    return-void
.end method

.method public setSupportType(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 162
    :cond_0
    iput p1, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 163
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 165
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 212
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    return-void
.end method
