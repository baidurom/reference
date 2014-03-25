.class public abstract Lcom/baidu/themeanimation/element/Element;
.super Ljava/lang/Object;
.source "Element.java"


# static fields
.field private static mSourceAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/SourceAnimationElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimationElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/AnimationElement;",
            ">;"
        }
    .end annotation
.end field

.field private mCommandElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/CommandElement;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskElement:Lcom/baidu/themeanimation/element/MaskElement;

.field private mName:Ljava/lang/String;

.field private mTriggerElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/TriggerElement;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggersElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/TriggersElement;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/element/Element;->mSourceAnimations:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAnimationElement(Lcom/baidu/themeanimation/element/AnimationElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mAnimationElements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mAnimationElements:Ljava/util/List;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mAnimationElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    instance-of v0, p1, Lcom/baidu/themeanimation/element/SourceAnimationElement;

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/baidu/themeanimation/element/Element;->mSourceAnimations:Ljava/util/List;

    check-cast p1, Lcom/baidu/themeanimation/element/SourceAnimationElement;

    .end local p1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    return-void
.end method

.method public addCommandElement(Lcom/baidu/themeanimation/element/CommandElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mCommandElements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mCommandElements:Ljava/util/List;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mCommandElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public addElement(Lcom/baidu/themeanimation/element/Element;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    instance-of v0, p1, Lcom/baidu/themeanimation/element/MaskElement;

    if-eqz v0, :cond_1

    .line 143
    check-cast p1, Lcom/baidu/themeanimation/element/MaskElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/Element;->setMask(Lcom/baidu/themeanimation/element/MaskElement;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/baidu/themeanimation/element/VisibleElement;

    if-eqz v0, :cond_2

    .line 145
    check-cast p1, Lcom/baidu/themeanimation/element/VisibleElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/Element;->addVisibleElement(Lcom/baidu/themeanimation/element/VisibleElement;)V

    goto :goto_0

    .line 146
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/baidu/themeanimation/element/TriggerElement;

    if-eqz v0, :cond_3

    .line 147
    check-cast p1, Lcom/baidu/themeanimation/element/TriggerElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/Element;->addTriggerElement(Lcom/baidu/themeanimation/element/TriggerElement;)V

    goto :goto_0

    .line 148
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/baidu/themeanimation/element/TriggersElement;

    if-eqz v0, :cond_4

    .line 149
    check-cast p1, Lcom/baidu/themeanimation/element/TriggersElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/Element;->addTriggersElement(Lcom/baidu/themeanimation/element/TriggersElement;)V

    goto :goto_0

    .line 150
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/baidu/themeanimation/element/AnimationElement;

    if-eqz v0, :cond_5

    .line 151
    check-cast p1, Lcom/baidu/themeanimation/element/AnimationElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/Element;->addAnimationElement(Lcom/baidu/themeanimation/element/AnimationElement;)V

    goto :goto_0

    .line 152
    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/baidu/themeanimation/element/CommandElement;

    if-eqz v0, :cond_0

    .line 153
    check-cast p1, Lcom/baidu/themeanimation/element/CommandElement;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/Element;->addCommandElement(Lcom/baidu/themeanimation/element/CommandElement;)V

    goto :goto_0
.end method

.method public addTriggerElement(Lcom/baidu/themeanimation/element/TriggerElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mTriggerElements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mTriggerElements:Ljava/util/List;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mTriggerElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public addTriggersElement(Lcom/baidu/themeanimation/element/TriggersElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mTriggersElements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mTriggersElements:Ljava/util/List;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mTriggersElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public addVisibleElement(Lcom/baidu/themeanimation/element/VisibleElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mVisibleElements:Ljava/util/List;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mVisibleElements:Ljava/util/List;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mVisibleElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public abstract createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
.end method

.method public execTrigger()V
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/Element;->getTriggerElements()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/Element;->getTriggerElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/TriggerElement;

    .line 161
    .local v1, trigger:Lcom/baidu/themeanimation/element/TriggerElement;
    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/TriggerElement;->exec()V

    goto :goto_0

    .line 164
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #trigger:Lcom/baidu/themeanimation/element/TriggerElement;
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/Element;->getTriggersElements()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/Element;->getTriggersElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/TriggersElement;

    .line 166
    .local v2, triggers:Lcom/baidu/themeanimation/element/TriggersElement;
    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/TriggersElement;->exec()V

    goto :goto_1

    .line 169
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #triggers:Lcom/baidu/themeanimation/element/TriggersElement;
    :cond_1
    return-void
.end method

.method public execTrigger(Ljava/lang/String;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/Element;->getTriggerElements()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/Element;->getTriggerElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/TriggerElement;

    .line 174
    .local v1, trigger:Lcom/baidu/themeanimation/element/TriggerElement;
    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/TriggerElement;->exec(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #trigger:Lcom/baidu/themeanimation/element/TriggerElement;
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/Element;->getTriggersElements()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/Element;->getTriggersElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/TriggersElement;

    .line 179
    .local v2, triggers:Lcom/baidu/themeanimation/element/TriggersElement;
    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/TriggersElement;->exec(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #triggers:Lcom/baidu/themeanimation/element/TriggersElement;
    :cond_1
    return-void
.end method

.method public getAnimationElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/AnimationElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mAnimationElements:Ljava/util/List;

    return-object v0
.end method

.method public getCommandElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/CommandElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mCommandElements:Ljava/util/List;

    return-object v0
.end method

.method public getMask()Lcom/baidu/themeanimation/element/MaskElement;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mMaskElement:Lcom/baidu/themeanimation/element/MaskElement;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/TriggerElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mTriggerElements:Ljava/util/List;

    return-object v0
.end method

.method public getTriggersElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/TriggersElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mTriggersElements:Ljava/util/List;

    return-object v0
.end method

.method public getVisibleElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/themeanimation/element/Element;->mVisibleElements:Ljava/util/List;

    return-object v0
.end method

.method public getmSourceAnimationss()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/SourceAnimationElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/baidu/themeanimation/element/Element;->mSourceAnimations:Ljava/util/List;

    return-object v0
.end method

.method public hasView()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public abstract matchTag(Ljava/lang/String;)Z
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 49
    .local v2, eventType:I
    if-eq v2, v5, :cond_1

    .line 50
    const/4 v1, 0x0

    .line 67
    :cond_0
    :goto_0
    return-object v1

    .line 53
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, tagName:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/baidu/themeanimation/element/Element;->createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;

    move-result-object v1

    .line 55
    .local v1, element:Lcom/baidu/themeanimation/element/Element;
    invoke-static {p1, v1}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V

    .line 56
    :cond_2
    :goto_1
    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 58
    if-ne v2, v5, :cond_3

    .line 59
    invoke-virtual {v1, p1}, Lcom/baidu/themeanimation/element/Element;->parseChild(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;

    move-result-object v0

    .line 60
    .local v0, child:Lcom/baidu/themeanimation/element/Element;
    invoke-virtual {v1, v0}, Lcom/baidu/themeanimation/element/Element;->addElement(Lcom/baidu/themeanimation/element/Element;)V

    goto :goto_1

    .line 61
    .end local v0           #child:Lcom/baidu/themeanimation/element/Element;
    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method public parseChild(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lcom/baidu/themeanimation/manager/ElementManager;->parseElement(Lorg/xmlpull/v1/XmlPullParser;)Lcom/baidu/themeanimation/element/Element;

    move-result-object v0

    return-object v0
.end method

.method public setMask(Lcom/baidu/themeanimation/element/MaskElement;)V
    .locals 0
    .parameter "mask"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/themeanimation/element/Element;->mMaskElement:Lcom/baidu/themeanimation/element/MaskElement;

    .line 138
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/themeanimation/element/Element;->mName:Ljava/lang/String;

    .line 33
    return-void
.end method
