.class public Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;
.super Ljava/lang/Object;
.source "DisturbPreventUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/telephony/DisturbPreventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneLabel"
.end annotation


# instance fields
.field public mCompanyName:Ljava/lang/String;

.field public mCount:I

.field public mLabel:Ljava/lang/String;

.field public mLocation:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mNumber:Ljava/lang/String;

    .line 80
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mLabel:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mCount:I

    .line 82
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mCompanyName:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mLocation:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/telephony/DisturbPreventUtils$PhoneLabel;->mCompanyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
