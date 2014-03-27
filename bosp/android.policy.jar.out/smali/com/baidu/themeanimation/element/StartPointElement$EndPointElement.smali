.class public Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;
.super Lcom/baidu/themeanimation/element/StartPointElement;
.source "StartPointElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/StartPointElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EndPointElement"
.end annotation


# instance fields
.field private mIntentWrapper:Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;

.field private mLockPathElement:Lcom/baidu/themeanimation/element/LockPathElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/StartPointElement;-><init>()V

    return-void
.end method


# virtual methods
.method public addElement(Lcom/baidu/themeanimation/element/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 491
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/StartPointElement;->addElement(Lcom/baidu/themeanimation/element/Element;)V

    .line 492
    instance-of v0, p1, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;

    if-eqz v0, :cond_1

    .line 493
    check-cast p1, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->setIntent(Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 494
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/baidu/themeanimation/element/LockPathElement;

    if-eqz v0, :cond_0

    .line 495
    check-cast p1, Lcom/baidu/themeanimation/element/LockPathElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->setLockPath(Lcom/baidu/themeanimation/element/LockPathElement;)V

    goto :goto_0
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 486
    new-instance v0, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;-><init>()V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 525
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->mIntentWrapper:Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;

    if-eqz v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->mIntentWrapper:Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 529
    :cond_0
    return-object v0
.end method

.method public getLockPath()Lcom/baidu/themeanimation/element/LockPathElement;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->mLockPathElement:Lcom/baidu/themeanimation/element/LockPathElement;

    return-object v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 481
    const-string v0, "EndPoint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseChild(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;
    .locals 4
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 501
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, tagName:Ljava/lang/String;
    const-string v3, "Intent"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, intentWrapper:Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 505
    .local v0, eventType:I
    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    .line 506
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 507
    new-instance v1, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;

    .end local v1           #intentWrapper:Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;
    invoke-direct {v1}, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;-><init>()V

    .line 508
    .restart local v1       #intentWrapper:Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;
    invoke-static {p1, v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 514
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 509
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 510
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    .end local v0           #eventType:I
    .end local v1           #intentWrapper:Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;
    :cond_2
    :goto_1
    return-object v1

    :cond_3
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/StartPointElement;->parseChild(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;

    move-result-object v1

    goto :goto_1
.end method

.method public setIntent(Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;)V
    .locals 0
    .parameter "intentWrapper"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->mIntentWrapper:Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;

    .line 534
    return-void
.end method

.method public setLockPath(Lcom/baidu/themeanimation/element/LockPathElement;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;->mLockPathElement:Lcom/baidu/themeanimation/element/LockPathElement;

    .line 538
    return-void
.end method
