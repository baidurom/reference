.class public Lcom/baidu/themeanimation/util/LockScreenParser;
.super Ljava/lang/Object;
.source "LockScreenParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenParser"

.field static mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

.field static final mInstanceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/baidu/themeanimation/util/LockScreenParser;
    .locals 2

    .prologue
    .line 30
    sget-object v1, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

    monitor-exit v1

    .line 37
    :goto_0
    return-object v0

    .line 35
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/util/LockScreenParser;

    invoke-direct {v0}, Lcom/baidu/themeanimation/util/LockScreenParser;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    sget-object v0, Lcom/baidu/themeanimation/util/LockScreenParser;->mInstance:Lcom/baidu/themeanimation/util/LockScreenParser;

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public inflate(Ljava/io/InputStream;)Lcom/baidu/themeanimation/element/LockScreenElement;
    .locals 7
    .parameter "manifestStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 44
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->reset()V

    .line 46
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 47
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 48
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 49
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, lockElement:Lcom/baidu/themeanimation/element/LockScreenElement;
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 53
    .local v0, eventType:I
    :goto_0
    if-eq v0, v6, :cond_2

    .line 54
    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    .line 55
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, tagName:Ljava/lang/String;
    const-string v5, "Lockscreen"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "BaiduLockscreen"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    :cond_0
    invoke-static {v3}, Lcom/baidu/themeanimation/manager/ElementManager;->parseElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;

    move-result-object v2

    .end local v2           #lockElement:Lcom/baidu/themeanimation/element/LockScreenElement;
    check-cast v2, Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 61
    .end local v4           #tagName:Ljava/lang/String;
    .restart local v2       #lockElement:Lcom/baidu/themeanimation/element/LockScreenElement;
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/themeanimation/manager/ExpressionManager;->execAll()V

    .line 64
    return-object v2
.end method
