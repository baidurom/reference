.class Lcom/android/internal/telephony/cat/TransportProtocol;
.super Ljava/lang/Object;
.source "BipUtils.java"


# instance fields
.field public portNumber:I

.field public protocolType:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .parameter "type"
    .parameter "port"

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v0, p0, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 152
    iput v0, p0, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    .line 155
    iput p1, p0, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 156
    iput p2, p0, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    .line 157
    return-void
.end method
