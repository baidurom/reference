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
    .line 198
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 69
    iput v1, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 70
    iput v1, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 71
    iput-object v2, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getApduString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/telephony/BtSimapOperResponse;->isApduExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAtrString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/telephony/BtSimapOperResponse;->isAtrExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurType()I
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/telephony/BtSimapOperResponse;->isCurTypeExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 122
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSupportType()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/telephony/BtSimapOperResponse;->isSupportTypeExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isApduExist()Z
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtrExist()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurTypeExist()Z
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportTypeExist()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
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
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setApduString(Ljava/lang/String;)V
    .locals 1
    .parameter "strVal"

    .prologue
    .line 172
    if-eqz p1, :cond_0

    .line 173
    iput-object p1, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    .line 174
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 176
    :cond_0
    return-void
.end method

.method public setAtrString(Ljava/lang/String;)V
    .locals 1
    .parameter "strVal"

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    iput-object p1, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    .line 167
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 169
    :cond_0
    return-void
.end method

.method public setCurType(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 152
    :cond_0
    iput p1, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    .line 153
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 155
    :cond_1
    return-void
.end method

.method public setSupportType(I)V
    .locals 1
    .parameter "nType"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 159
    :cond_0
    iput p1, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    .line 160
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    .line 162
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 209
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mParams:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mCurType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Landroid/telephony/BtSimapOperResponse;->mSupportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrATR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Landroid/telephony/BtSimapOperResponse;->mStrAPDU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return-void
.end method
