.class public Lcom/android/internal/telephony/cdma/MccSidLtmOff;
.super Ljava/lang/Object;
.source "MccSidLtmOff.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MccSidLtmOff"

.field public static final LTM_OFF_INVALID:I = 0x64


# instance fields
.field public LtmOffMax:I

.field public LtmOffMin:I

.field public Mcc:I

.field public Sid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    .line 39
    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    .line 40
    iput v1, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    .line 41
    iput v1, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    .line 42
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "mcc"
    .parameter "sid"
    .parameter "ltmOffMin"
    .parameter "ltmOffMax"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    .line 46
    iput p2, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    .line 47
    iput p3, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    .line 48
    iput p4, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/MccSidLtmOff;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->copyFrom(Lcom/android/internal/telephony/cdma/MccSidLtmOff;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/cdma/MccSidLtmOff;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 66
    iget v0, p1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    .line 67
    iget v0, p1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    .line 68
    iget v0, p1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    .line 69
    iget v0, p1, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    .line 70
    return-void
.end method

.method public getLtmOffMax()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMax:I

    return v0
.end method

.method public getLtmOffMin()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->LtmOffMin:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Mcc:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/telephony/cdma/MccSidLtmOff;->Sid:I

    return v0
.end method
