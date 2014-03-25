.class Lcom/android/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;
    }
.end annotation


# instance fields
.field public bearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

.field public bufferSize:I

.field public dataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

.field public gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

.field public localAddress:Lcom/mediatek/common/telephony/OtherAddress;

.field public textMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field public transportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/mediatek/common/telephony/BearerDesc;ILcom/mediatek/common/telephony/OtherAddress;Lcom/mediatek/common/telephony/TransportProtocol;Lcom/mediatek/common/telephony/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 2
    .parameter "cmdDet"
    .parameter "bearerDesc"
    .parameter "size"
    .parameter "localAddress"
    .parameter "transportProtocol"
    .parameter "address"
    .parameter "apn"
    .parameter "login"
    .parameter "pwd"
    .parameter "textMsg"

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 221
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    .line 223
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 224
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    .line 225
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 226
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 228
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    .line 235
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/mediatek/common/telephony/BearerDesc;

    .line 236
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    .line 237
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 238
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/mediatek/common/telephony/TransportProtocol;

    .line 239
    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/mediatek/common/telephony/OtherAddress;

    .line 240
    iput-object p10, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 241
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    invoke-direct {v0, p0, p7, p8, p9}, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;-><init>(Lcom/android/internal/telephony/cat/OpenChannelParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    .line 242
    return-void
.end method
