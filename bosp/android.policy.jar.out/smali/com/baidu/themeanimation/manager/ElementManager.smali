.class public Lcom/baidu/themeanimation/manager/ElementManager;
.super Ljava/lang/Object;
.source "ElementManager.java"


# static fields
.field private static mElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    .line 44
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/LockScreenElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/TriggerElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/TriggerElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/TriggersElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/TriggersElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/LockPathElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/LockPathElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/ExternalCommands;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/ExternalCommands;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/AnimationImageViewElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/AnimationImageViewElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/ButtonElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/ButtonElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/GroupElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/GroupElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/ImageElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/ImageElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/WallpaperElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/WallpaperElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/MaskElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/MaskElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/StartPointElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/StartPointElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/StartPointElement$EndPointElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/StateElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/StateElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/TextElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/TextElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/DateElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/DateElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/TimeElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/TimeElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/UnlockerElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/UnlockerElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/VarElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/VarElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/AlphaAnimationElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/AlphaAnimationElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/PositionAnimationElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/PositionAnimationElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/RotateAnimationElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/RotateAnimationElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/SizeAnimationElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/SizeAnimationElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/SourceAnimationElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/SourceAnimationElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/VariableAnimationElement;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/VariableAnimationElement;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/Command;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/Command;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/CommandIntent;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/CommandIntent;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    new-instance v1, Lcom/baidu/themeanimation/element/CommandVariable;

    invoke-direct {v1}, Lcom/baidu/themeanimation/element/CommandVariable;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;
    .locals 5
    .parameter "parser"

    .prologue
    .line 78
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, tagName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    sget-object v4, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 81
    sget-object v4, Lcom/baidu/themeanimation/manager/ElementManager;->mElementList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/Element;

    .line 82
    .local v1, element:Lcom/baidu/themeanimation/element/Element;
    invoke-virtual {v1, v3}, Lcom/baidu/themeanimation/element/Element;->matchTag(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {v1, p0}, Lcom/baidu/themeanimation/element/Element;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;

    move-result-object v4

    .line 90
    .end local v1           #element:Lcom/baidu/themeanimation/element/Element;
    :goto_1
    return-object v4

    .line 80
    .restart local v1       #element:Lcom/baidu/themeanimation/element/Element;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v1           #element:Lcom/baidu/themeanimation/element/Element;
    :cond_1
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/baidu/themeanimation/manager/ElementManager;->skipElement(Lorg/xmlpull/v1/XmlPullParser;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static skipElement(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 6
    .parameter "parser"
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 98
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, tagName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 100
    const-string v2, "unsupported"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 104
    .local v0, eventType:I
    if-ne v0, v5, :cond_3

    .line 105
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 106
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 107
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 108
    if-ne v0, v5, :cond_2

    .line 109
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/baidu/themeanimation/manager/ElementManager;->skipElement(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 115
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 111
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    :cond_3
    return-void
.end method
