.class Lcom/android/internal/telephony/cat/RilMessage;
.super Ljava/lang/Object;
.source "CatService.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;

.field mSetUpMenuFromMD:Z


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "msgId"
    .parameter "rawData"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 121
    iput-object p2, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    .line 123
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 127
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 128
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 129
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    .line 130
    return-void
.end method


# virtual methods
.method setSetUpMenuFromMD(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/RilMessage;->mSetUpMenuFromMD:Z

    .line 135
    return-void
.end method
