.class public Lcom/baidu/themeanimation/element/DateElement;
.super Lcom/baidu/themeanimation/element/TextElement;
.source "DateElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/DateElement$Lunar;
    }
.end annotation


# instance fields
.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/TextElement;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/themeanimation/element/DateElement;->mValue:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 26
    new-instance v0, Lcom/baidu/themeanimation/element/DateElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/DateElement;-><init>()V

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/themeanimation/element/DateElement;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 20
    const-string v0, "DateTime"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DateElement"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTimeTick(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/DateElement;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/DateElement;->setFormat(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 5
    .parameter "format"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/TextElement;->setFormat(Ljava/lang/String;)V

    .line 46
    if-eqz p1, :cond_1

    .line 48
    const-string v4, "NNNN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    new-instance v1, Lcom/baidu/themeanimation/element/DateElement$Lunar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/baidu/themeanimation/element/DateElement$Lunar;-><init>(Ljava/util/Calendar;)V

    .line 50
    .local v1, lunar:Lcom/baidu/themeanimation/element/DateElement$Lunar;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/DateElement$Lunar;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, lunarString:Ljava/lang/String;
    const-string v4, "NNNN"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    .end local v1           #lunar:Lcom/baidu/themeanimation/element/DateElement$Lunar;
    .end local v2           #lunarString:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, sdFormat:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, dateString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/DateElement;->setText(Ljava/lang/String;)V

    .line 63
    .end local v0           #dateString:Ljava/lang/String;
    .end local v3           #sdFormat:Ljava/text/SimpleDateFormat;
    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/baidu/themeanimation/element/DateElement;->mValue:Ljava/lang/String;

    .line 31
    return-void
.end method
