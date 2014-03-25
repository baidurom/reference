.class public abstract Lcom/baidu/ifttt/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final CURRENT_PATH:Ljava/lang/String; = "."

.field private static final EXTENSION_SEPARATOR:C = '.'

.field private static final FOLDER_SEPARATOR:Ljava/lang/String; = "/"

.field private static final TOP_PATH:Ljava/lang/String; = ".."

.field private static final WINDOWS_FOLDER_SEPARATOR:Ljava/lang/String; = "\\"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"
    .parameter "relativePath"

    .prologue
    .line 561
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 562
    .local v1, separatorIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 563
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, newPath:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 570
    .end local v0           #newPath:Ljava/lang/String;
    .end local p1
    :cond_1
    return-object p1
.end method

.method public static build(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "source"
    .parameter "arg"
    .parameter "value"

    .prologue
    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, argName:Ljava/lang/String;
    const/4 v1, -0x1

    .line 807
    .local v1, index:I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 808
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v1, v2, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 810
    :cond_0
    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 480
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/ifttt/util/StringUtils;->changeFirstCharacterCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static changeFirstCharacterCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "capitalize"

    .prologue
    const/4 v2, 0x0

    .line 495
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 506
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 498
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 499
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 500
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static commaDelimitedListToSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 794
    .local v3, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->commaDelimitedListToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 795
    .local v5, tokens:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 796
    .local v4, token:Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 795
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    .end local v4           #token:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public static commaDelimitedListToStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 783
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/baidu/ifttt/util/StringUtils;->delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v2

    .line 154
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 155
    .local v1, strLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 156
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const/4 v2, 0x1

    goto :goto_0

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static containsWhitespace(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 171
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->containsWhitespace(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static countOccurrencesOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "str"
    .parameter "sub"

    .prologue
    .line 355
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 356
    :cond_0
    const/4 v0, 0x0

    .line 365
    :cond_1
    return v0

    .line 358
    :cond_2
    const/4 v0, 0x0

    .line 359
    .local v0, count:I
    const/4 v2, 0x0

    .line 361
    .local v2, pos:I
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, idx:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 362
    add-int/lit8 v0, v0, 0x1

    .line 363
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v1, v3

    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "inString"
    .parameter "pattern"

    .prologue
    .line 403
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/baidu/ifttt/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAny(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inString"
    .parameter "charsToDelete"

    .prologue
    .line 414
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 424
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 417
    .restart local p0
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 419
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 420
    .local v0, c:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 421
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 418
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 424
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "delimiter"

    .prologue
    .line 733
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/baidu/ifttt/util/StringUtils;->delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static delimitedListToStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "str"
    .parameter "delimiter"
    .parameter "charsToDelete"

    .prologue
    const/4 v5, 0x0

    .line 750
    if-nez p0, :cond_0

    .line 751
    new-array v4, v5, [Ljava/lang/String;

    .line 774
    :goto_0
    return-object v4

    .line 753
    :cond_0
    if-nez p1, :cond_1

    .line 754
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v5

    goto :goto_0

    .line 756
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 758
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 759
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/baidu/ifttt/util/StringUtils;->deleteAny(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 763
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    .line 765
    .local v2, pos:I
    :goto_2
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .local v0, delPos:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 766
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/baidu/ifttt/util/StringUtils;->deleteAny(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v0, v4

    goto :goto_2

    .line 769
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_4

    .line 771
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/baidu/ifttt/util/StringUtils;->deleteAny(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    .end local v0           #delPos:I
    .end local v2           #pos:I
    :cond_4
    invoke-static {v3}, Lcom/baidu/ifttt/util/StringUtils;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "str"
    .parameter "suffix"

    .prologue
    const/4 v2, 0x0

    .line 317
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v2

    .line 320
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    const/4 v2, 0x1

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, lcStr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, lcSuffix:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 516
    if-nez p0, :cond_1

    .line 517
    const/4 p0, 0x0

    .line 520
    .end local p0
    .local v0, separatorIndex:I
    :cond_0
    :goto_0
    return-object p0

    .line 519
    .end local v0           #separatorIndex:I
    .restart local p0
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 520
    .restart local v0       #separatorIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 530
    if-nez p0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-object v1

    .line 533
    :cond_1
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 534
    .local v0, sepIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasLength(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 87
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasLength(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static hasText(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v2

    .line 121
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 122
    .local v1, strLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 123
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 124
    const/4 v2, 0x1

    goto :goto_0

    .line 122
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static hasText(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 140
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasText(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .parameter "localeString"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 583
    const-string v5, "_ "

    invoke-static {p0, v5, v6, v6}, Lcom/baidu/ifttt/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, parts:[Ljava/lang/String;
    array-length v5, v3

    if-lez v5, :cond_1

    aget-object v2, v3, v6

    .line 585
    .local v2, language:Ljava/lang/String;
    :goto_0
    array-length v5, v3

    if-le v5, v7, :cond_2

    aget-object v0, v3, v7

    .line 586
    .local v0, country:Ljava/lang/String;
    :goto_1
    const-string v4, ""

    .line 587
    .local v4, variant:Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 590
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v5, v6

    .line 592
    .local v1, endIndexOfCountryCode:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/ifttt/util/StringUtils;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 593
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 594
    const/16 v5, 0x5f

    invoke-static {v4, v5}, Lcom/baidu/ifttt/util/StringUtils;->trimLeadingCharacter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 597
    .end local v1           #endIndexOfCountryCode:I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v2, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v5

    .line 584
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #language:Ljava/lang/String;
    .end local v4           #variant:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 585
    .restart local v2       #language:Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 597
    .restart local v0       #country:Ljava/lang/String;
    .restart local v4       #variant:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 439
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static quoteIfString(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 450
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inString"
    .parameter "oldPattern"
    .parameter "newPattern"

    .prologue
    .line 377
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 393
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 380
    .restart local p0
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 382
    .local v2, pos:I
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 384
    .local v0, index:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 385
    .local v1, patLen:I
    :goto_1
    if-ltz v0, :cond_2

    .line 386
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    add-int v2, v0, v1

    .line 389
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 391
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "toSplit"
    .parameter "delimiter"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 651
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-object v3

    .line 654
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 655
    .local v2, offset:I
    if-ltz v2, :cond_0

    .line 658
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, beforeDelimiter:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, afterDelimiter:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    goto :goto_0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "str"
    .parameter "prefix"

    .prologue
    const/4 v2, 0x0

    .line 295
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v2

    .line 298
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    const/4 v2, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, lcStr:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, lcPrefix:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static stripFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 545
    if-nez p0, :cond_1

    .line 546
    const/4 p0, 0x0

    .line 549
    .end local p0
    .local v0, sepIndex:I
    :cond_0
    :goto_0
    return-object p0

    .line 548
    .end local v0           #sepIndex:I
    .restart local p0
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 549
    .restart local v0       #sepIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substringMatch(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Z
    .locals 4
    .parameter "str"
    .parameter "index"
    .parameter "substring"

    .prologue
    .line 340
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 341
    add-int v0, p1, v1

    .line 342
    .local v0, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 343
    :cond_0
    const/4 v2, 0x0

    .line 346
    .end local v0           #i:I
    :goto_1
    return v2

    .line 340
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v0           #i:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/ifttt/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static toStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 619
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 620
    const/4 v0, 0x0

    .line 622
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static toStringArray(Ljava/util/Enumeration;)[Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 634
    const/4 v1, 0x0

    .line 637
    :goto_0
    return-object v1

    .line 636
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 637
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "str"
    .parameter "delimiters"

    .prologue
    const/4 v0, 0x1

    .line 679
    invoke-static {p0, p1, v0, v0}, Lcom/baidu/ifttt/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 4
    .parameter "str"
    .parameter "delimiters"
    .parameter "trimTokens"
    .parameter "ignoreEmptyTokens"

    .prologue
    .line 704
    if-nez p0, :cond_0

    .line 705
    const/4 v3, 0x0

    .line 718
    :goto_0
    return-object v3

    .line 707
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .local v0, st:Ljava/util/StringTokenizer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v2, tokens:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 710
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, token:Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 712
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 714
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 715
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 718
    .end local v1           #token:Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Lcom/baidu/ifttt/util/StringUtils;->toStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static trimAllWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 202
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    .end local p0
    :goto_0
    return-object p0

    .line 205
    .restart local p0
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 207
    .local v0, index:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimLeadingCharacter(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "leadingCharacter"

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    .end local p0
    :goto_0
    return-object p0

    .line 262
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    .end local p0
    :goto_0
    return-object p0

    .line 228
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimTrailingCharacter(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .parameter "str"
    .parameter "trailingCharacter"

    .prologue
    .line 276
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    .end local p0
    :goto_0
    return-object p0

    .line 279
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 283
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 242
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    .end local p0
    :goto_0
    return-object p0

    .line 245
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static trimWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-static {p0}, Lcom/baidu/ifttt/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    .end local p0
    :goto_0
    return-object p0

    .line 184
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, sb:Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 188
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 191
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/ifttt/util/StringUtils;->changeFirstCharacterCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unqualify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "qualifiedName"

    .prologue
    .line 459
    const/16 v0, 0x2e

    invoke-static {p0, v0}, Lcom/baidu/ifttt/util/StringUtils;->unqualify(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unqualify(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .parameter "qualifiedName"
    .parameter "separator"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
