.class public Lyi/baidupay/FakePayServer;
.super Lyi/baidupay/AbstractPayServer;
.source "FakePayServer.java"


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "FakePayServer"

    sput-object v0, Lyi/baidupay/FakePayServer;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lyi/baidupay/FakePayServer;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lyi/baidupay/AbstractPayServer;-><init>()V

    return-void
.end method


# virtual methods
.method public doPayment(Lyi/baidupay/PayInfo;Lyi/baidupay/PayResult;)Ljava/lang/String;
    .locals 1
    .parameter "payInfo"
    .parameter "result"

    .prologue
    .line 30
    iget-object v0, p1, Lyi/baidupay/PayInfo;->tradeNo:Ljava/lang/String;

    iput-object v0, p2, Lyi/baidupay/PayResult;->tradeNo:Ljava/lang/String;

    .line 31
    const-string v0, "tmp23452343"

    iput-object v0, p2, Lyi/baidupay/PayResult;->payNo:Ljava/lang/String;

    .line 32
    const-string v0, "OK"

    iput-object v0, p2, Lyi/baidupay/PayResult;->result:Ljava/lang/String;

    .line 33
    const-string v0, "OK"

    return-object v0
.end method
