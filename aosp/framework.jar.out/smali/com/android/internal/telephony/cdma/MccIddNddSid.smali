.class public Lcom/android/internal/telephony/cdma/MccIddNddSid;
.super Ljava/lang/Object;
.source "MccIddNddSid.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MccIddNddSid"


# instance fields
.field public Cc:Ljava/lang/String;

.field public Idd:Ljava/lang/String;

.field public Mcc:I

.field public Ndd:Ljava/lang/String;

.field public SidMax:I

.field public SidMin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    .line 39
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    .line 41
    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mcc"
    .parameter "cc"
    .parameter "sidmin"
    .parameter "sidmax"
    .parameter "idd"
    .parameter "ndd"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    .line 50
    iput p4, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    .line 51
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/MccIddNddSid;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/MccIddNddSid;->copyFrom(Lcom/android/internal/telephony/cdma/MccIddNddSid;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/cdma/MccIddNddSid;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 70
    iget v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    .line 71
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    .line 72
    iget v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    .line 73
    iget v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    .line 74
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    .line 75
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    return v0
.end method

.method public getNdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    return-object v0
.end method

.method public getSidMax()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    return v0
.end method

.method public getSidMin()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mcc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Cc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SidMin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SidMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->SidMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Idd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Ndd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MccIddNddSid;->Ndd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
