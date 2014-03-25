.class public Lcom/baidu/themeanimation/element/AnimatorParser;
.super Ljava/lang/Object;
.source "AnimatorParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AnimatorParser"


# instance fields
.field private mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

.field private final mAnimatorElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/themeanimation/element/AnimatorElement;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorElements:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method private inflateAnimatorAlpha(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorElement;)V
    .locals 11
    .parameter "parser"
    .parameter "animatorElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 165
    if-eqz p1, :cond_6

    .line 168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 169
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, name:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v5, keyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    const/4 v8, 0x0

    .line 172
    .local v8, value_time:F
    const/4 v7, 0x0

    .line 173
    .local v7, value:I
    const/4 v4, 0x0

    .line 174
    .local v4, ka:Landroid/animation/Keyframe;
    :goto_0
    const/4 v9, 0x1

    if-eq v2, v9, :cond_5

    .line 175
    const/4 v9, 0x2

    if-ne v2, v9, :cond_4

    const-string v9, "Alpha"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 177
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 178
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, attrValue:Ljava/lang/String;
    const-string v9, "a"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 177
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    :cond_1
    const-string v9, "time"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 183
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_2

    .line 186
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_2
    int-to-float v9, v7

    const/high16 v10, 0x437f

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 187
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v3           #i:I
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 193
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 188
    :cond_4
    const/4 v9, 0x3

    if-ne v2, v9, :cond_3

    const-string v9, "AlphaAnimation"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 196
    :cond_5
    const-string v9, "alpha"

    invoke-virtual {p2, v9, v5}, Lcom/baidu/themeanimation/element/AnimatorElement;->addKeyframes(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 198
    .end local v2           #eventType:I
    .end local v4           #ka:Landroid/animation/Keyframe;
    .end local v5           #keyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #value:I
    .end local v8           #value_time:F
    :cond_6
    return-void
.end method

.method private inflateAnimatorPosition(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorElement;)V
    .locals 13
    .parameter "parser"
    .parameter "animatorElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p1, :cond_7

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 83
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, name:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v10, xkeyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v11, ykeyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    const/4 v7, 0x0

    .local v7, value:F
    const/4 v9, 0x0

    .local v9, value_time:F
    const/4 v8, 0x0

    .line 87
    .local v8, value1:F
    const/4 v4, 0x0

    .local v4, ka:Landroid/animation/Keyframe;
    const/4 v5, 0x0

    .line 88
    .local v5, kb:Landroid/animation/Keyframe;
    :goto_0
    const/4 v12, 0x1

    if-eq v2, v12, :cond_6

    .line 89
    const/4 v12, 0x2

    if-ne v2, v12, :cond_5

    const-string v12, "Position"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 91
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 92
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, attrValue:Ljava/lang/String;
    const-string v12, "x"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 95
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 91
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 96
    :cond_1
    const-string v12, "y"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 97
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_2

    .line 98
    :cond_2
    const-string v12, "time"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 99
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_2

    .line 102
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_3
    invoke-static {v9, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 103
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {v9, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 105
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v3           #i:I
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 111
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 106
    :cond_5
    const/4 v12, 0x3

    if-ne v2, v12, :cond_4

    const-string v12, "PositionAnimation"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 114
    :cond_6
    const-string v12, "x"

    invoke-virtual {p2, v12, v10}, Lcom/baidu/themeanimation/element/AnimatorElement;->addKeyframes(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    const-string v12, "y"

    invoke-virtual {p2, v12, v11}, Lcom/baidu/themeanimation/element/AnimatorElement;->addKeyframes(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 117
    .end local v2           #eventType:I
    .end local v4           #ka:Landroid/animation/Keyframe;
    .end local v5           #kb:Landroid/animation/Keyframe;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #value:F
    .end local v8           #value1:F
    .end local v9           #value_time:F
    .end local v10           #xkeyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v11           #ykeyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_7
    return-void
.end method

.method private final inflateAnimatorRotate(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorElement;)V
    .locals 12
    .parameter "parser"
    .parameter "animatorElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 203
    if-eqz p1, :cond_7

    .line 206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 207
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, name:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v5, keyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    const/4 v8, 0x0

    .line 210
    .local v8, value_time:F
    const/4 v7, 0x0

    .line 211
    .local v7, value:F
    const/4 v4, 0x0

    .line 212
    .local v4, ka:Landroid/animation/Keyframe;
    :goto_0
    const/4 v9, 0x1

    if-eq v2, v9, :cond_6

    .line 213
    const/4 v9, 0x2

    if-ne v2, v9, :cond_5

    const-string v9, "Rotation"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 215
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 216
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, attrValue:Ljava/lang/String;
    const-string v9, "angle"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 215
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    :cond_1
    const-string v9, "time"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 221
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 222
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    .line 223
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v8

    goto :goto_2

    .line 224
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 225
    const/4 v8, 0x0

    goto :goto_2

    .line 229
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_3
    invoke-static {v8, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 230
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v3           #i:I
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 236
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 231
    :cond_5
    const/4 v9, 0x3

    if-ne v2, v9, :cond_4

    const-string v9, "RotationAnimation"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 239
    :cond_6
    const-string v9, "rotation"

    invoke-virtual {p2, v9, v5}, Lcom/baidu/themeanimation/element/AnimatorElement;->addKeyframes(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 241
    .end local v2           #eventType:I
    .end local v4           #ka:Landroid/animation/Keyframe;
    .end local v5           #keyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #value:F
    .end local v8           #value_time:F
    :cond_7
    return-void
.end method

.method private inflateAnimatorSize(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorElement;)V
    .locals 13
    .parameter "parser"
    .parameter "animatorElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 122
    if-eqz p1, :cond_7

    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 126
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, name:Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v11, wkeyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, hkeyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    const/4 v8, 0x0

    .local v8, value:F
    const/4 v10, 0x0

    .local v10, value_time:F
    const/4 v9, 0x0

    .line 130
    .local v9, value1:F
    const/4 v5, 0x0

    .local v5, ka:Landroid/animation/Keyframe;
    const/4 v6, 0x0

    .line 131
    .local v6, kb:Landroid/animation/Keyframe;
    :goto_0
    const/4 v12, 0x1

    if-eq v2, v12, :cond_6

    .line 132
    const/4 v12, 0x2

    if-ne v2, v12, :cond_5

    const-string v12, "Size"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 134
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    if-ge v4, v12, :cond_3

    .line 135
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, attrValue:Ljava/lang/String;
    const-string v12, "w"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 138
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 134
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 139
    :cond_1
    const-string v12, "h"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 140
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_2

    .line 141
    :cond_2
    const-string v12, "time"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 142
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_2

    .line 145
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_3
    invoke-static {v10, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 146
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 148
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v4           #i:I
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 154
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 149
    :cond_5
    const/4 v12, 0x3

    if-ne v2, v12, :cond_4

    const-string v12, "SizeAnimation"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 157
    :cond_6
    const-string v12, "scaleX"

    invoke-virtual {p2, v12, v11}, Lcom/baidu/themeanimation/element/AnimatorElement;->addKeyframes(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 158
    const-string v12, "scaleY"

    invoke-virtual {p2, v12, v3}, Lcom/baidu/themeanimation/element/AnimatorElement;->addKeyframes(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 160
    .end local v2           #eventType:I
    .end local v3           #hkeyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v5           #ka:Landroid/animation/Keyframe;
    .end local v6           #kb:Landroid/animation/Keyframe;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #value:F
    .end local v9           #value1:F
    .end local v10           #value_time:F
    .end local v11           #wkeyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    :cond_7
    return-void
.end method


# virtual methods
.method public final generateAnimatorSet(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 3
    .parameter "target"

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, aniCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/AnimatorElement;

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/AnimatorElement;->generateAnimator(Ljava/lang/Object;)Landroid/animation/Animator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 43
    iget-object v2, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 44
    iget-object v2, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    if-eqz v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-virtual {v2, p1}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->generateAnimatorDrawable(Landroid/view/View;)Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v2
.end method

.method public getAnimationDrawable()Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->getAnimationDrawable()Lcom/baidu/themeanimation/element/AnimatorDrawableElement$SourceAnimation;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationStatus()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->getAnimationStatus()I

    move-result v0

    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final inflateAnimatorElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 280
    if-eqz p1, :cond_1

    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 286
    .local v3, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, name:Ljava/lang/String;
    const/4 v9, 0x2

    if-ne v3, v9, :cond_1

    .line 293
    const-string v9, "SourcesAnimation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 294
    new-instance v9, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-direct {v9}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;-><init>()V

    iput-object v9, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    .line 295
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 296
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, attrName:Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, attrValue:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, methodName:Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-virtual {v9, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 302
    .local v5, method:Ljava/lang/reflect/Method;
    iget-object v9, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v2, v10, v12

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v5           #method:Ljava/lang/reflect/Method;
    .end local v6           #methodName:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-virtual {p0, p1, v9}, Lcom/baidu/themeanimation/element/AnimatorParser;->inflateAnimatorSource(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorDrawableElement;)V

    .line 342
    .end local v3           #eventType:I
    .end local v4           #i:I
    .end local v7           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 306
    .restart local v3       #eventType:I
    .restart local v7       #name:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    .line 307
    .local v8, type:I
    const-string v9, "AlphaAnimation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 308
    const/4 v8, 0x1

    .line 316
    :cond_3
    :goto_2
    if-lez v8, :cond_1

    .line 317
    new-instance v0, Lcom/baidu/themeanimation/element/AnimatorElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/AnimatorElement;-><init>()V

    .line 318
    .local v0, animatorElement:Lcom/baidu/themeanimation/element/AnimatorElement;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v4, v9, :cond_7

    .line 319
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    .restart local v1       #attrName:Ljava/lang/String;
    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 321
    .restart local v2       #attrValue:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 323
    .restart local v6       #methodName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-virtual {v9, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 325
    .restart local v5       #method:Ljava/lang/reflect/Method;
    new-array v9, v13, [Ljava/lang/Object;

    aput-object v2, v9, v12

    invoke-virtual {v5, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 309
    .end local v0           #animatorElement:Lcom/baidu/themeanimation/element/AnimatorElement;
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #method:Ljava/lang/reflect/Method;
    .end local v6           #methodName:Ljava/lang/String;
    :cond_4
    const-string v9, "RotationAnimation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 310
    const/4 v8, 0x1

    goto :goto_2

    .line 311
    :cond_5
    const-string v9, "PositionAnimation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 312
    const/4 v8, 0x2

    goto :goto_2

    .line 313
    :cond_6
    const-string v9, "SizeAnimation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 314
    const/4 v8, 0x2

    goto :goto_2

    .line 327
    .restart local v0       #animatorElement:Lcom/baidu/themeanimation/element/AnimatorElement;
    .restart local v4       #i:I
    :cond_7
    invoke-virtual {v0, v8}, Lcom/baidu/themeanimation/element/AnimatorElement;->initType(I)V

    .line 328
    const-string v9, "AlphaAnimation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 329
    invoke-direct {p0, p1, v0}, Lcom/baidu/themeanimation/element/AnimatorParser;->inflateAnimatorAlpha(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorElement;)V

    .line 337
    :cond_8
    :goto_4
    iget-object v9, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorElements:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 330
    :cond_9
    const-string v9, "RotationAnimation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 331
    invoke-direct {p0, p1, v0}, Lcom/baidu/themeanimation/element/AnimatorParser;->inflateAnimatorRotate(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorElement;)V

    goto :goto_4

    .line 332
    :cond_a
    const-string v9, "PositionAnimation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/baidu/themeanimation/element/AnimatorParser;->inflateAnimatorPosition(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorElement;)V

    goto :goto_4

    .line 334
    :cond_b
    const-string v9, "SizeAnimation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 335
    invoke-direct {p0, p1, v0}, Lcom/baidu/themeanimation/element/AnimatorParser;->inflateAnimatorSize(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorElement;)V

    goto :goto_4
.end method

.method public final inflateAnimatorSource(Lorg/xmlpull/v1/XmlPullParser;Lcom/baidu/themeanimation/element/AnimatorDrawableElement;)V
    .locals 8
    .parameter "parser"
    .parameter "aniDrawableElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 246
    if-eqz p1, :cond_5

    .line 249
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 250
    .local v2, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 252
    .local v6, value_time:I
    const/4 v5, 0x0

    .line 253
    .local v5, value:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x1

    if-eq v2, v7, :cond_5

    .line 254
    const/4 v7, 0x2

    if-ne v2, v7, :cond_4

    const-string v7, "Source"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 256
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 257
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, attrValue:Ljava/lang/String;
    const-string v7, "src"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 260
    move-object v5, v1

    .line 256
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 261
    :cond_1
    const-string v7, "time"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    .line 265
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v5, v6}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->addKeyframes(Ljava/lang/String;I)V

    .line 270
    .end local v3           #i:I
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 271
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 266
    :cond_4
    const/4 v7, 0x3

    if-ne v2, v7, :cond_3

    const-string v7, "SourcesAnimation"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 274
    .end local v2           #eventType:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #value_time:I
    :cond_5
    return-void
.end method

.method public setAnimationListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->setAnimatorListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V

    .line 377
    :cond_0
    return-void
.end method

.method public startAnimations()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->startAnimations()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 352
    :cond_1
    return-void
.end method

.method public stopAnimations()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimationDrawableElement:Lcom/baidu/themeanimation/element/AnimatorDrawableElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/AnimatorDrawableElement;->stopAnimations()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/baidu/themeanimation/element/AnimatorParser;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 361
    :cond_1
    return-void
.end method
