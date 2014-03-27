.class public Lcom/baidu/internal/contacts/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/contacts/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# static fields
.field public static final TYPE_LETTER:I = 0x3

.field public static final TYPE_NUMBER:I = 0x4

.field public static final TYPE_PINYIN:I = 0x2

.field public static final TYPE_SYMBOL:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field public index:I

.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public targetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "source"

    .prologue
    .line 836
    invoke-direct {p0, p1, p2, p2}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "source"
    .parameter "targets"

    .prologue
    .line 839
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 840
    iput p1, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->type:I

    .line 841
    iput-object p2, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 842
    iput-object p3, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 843
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->targetList:Ljava/util/List;

    .line 844
    if-nez p3, :cond_0

    .line 845
    const-string p3, ""

    .line 849
    :cond_0
    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 850
    :cond_1
    iget-object v5, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->targetList:Ljava/util/List;

    invoke-interface {v5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->reset()V

    .line 858
    return-void

    .line 852
    :cond_3
    const-string v5, " "

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 853
    .local v4, pys:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 854
    .local v3, py:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->targetList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isSearchable()Z
    .locals 1

    .prologue
    .line 886
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->isSearchable(Z)Z

    move-result v0

    return v0
.end method

.method public isSearchable(Z)Z
    .locals 3
    .parameter "strict"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 892
    if-eqz p1, :cond_2

    .line 893
    iget v2, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->type:I

    if-eq v2, v0, :cond_1

    iget v2, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->type:I

    if-eqz v2, :cond_1

    .line 895
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 893
    goto :goto_0

    .line 895
    :cond_2
    iget v2, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->type:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public nextPinyin()Z
    .locals 2

    .prologue
    .line 876
    iget v0, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->index:I

    iget-object v1, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->targetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 877
    iget v0, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->index:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->setIndex(I)V

    .line 881
    :goto_0
    iget v0, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->index:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->reset()V

    goto :goto_0

    .line 881
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->setIndex(I)V

    .line 863
    return-void
.end method

.method public setIndex(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->targetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 868
    iput p1, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->index:I

    .line 869
    iget-object v0, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->targetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 871
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->targetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 903
    .local v1, pinyin:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 905
    .end local v1           #pinyin:Ljava/lang/String;
    :cond_0
    const-string v3, "Token(type: %d, source: %s, target: %s, pinyins: %s)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->source:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/baidu/internal/contacts/HanziToPinyin$Token;->target:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
