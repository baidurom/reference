.class public Lyi/baidupay/TradeInfo;
.super Ljava/lang/Object;
.source "TradeInfo.java"


# instance fields
.field appSign:Ljava/lang/String;

.field public buyerId:Ljava/lang/String;

.field desc:Ljava/lang/String;

.field public errNo:Ljava/lang/String;

.field notifyUrl:Ljava/lang/String;

.field payNo:Ljava/lang/String;

.field public payServer:Ljava/lang/String;

.field public payUrl:Ljava/lang/String;

.field paymentType:Ljava/lang/String;

.field price:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field quantity:Ljava/lang/String;

.field sellerId:Ljava/lang/String;

.field public serverSign:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public totalFee:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;

.field public tradeServer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lyi/baidupay/TradeInfo;->tradeNo:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getTradeNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lyi/baidupay/TradeInfo;->tradeNo:Ljava/lang/String;

    return-object v0
.end method
