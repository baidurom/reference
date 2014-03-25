.class public Lcom/baidu/themeanimation/element/CommandIntent;
.super Lcom/baidu/themeanimation/element/CommandElement;
.source "CommandIntent.java"


# instance fields
.field private mClass:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/CommandElement;-><init>()V

    .line 19
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/CommandIntent;->setCommandType(I)V

    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mIntent:Landroid/content/Intent;

    .line 21
    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 30
    new-instance v0, Lcom/baidu/themeanimation/element/CommandIntent;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/CommandIntent;-><init>()V

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 71
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mClass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 75
    .end local v0           #componentName:Landroid/content/ComponentName;
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mIntent:Landroid/content/Intent;

    return-object v1
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 25
    const-string v0, "IntentCommand"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    return-void
.end method

.method public setClass(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mClass:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mPackageName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 6
    .parameter "uri"

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/CommandIntent;->mIntent:Landroid/content/Intent;

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

    .line 56
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
