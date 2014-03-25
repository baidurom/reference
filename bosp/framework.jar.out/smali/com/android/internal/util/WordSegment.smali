.class public Lcom/android/internal/util/WordSegment;
.super Ljava/lang/Object;
.source "WordSegment.java"


# static fields
.field private static final DBG:Z = false

.field private static final SEPARATOR:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "WordSegment"

.field private static final WINDOW_WIDTH:I = 0x32


# instance fields
.field private mOffsetShift:I

.field private mOneOffset:Z

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "[\u3002\uff0c\uff1b\uff01\uff1f\\s\\r]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/WordSegment;->SEPARATOR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private checkOffsetIsValid(I)V
    .locals 4
    .parameter "shiftedOffset"

    .prologue
    .line 151
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/WordSegment;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Valid range is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/WordSegment;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    return-void
.end method

.method private followingSeparator(Ljava/lang/String;I)I
    .locals 3
    .parameter "src"
    .parameter "offset"

    .prologue
    .line 138
    move v0, p2

    .line 140
    .local v0, right:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 141
    sub-int v1, v0, p2

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 146
    :cond_0
    return v0

    .line 143
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/util/WordSegment;->isSeparator(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isSeparator(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    new-instance v1, Ljava/lang/String;

    new-array v4, v2, [C

    aput-char p1, v4, v3

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([C)V

    .line 120
    .local v1, s:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/util/WordSegment;->SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 121
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private precedingSeparator(Ljava/lang/String;I)I
    .locals 3
    .parameter "src"
    .parameter "offset"

    .prologue
    .line 126
    add-int/lit8 v0, p2, -0x1

    .line 128
    .local v0, left:I
    :goto_0
    if-ltz v0, :cond_0

    .line 129
    sub-int v1, p2, v0

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 131
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/util/WordSegment;->isSeparator(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public caculateWordSegment(I)[I
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iget v2, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    sub-int v1, p1, v2

    .line 101
    .local v1, shiftedOffset:I
    invoke-direct {p0, v1}, Lcom/android/internal/util/WordSegment;->checkOffsetIsValid(I)V

    .line 102
    iget-object v2, p0, Lcom/android/internal/util/WordSegment;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 104
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 105
    .local v0, result:[I
    iget-object v2, p0, Lcom/android/internal/util/WordSegment;->mString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/WordSegment;->mString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/baidu/wordsegservice/WordSegHelper;->wordSegmentForWord(Ljava/lang/String;II)[I

    move-result-object v0

    .line 106
    aget v2, v0, v4

    if-eq v2, v6, :cond_1

    aget v2, v0, v5

    if-ne v2, v6, :cond_2

    .line 107
    :cond_1
    aput p1, v0, v4

    .line 108
    aput p1, v0, v5

    .line 115
    :goto_0
    return-object v0

    .line 110
    :cond_2
    aget v2, v0, v4

    iget v3, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    add-int/2addr v2, v3

    aput v2, v0, v4

    .line 111
    aget v2, v0, v5

    iget v3, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    add-int/2addr v2, v3

    aput v2, v0, v5

    goto :goto_0
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)Z
    .locals 6
    .parameter "charSequence"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    if-eq p2, p3, :cond_1

    .line 91
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 64
    .restart local p1
    :cond_1
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-gt p2, v5, :cond_0

    .line 65
    iput-boolean v4, p0, Lcom/android/internal/util/WordSegment;->mOneOffset:Z

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, src:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 71
    .local v1, srclen:I
    if-ne p2, v1, :cond_2

    .line 72
    move v2, v1

    .line 73
    .local v2, windowEnd:I
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/WordSegment;->precedingSeparator(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    .line 83
    :goto_1
    instance-of v5, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_4

    .line 84
    check-cast p1, Landroid/text/SpannableStringBuilder;

    .end local p1
    iget v5, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    invoke-virtual {p1, v5, v2}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/WordSegment;->mString:Ljava/lang/String;

    .line 89
    :goto_2
    iget-object v5, p0, Lcom/android/internal/util/WordSegment;->mString:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/util/WordSegment;->mString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 91
    goto :goto_0

    .line 76
    .end local v2           #windowEnd:I
    .restart local p1
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/util/WordSegment;->isSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p2, :cond_0

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/util/WordSegment;->isSeparator(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 78
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/WordSegment;->precedingSeparator(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    .line 79
    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/WordSegment;->followingSeparator(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2       #windowEnd:I
    goto :goto_1

    .line 86
    :cond_4
    iget v5, p0, Lcom/android/internal/util/WordSegment;->mOffsetShift:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/WordSegment;->mString:Ljava/lang/String;

    goto :goto_2
.end method
