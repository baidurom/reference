.class Lcom/android/internal/telephony/cat/ChannelStatus;
.super Ljava/lang/Object;
.source "BipUtils.java"


# static fields
.field public static final CHANNEL_STATUS_INFO_LINK_DROPED:I = 0x5

.field public static final CHANNEL_STATUS_INFO_NO_FURTHER_INFO:I = 0x0

.field public static final CHANNEL_STATUS_LINK:I = 0x80

.field public static final CHANNEL_STATUS_NO_LINK:I


# instance fields
.field public isActivated:Z

.field public mChannelId:I

.field public mChannelStatus:I

.field public mChannelStatusInfo:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .parameter "cid"
    .parameter "status"
    .parameter "info"

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 173
    iput p1, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelId:I

    .line 174
    iput p2, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 175
    iput p3, p0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatusInfo:I

    .line 176
    return-void
.end method
