.class public Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;
.super Lcom/baidu/themeanimation/element/BottomElement;
.source "StartPointElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/StartPointElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentWrapper"
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/BottomElement;-><init>()V

    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mIntent:Landroid/content/Intent;

    .line 552
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 585
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mClass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 589
    .end local v0           #componentName:Landroid/content/ComponentName;
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mIntent:Landroid/content/Intent;

    return-object v1
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    return-void
.end method

.method public setClass(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 580
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mClass:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 576
    iput-object p1, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mPackageName:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 6
    .parameter "uri"

    .prologue
    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/StartPointElement$IntentWrapper;->mIntent:Landroid/content/Intent;

    const-string v2, "http://m.baidu.com/s?word=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gb2312"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
