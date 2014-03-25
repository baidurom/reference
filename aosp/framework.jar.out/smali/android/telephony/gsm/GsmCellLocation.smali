.class public Landroid/telephony/gsm/GsmCellLocation;
.super Landroid/telephony/CellLocation;
.source "GsmCellLocation.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GsmCellLocation"


# instance fields
.field private mCid:I

.field private mLac:I

.field private mPsc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 43
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 44
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 45
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mType:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 53
    const-string v0, "lac"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 54
    const-string v0, "cid"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 55
    const-string/jumbo v0, "psc"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mType:I

    .line 57
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 144
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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 118
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v2, s:Landroid/telephony/gsm/GsmCellLocation;
    if-nez p1, :cond_1

    .line 127
    .end local v2           #s:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_0
    return v3

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 127
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/gsm/GsmCellLocation;
    :cond_1
    iget v4, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 153
    const-string v0, "lac"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v0, "cid"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string/jumbo v0, "psc"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string/jumbo v0, "type"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v0, "GsmCellLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillInNotifierBundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public getCid()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    return v0
.end method

.method public getPsc()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 166
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLacAndCid(II)V
    .locals 0
    .parameter "lac"
    .parameter "cid"

    .prologue
    .line 96
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 97
    iput p2, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 98
    return-void
.end method

.method public setPsc(I)V
    .locals 0
    .parameter "psc"

    .prologue
    .line 105
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 106
    return-void
.end method

.method public setStateInvalid()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 87
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 88
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 89
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
