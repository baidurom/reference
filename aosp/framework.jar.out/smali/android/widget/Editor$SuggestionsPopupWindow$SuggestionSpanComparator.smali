.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionSpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 2299
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2299
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I
    .locals 9
    .parameter "span1"
    .parameter "span2"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 2301
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    .line 2302
    .local v2, flag1:I
    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    .line 2303
    .local v3, flag2:I
    if-eq v2, v3, :cond_7

    .line 2305
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_2

    move v0, v7

    .line 2306
    .local v0, easy1:Z
    :goto_0
    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_3

    move v1, v7

    .line 2307
    .local v1, easy2:Z
    :goto_1
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_4

    move v4, v7

    .line 2308
    .local v4, misspelled1:Z
    :goto_2
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_0

    move v5, v7

    .line 2309
    .local v5, misspelled2:Z
    :cond_0
    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    .line 2315
    .end local v0           #easy1:Z
    .end local v1           #easy2:Z
    .end local v4           #misspelled1:Z
    .end local v5           #misspelled2:Z
    :cond_1
    :goto_3
    return v6

    :cond_2
    move v0, v5

    .line 2305
    goto :goto_0

    .restart local v0       #easy1:Z
    :cond_3
    move v1, v5

    .line 2306
    goto :goto_1

    .restart local v1       #easy2:Z
    :cond_4
    move v4, v5

    .line 2307
    goto :goto_2

    .line 2310
    .restart local v4       #misspelled1:Z
    .restart local v5       #misspelled2:Z
    :cond_5
    if-eqz v1, :cond_6

    if-nez v5, :cond_6

    move v6, v7

    goto :goto_3

    .line 2311
    :cond_6
    if-nez v4, :cond_1

    .line 2312
    if-eqz v5, :cond_7

    move v6, v7

    goto :goto_3

    .line 2315
    .end local v0           #easy1:Z
    .end local v1           #easy2:Z
    .end local v4           #misspelled1:Z
    .end local v5           #misspelled2:Z
    :cond_7
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #getter for: Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$1800(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    #getter for: Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$1800(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2299
    check-cast p1, Landroid/text/style/SuggestionSpan;

    .end local p1
    check-cast p2, Landroid/text/style/SuggestionSpan;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;->compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I

    move-result v0

    return v0
.end method
