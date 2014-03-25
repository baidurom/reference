.class Lyi/baidupay/TradeServerCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "TradeServerCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/baidupay/TradeServerCache$1;,
        Lyi/baidupay/TradeServerCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Lyi/baidupay/TradeServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TradeServerCache"

.field private static final sSerializer:Lyi/baidupay/TradeServerCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lyi/baidupay/TradeServerCache$MySerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyi/baidupay/TradeServerCache$MySerializer;-><init>(Lyi/baidupay/TradeServerCache$1;)V

    sput-object v0, Lyi/baidupay/TradeServerCache;->sSerializer:Lyi/baidupay/TradeServerCache$MySerializer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 33
    const-string v2, "baidu.baidupay.TradeServer"

    const-string v3, "baidu.baidupay.TradeServer"

    const-string v4, "trade-server"

    sget-object v5, Lyi/baidupay/TradeServerCache;->sSerializer:Lyi/baidupay/TradeServerCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lyi/baidupay/TradeServerCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Lyi/baidupay/TradeServerType;

    move-result-object v0

    return-object v0
.end method

.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Lyi/baidupay/TradeServerType;
    .locals 1
    .parameter "res"
    .parameter "packageName"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method
