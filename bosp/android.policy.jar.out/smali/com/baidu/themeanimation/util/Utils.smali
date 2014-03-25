.class public Lcom/baidu/themeanimation/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final STRING_DOUBLE:I = 0x2

.field public static final STRING_INT:I = 0x1

.field public static final STRING_NONE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 55
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMethodName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "setError"

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringType(Ljava/lang/String;)I
    .locals 7
    .parameter "str"

    .prologue
    const/16 v6, 0x3a

    const/16 v5, 0x2f

    const/4 v3, -0x1

    .line 12
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 32
    :cond_1
    :goto_0
    return v2

    .line 15
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 16
    .local v0, chr:I
    const/4 v2, 0x1

    .line 18
    .local v2, result:I
    if-le v0, v5, :cond_3

    if-lt v0, v6, :cond_4

    :cond_3
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_4

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_4

    move v2, v3

    .line 19
    goto :goto_0

    .line 22
    :cond_4
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 24
    if-le v0, v5, :cond_5

    if-ge v0, v6, :cond_5

    .line 22
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26
    :cond_5
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_6

    .line 27
    const/4 v2, 0x2

    goto :goto_2

    :cond_6
    move v2, v3

    .line 29
    goto :goto_0
.end method

.method public static isDouble(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/baidu/themeanimation/util/Utils;->getStringType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInt(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-static {p0}, Lcom/baidu/themeanimation/util/Utils;->getStringType(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 44
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 47
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    .local v0, length:I
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
