.class public Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
.super Ljava/lang/Object;
.source "BearerDataInterfaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/BearerDataInterfaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDataHeaderDetails"
.end annotation


# instance fields
.field public headerDataFields:I

.field public headerDataLength:I

.field public skipBits:I

.field public wholeLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataLength:I

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->wholeLength:I

    .line 59
    iput v0, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    .line 60
    iput v0, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->skipBits:I

    .line 61
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "dataLen"
    .parameter "wholelen"
    .parameter "fields"
    .parameter "skip"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataLength:I

    .line 65
    iput p2, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->wholeLength:I

    .line 66
    iput p3, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    .line 67
    iput p4, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->skipBits:I

    .line 68
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "UserDataHeaderDetails "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ headerDataLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", wholeLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->wholeLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numFields = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", skipBits = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->skipBits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
