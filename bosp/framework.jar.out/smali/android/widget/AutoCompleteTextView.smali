.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$1;,
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$Validator;,
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXPAND_MAX:I = 0x3

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private mThreshold:I

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 135
    const v0, #attr@autoCompleteTextViewStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 115
    iput v6, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 118
    iput-object v5, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 125
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 141
    new-instance v2, Landroid/widget/ListPopupWindow;

    const v3, #attr@autoCompleteTextViewStyle#t

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 143
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 144
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 146
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 153
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 156
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 163
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 168
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 171
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 175
    const v2, #layout@simple_dropdown_hint#t

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    .line 178
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v3, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v3, p0, v5}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v1

    .line 184
    .local v1, inputType:I
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v4, :cond_0

    .line 186
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    .line 187
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    invoke-virtual {p0, v4}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 194
    new-instance v2, Landroid/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    new-instance v2, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 197
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    return-void
.end method

.method static synthetic access$500(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/AutoCompleteTextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method private buildImeCompletions()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1093
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1094
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1095
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 1096
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_3

    .line 1097
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1098
    .local v2, count:I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 1099
    .local v1, completions:[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    .line 1101
    .local v8, realCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1102
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1103
    add-int/lit8 v8, v8, 0x1

    .line 1104
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 1105
    .local v7, item:Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1106
    .local v4, id:J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v7}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v4, v5, v3, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v1, v3

    .line 1101
    .end local v4           #id:J
    .end local v7           #item:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1110
    :cond_1
    if-eq v8, v2, :cond_2

    .line 1111
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    .line 1112
    .local v9, tmp:[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    move-object v1, v9

    .line 1116
    .end local v9           #tmp:[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1119
    .end local v1           #completions:[Landroid/view/inputmethod/CompletionInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v6           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v8           #realCount:I
    :cond_3
    return-void
.end method

.method private onClickImpl()V
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 8
    .parameter "selectedView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 846
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 848
    if-gez p2, :cond_1

    .line 849
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    .line 853
    .local v7, selectedItem:Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_2

    .line 854
    const-string v0, "AutoCompleteTextView"

    const-string/jumbo v1, "performCompletion: no selected item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v7           #selectedItem:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 851
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #selectedItem:Ljava/lang/Object;
    goto :goto_0

    .line 858
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 859
    invoke-virtual {p0, v7}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 862
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_4

    .line 863
    iget-object v6, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 865
    .local v6, list:Landroid/widget/ListPopupWindow;
    const-string v0, "AutoCompleteTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",selectedView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    if-nez p1, :cond_6

    .line 869
    if-gez p2, :cond_5

    .line 870
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 871
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 872
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 873
    const-string v0, "AutoCompleteTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List selectedView is null, change position to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 887
    .end local v6           #list:Landroid/widget/ListPopupWindow;
    .end local v7           #selectedItem:Ljava/lang/Object;
    :cond_4
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto/16 :goto_1

    .line 876
    .restart local v6       #list:Landroid/widget/ListPopupWindow;
    .restart local v7       #selectedItem:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    goto :goto_2

    .line 878
    :cond_6
    if-gez p2, :cond_3

    .line 879
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 880
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 881
    const-string v0, "AutoCompleteTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change position to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateDropDownForFilter(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 941
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 951
    .local v0, dropDownAlwaysVisible:Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    .line 952
    .local v1, enoughToFilter:Z
    if-gtz p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 953
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v2, :cond_0

    .line 954
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 956
    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 961
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 789
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "selectedItem"

    .prologue
    .line 780
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 2

    .prologue
    .line 1012
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1013
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1014
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1016
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1017
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 1018
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    .prologue
    .line 732
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 747
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 748
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 753
    :cond_3
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 754
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 756
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method doBeforeTextChanged()V
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 703
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1047
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1049
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1050
    return-void

    .line 1047
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getInputMethodMode()I

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

.method public isPerformingCompletion()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 999
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1000
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .parameter "completion"

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    .line 843
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1245
    invoke-super {p0, p1}, Landroid/widget/EditText;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1246
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1247
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1004
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1005
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1006
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 975
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 976
    packed-switch p1, :pswitch_data_0

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 978
    :pswitch_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 976
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 936
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 937
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 987
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 989
    if-nez p1, :cond_0

    .line 990
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    .line 992
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 993
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 995
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 666
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 670
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 671
    packed-switch p1, :pswitch_data_0

    .line 679
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    :cond_3
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 684
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 685
    .local v0, handled:Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 687
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    goto :goto_0

    .line 673
    .end local v0           #handled:Z
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 674
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    goto :goto_1

    .line 671
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 614
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v2

    if-nez v2, :cond_3

    .line 618
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 619
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 620
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 635
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v1

    .line 624
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 625
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 626
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 627
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 629
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 630
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 635
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 640
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 641
    .local v0, consumed:Z
    if-eqz v0, :cond_0

    .line 642
    sparse-switch p1, :sswitch_data_0

    .line 656
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 661
    :cond_1
    :goto_0
    return v1

    .line 649
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    goto :goto_0

    .line 661
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 642
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 967
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 968
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 971
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    .prologue
    .line 835
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 836
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 826
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 827
    return-void
.end method

.method public performValidation()V
    .locals 2

    .prologue
    .line 1152
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v1, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1156
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 926
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    .line 928
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 931
    .local v0, spannable:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 932
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_1

    .line 596
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    .line 600
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 601
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 604
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 609
    :goto_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 610
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 606
    :cond_2
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_1
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "hint"

    .prologue
    const/4 v3, 0x0

    .line 226
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 227
    if-eqz p1, :cond_1

    .line 228
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, #id@text1#t

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    .local v0, hintView:Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 233
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 241
    .end local v0           #hintView:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 239
    iput-object v3, p0, Landroid/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 1
    .parameter "dropDownAlwaysVisible"

    .prologue
    .line 442
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    .line 443
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 318
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 319
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 320
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .parameter "animationStyle"

    .prologue
    .line 404
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 405
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 341
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 352
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 353
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .parameter "dropDownDismissedOnCompletion"

    .prologue
    .line 463
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 464
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 294
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 295
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 379
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 380
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 361
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 362
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 267
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 1
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    .line 1089
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    .line 1090
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1022
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1024
    .local v0, result:Z
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1025
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1028
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 797
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 798
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 202
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #setter for: Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->access$302(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 203
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 507
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 508
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 517
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 518
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 909
    if-eqz p2, :cond_0

    .line 910
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 916
    :goto_0
    return-void

    .line 912
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 913
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 493
    if-gtz p1, :cond_0

    .line 494
    const/4 p1, 0x1

    .line 497
    :cond_0
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 498
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 1130
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1131
    return-void
.end method

.method public showDropDown()V
    .locals 3

    .prologue
    .line 1063
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->buildImeCompletions()V

    .line 1065
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1066
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1067
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1072
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1074
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1075
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setListItemExpandMax(I)V

    .line 1077
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1078
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 1079
    return-void

    .line 1069
    :cond_2
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->postShow()V

    .line 1038
    return-void
.end method
