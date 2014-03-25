.class public Lcom/baidu/themeanimation/util/XmlParserHelper;
.super Ljava/lang/Object;
.source "XmlParserHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XmlParserHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static replaceConsts(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 84
    if-eqz p0, :cond_0

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->DESIGH_SCREEN_WIDTH:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/baidu/themeanimation/util/VariableConstants;->getGlobalVariableTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->DESIGN_SCREEN_HEIGHT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .end local v0           #result:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;)V
    .locals 1
    .parameter "parser"
    .parameter "receiver"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/themeanimation/util/XmlParserHelper;->setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;I)V

    .line 21
    return-void
.end method

.method public static setElementAttr(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;I)V
    .locals 17
    .parameter "parser"
    .parameter "receiver"
    .parameter "type"

    .prologue
    .line 27
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    if-ge v9, v13, :cond_7

    .line 28
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, attrName:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, attrValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 27
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v2}, Lcom/baidu/themeanimation/util/XmlParserHelper;->replaceConsts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    const/16 v13, 0x23

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/16 v14, 0x40

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/2addr v13, v14

    const/4 v14, -0x2

    if-le v13, v14, :cond_5

    const-string v13, "color"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v8, 0x1

    .line 39
    .local v8, hasVariable:Z
    :goto_2
    const-string v13, "name"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 40
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v2, v0}, Lcom/baidu/themeanimation/manager/ExpressionManager;->monitorElement(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    :cond_2
    :try_start_0
    invoke-static {v1}, Lcom/baidu/themeanimation/util/Utils;->getMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45
    .local v11, methodName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v13, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    .line 46
    .local v10, method:Ljava/lang/reflect/Method;
    if-nez v8, :cond_6

    .line 48
    :try_start_1
    const-string v13, "+"

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string v14, "("

    invoke-virtual {v2, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v13, v14

    if-ltz v13, :cond_3

    .line 49
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    .line 55
    :cond_3
    :goto_3
    const/4 v13, 0x1

    :try_start_2
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v4

    .line 58
    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    invoke-static {v2}, Lcom/baidu/themeanimation/util/Utils;->getStringType(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 59
    invoke-static {}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->getInstance()Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/baidu/themeanimation/net/sourceforge/jeval/Evaluator;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_4
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v13, "#"

    invoke-direct {v3, v13}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 62
    .local v3, decimalFormat:Ljava/text/DecimalFormat;
    sget-object v13, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v3, v13}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 63
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v3, v13, v14}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    .line 64
    .local v12, realValue:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 65
    .end local v3           #decimalFormat:Ljava/text/DecimalFormat;
    .end local v12           #realValue:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 67
    .local v5, e2:Ljava/lang/Exception;
    const/4 v13, 0x1

    :try_start_4
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "0"

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 68
    :catch_2
    move-exception v6

    .line 69
    .local v6, e3:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 77
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #e2:Ljava/lang/Exception;
    .end local v6           #e3:Ljava/lang/Exception;
    .end local v10           #method:Ljava/lang/reflect/Method;
    .end local v11           #methodName:Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 78
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v13, "unsupported"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "attrName = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", element = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 36
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #hasVariable:Z
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 51
    .restart local v8       #hasVariable:Z
    .restart local v10       #method:Ljava/lang/reflect/Method;
    .restart local v11       #methodName:Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 52
    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 74
    .end local v4           #e:Ljava/lang/Exception;
    :cond_6
    new-instance v7, Lcom/baidu/themeanimation/manager/Expression;

    move-object/from16 v0, p1

    invoke-direct {v7, v2, v0, v10}, Lcom/baidu/themeanimation/manager/Expression;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 75
    .local v7, expression:Lcom/baidu/themeanimation/manager/Expression;
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/baidu/themeanimation/manager/ExpressionManager;->addExpression(Lcom/baidu/themeanimation/manager/Expression;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 81
    .end local v1           #attrName:Ljava/lang/String;
    .end local v2           #attrValue:Ljava/lang/String;
    .end local v7           #expression:Lcom/baidu/themeanimation/manager/Expression;
    .end local v8           #hasVariable:Z
    .end local v10           #method:Ljava/lang/reflect/Method;
    .end local v11           #methodName:Ljava/lang/String;
    :cond_7
    return-void
.end method
