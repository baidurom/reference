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
.field public bearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

.field public bufferSize:I

.field public dataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field public gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

.field public localAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field public textMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field public transportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/BearerDesc;ILcom/android/internal/telephony/cat/OtherAddress;Lcom/android/internal/telephony/cat/TransportProtocol;Lcom/android/internal/telephony/cat/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V
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

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 181
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    .line 183
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 184
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 185
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 186
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 188
    iput-object v1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    .line 195
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 196
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    .line 197
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 198
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 199
    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 200
    iput-object p10, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 201
    new-instance v0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    invoke-direct {v0, p0, p7, p8, p9}, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;-><init>(Lcom/android/internal/telephony/cat/OpenChannelParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    .line 202
    return-void
.end method
