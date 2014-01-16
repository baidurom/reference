.class public final Landroid/telephony/CellSignalStrengthGsm;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthGsm.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthGsm;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final GSM_SIGNAL_STRENGTH_GOOD:I = 0x8

.field private static final GSM_SIGNAL_STRENGTH_GREAT:I = 0xc

.field private static final GSM_SIGNAL_STRENGTH_MODERATE:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthGsm"


# instance fields
.field private mBitErrorRate:I

.field private mSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthGsm$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthGsm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    .line 45
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "ss"
    .parameter "ber"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/telephony/CellSignalStrengthGsm;->initialize(II)V

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthGsm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm;->copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V

    .line 65
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 232
    const-string v0, "CellSignalStrengthGsm"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->copy()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthGsm;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthGsm;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 83
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 84
    iget v0, p1, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 85
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 167
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .local v2, s:Landroid/telephony/CellSignalStrengthGsm;
    if-nez p1, :cond_1

    .line 176
    .end local v2           #s:Landroid/telephony/CellSignalStrengthGsm;
    :cond_0
    :goto_0
    return v3

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 176
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/CellSignalStrengthGsm;
    :cond_1
    iget v4, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getAsuLevel()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 153
    .local v0, level:I
    return v0
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const v3, 0x7fffffff

    .line 130
    iget v2, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 131
    .local v2, level:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 132
    .local v0, asu:I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 133
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 138
    .local v1, dBm:I
    :goto_1
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    .line 135
    .restart local v0       #asu:I
    :cond_1
    const v1, 0x7fffffff

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getLevel()I
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 113
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 114
    .local v0, asu:I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 120
    .local v1, level:I
    :goto_0
    return v1

    .line 115
    .end local v1           #level:I
    :cond_1
    const/16 v2, 0xc

    if-lt v0, v2, :cond_2

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 116
    .end local v1           #level:I
    :cond_2
    if-lt v0, v3, :cond_3

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 117
    .end local v1           #level:I
    :cond_3
    if-lt v0, v3, :cond_4

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 118
    .end local v1           #level:I
    :cond_4
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 158
    const/16 v0, 0x1f

    .line 159
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method public initialize(II)V
    .locals 0
    .parameter "ss"
    .parameter "ber"

    .prologue
    .line 75
    iput p1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 76
    iput p2, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 77
    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 98
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    .line 99
    iput v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthGsm: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 193
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Landroid/telephony/CellSignalStrengthGsm;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return-void
.end method
