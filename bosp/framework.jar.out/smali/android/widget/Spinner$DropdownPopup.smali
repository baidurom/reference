.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleRes"

    .prologue
    const/4 v1, 0x0

    .line 912
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 913
    invoke-direct {p0, p2, p3, v1, p4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 915
    invoke-virtual {p0, p1}, Landroid/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    .line 916
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setModal(Z)V

    .line 917
    invoke-virtual {p0, v1}, Landroid/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    .line 918
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 927
    return-void
.end method

.method static synthetic access$100(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 908
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 931
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 932
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 933
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hintText"

    .prologue
    .line 941
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 942
    return-void
.end method

.method public show()V
    .locals 12

    .prologue
    .line 946
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 947
    .local v0, background:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 948
    .local v3, hOffset:I
    if-eqz v0, :cond_3

    .line 949
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 950
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v3, v9, Landroid/graphics/Rect;->right:I

    .line 955
    :goto_0
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v5

    .line 956
    .local v5, spinnerPaddingLeft:I
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v6

    .line 957
    .local v6, spinnerPaddingRight:I
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getWidth()I

    move-result v7

    .line 958
    .local v7, spinnerWidth:I
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v9, v9, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_4

    .line 959
    iget-object v10, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v9, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 961
    .local v1, contentWidth:I
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v9}, Landroid/widget/Spinner;->access$300(Landroid/widget/Spinner;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v2, v9, v10

    .line 963
    .local v2, contentWidthLimit:I
    if-le v1, v2, :cond_0

    .line 964
    move v1, v2

    .line 966
    :cond_0
    sub-int v9, v7, v5

    sub-int/2addr v9, v6

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    .line 974
    .end local v1           #contentWidth:I
    .end local v2           #contentWidthLimit:I
    :goto_1
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 975
    sub-int v9, v7, v6

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v3, v9

    .line 979
    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 980
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    .line 981
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 982
    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 983
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setSelection(I)V

    .line 988
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    .line 989
    .local v8, vto:Landroid/view/ViewTreeObserver;
    if-eqz v8, :cond_1

    .line 990
    new-instance v4, Landroid/widget/Spinner$DropdownPopup$2;

    invoke-direct {v4, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    .line 998
    .local v4, layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v8, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 999
    new-instance v9, Landroid/widget/Spinner$DropdownPopup$3;

    invoke-direct {v9, p0, v4}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1008
    .end local v4           #layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_1
    return-void

    .line 950
    .end local v5           #spinnerPaddingLeft:I
    .end local v6           #spinnerPaddingRight:I
    .end local v7           #spinnerWidth:I
    .end local v8           #vto:Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    neg-int v3, v9

    goto/16 :goto_0

    .line 952
    :cond_3
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v10}, Landroid/widget/Spinner;->access$200(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v10

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/Rect;->right:I

    iput v11, v9, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 968
    .restart local v5       #spinnerPaddingLeft:I
    .restart local v6       #spinnerPaddingRight:I
    .restart local v7       #spinnerWidth:I
    :cond_4
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v9, v9, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    .line 969
    sub-int v9, v7, v5

    sub-int/2addr v9, v6

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 971
    :cond_5
    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v9, v9, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v9}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    .line 977
    :cond_6
    add-int/2addr v3, v5

    goto :goto_2
.end method
