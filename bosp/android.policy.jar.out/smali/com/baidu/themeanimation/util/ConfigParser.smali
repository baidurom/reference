.class public Lcom/baidu/themeanimation/util/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# static fields
.field private static mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v0

    sput-object v0, Lcom/baidu/themeanimation/util/ConfigParser;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/themeanimation/util/ConfigParser;->addValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    return-void
.end method

.method private static addValue(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "addQuote"

    .prologue
    .line 178
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 179
    if-eqz p2, :cond_1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    :cond_1
    sget-object v0, Lcom/baidu/themeanimation/util/ConfigParser;->mEvaluator:Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->putVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2
    return-void
.end method

.method private static getChoiceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "parser"
    .parameter "target"

    .prologue
    .line 118
    const/4 v6, 0x0

    .line 120
    .local v6, result:Ljava/lang/String;
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 121
    .local v3, eventType:I
    :goto_0
    const/4 v9, 0x1

    if-eq v3, v9, :cond_5

    .line 122
    const/4 v9, 0x2

    if-ne v3, v9, :cond_4

    .line 123
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, name:Ljava/lang/String;
    const-string v9, "Item"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 125
    const/4 v7, 0x0

    .line 126
    .local v7, text:Ljava/lang/String;
    const/4 v8, 0x0

    .line 127
    .local v8, value:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 128
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, attrValue:Ljava/lang/String;
    const-string v9, "text"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 131
    move-object v7, v1

    .line 133
    :cond_0
    const-string v9, "value"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 134
    move-object v8, v1

    .line 127
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 137
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 138
    move-object v6, v8

    .line 147
    .end local v4           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 141
    :cond_4
    const/4 v9, 0x3

    if-ne v3, v9, :cond_3

    .line 142
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 143
    .restart local v5       #name:Ljava/lang/String;
    const-string v9, "StringChoice"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_3

    .line 152
    .end local v3           #eventType:I
    .end local v5           #name:Ljava/lang/String;
    :cond_5
    :goto_2
    return-object v6

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static parse(Ljava/io/InputStream;)V
    .locals 7
    .parameter "configStream"

    .prologue
    const/4 v6, 0x1

    .line 17
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 18
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 19
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 20
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 21
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 22
    .local v1, eventType:I
    :goto_0
    if-eq v1, v6, :cond_2

    .line 23
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 24
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, name:Ljava/lang/String;
    const-string v5, "CheckBox"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 26
    invoke-static {v4}, Lcom/baidu/themeanimation/util/ConfigParser;->parseCheckbox(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 37
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 27
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    const-string v5, "StringInput"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 28
    invoke-static {v4}, Lcom/baidu/themeanimation/util/ConfigParser;->parseStringInput(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 39
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void

    .line 29
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_1
    const-string v5, "NumberInput"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 30
    invoke-static {v4}, Lcom/baidu/themeanimation/util/ConfigParser;->parseNumberInput(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 31
    :cond_4
    const-string v5, "StringChoice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 32
    invoke-static {v4}, Lcom/baidu/themeanimation/util/ConfigParser;->parseStringChoice(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 33
    :cond_5
    const-string v5, "AppPicker"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    invoke-static {v4}, Lcom/baidu/themeanimation/util/ConfigParser;->parseAppPicker(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static parseAppPicker(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .parameter "parser"

    .prologue
    .line 156
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppPicker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 159
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 160
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, attrValue:Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    move-object v3, v1

    .line 165
    :cond_0
    const-string v5, "text"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    move-object v4, v1

    .line 159
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lcom/baidu/themeanimation/util/ConfigParser;->addValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static parseCheckbox(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .parameter "parser"

    .prologue
    .line 45
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CheckBox"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 48
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 49
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, attrValue:Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    move-object v3, v1

    .line 54
    :cond_0
    const-string v5, "default"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    move-object v4, v1

    .line 48
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_2
    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/ConfigParser;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static parseNumberInput(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .parameter "parser"

    .prologue
    .line 81
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NumberInput"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 84
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 85
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, attrValue:Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    move-object v3, v1

    .line 90
    :cond_0
    const-string v5, "default"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    move-object v4, v1

    .line 84
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_2
    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/ConfigParser;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static parseStringChoice(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    .line 99
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "StringChoice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 102
    .local v4, text:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 103
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, attrValue:Ljava/lang/String;
    const-string v6, "id"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    move-object v3, v1

    .line 108
    :cond_0
    const-string v6, "default"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    move-object v4, v1

    .line 102
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_2
    invoke-static {p0, v4}, Lcom/baidu/themeanimation/util/ConfigParser;->getChoiceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, value:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/baidu/themeanimation/util/ConfigParser;->addValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static parseStringInput(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .parameter "parser"

    .prologue
    .line 63
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StringInput"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 66
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 67
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, attrValue:Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    move-object v3, v1

    .line 72
    :cond_0
    const-string v5, "default"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    move-object v4, v1

    .line 66
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/baidu/themeanimation/util/ConfigParser;->addValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    .end local v2           #i:I
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method
