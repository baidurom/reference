.class Lyi/baidupay/TradeServerCache$MySerializer;
.super Ljava/lang/Object;
.source "TradeServerCache.java"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/baidupay/TradeServerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/XmlSerializerAndParser",
        "<",
        "Lyi/baidupay/TradeServerType;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/baidupay/TradeServerCache$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lyi/baidupay/TradeServerCache$MySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lyi/baidupay/TradeServerCache$MySerializer;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lyi/baidupay/TradeServerType;

    move-result-object v0

    return-object v0
.end method

.method public createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lyi/baidupay/TradeServerType;
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    const-string v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyi/baidupay/TradeServerType;->newKey(Ljava/lang/String;)Lyi/baidupay/TradeServerType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    check-cast p1, Lyi/baidupay/TradeServerType;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lyi/baidupay/TradeServerCache$MySerializer;->writeAsXml(Lyi/baidupay/TradeServerType;Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method

.method public writeAsXml(Lyi/baidupay/TradeServerType;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .parameter "item"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    const-string v1, "type"

    iget-object v2, p1, Lyi/baidupay/TradeServerType;->type:Ljava/lang/String;

    invoke-interface {p2, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    return-void
.end method
