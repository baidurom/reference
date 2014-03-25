.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 107
    iput v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 123
    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 133
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 187
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 189
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 190
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 192
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, #attr@alertDialogStyle#t

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 196
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xa

    const v2, #layout@alert_dialog#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 198
    const/16 v1, 0xb

    const v2, #layout@select_dialog#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 201
    const/16 v1, 0xc

    const v2, #layout@select_dialog_multichoice#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 204
    const/16 v1, 0xd

    const v2, #layout@select_dialog_singlechoice#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 207
    const/16 v1, 0xe

    const v2, #layout@select_dialog_item#t

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 211
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/internal/app/AlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/internal/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/AlertController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    :goto_0
    return v2

    .line 219
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 220
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 223
    check-cast v1, Landroid/view/ViewGroup;

    .line 224
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 225
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 226
    add-int/lit8 v0, v0, -0x1

    .line 227
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 228
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 233
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 610
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 611
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 612
    const/high16 v3, 0x3f00

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 613
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, #id@leftSpacer#t

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 615
    .local v0, leftSpacer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 618
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, #id@rightSpacer#t

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 619
    .local v2, rightSpacer:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 620
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 622
    :cond_1
    return-void
.end method

.method private correctCustomPanelBackground(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V
    .locals 4
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "hasTitle"

    .prologue
    .line 776
    const v1, #layout@yi_alert_dialog_baidu_light#t

    .line 777
    .local v1, layoutId:I
    if-eqz p2, :cond_0

    iget v2, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 779
    const v0, #drawable@yi_dialog_middle_custom_baidu_light#t

    .line 780
    .local v0, customBackgroundId:I
    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 784
    .end local v0           #customBackgroundId:I
    :cond_0
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 24
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 629
    const/16 v21, 0x0

    const v22, #drawable@popup_full_dark#t

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 631
    .local v11, fullDark:I
    const/16 v21, 0x1

    const v22, #drawable@popup_top_dark#t

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 633
    .local v18, topDark:I
    const/16 v21, 0x2

    const v22, #drawable@popup_center_dark#t

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 635
    .local v9, centerDark:I
    const/16 v21, 0x3

    const v22, #drawable@popup_bottom_dark#t

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 637
    .local v6, bottomDark:I
    const/16 v21, 0x4

    const v22, #drawable@popup_full_bright#t

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 639
    .local v10, fullBright:I
    const/16 v21, 0x5

    const v22, #drawable@popup_top_bright#t

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 641
    .local v17, topBright:I
    const/16 v21, 0x6

    const v22, #drawable@popup_center_bright#t

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 643
    .local v8, centerBright:I
    const/16 v21, 0x7

    const v22, #drawable@popup_bottom_bright#t

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 645
    .local v5, bottomBright:I
    const/16 v21, 0x8

    const v22, #drawable@popup_bottom_medium#t

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 657
    .local v7, bottomMedium:I
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v20, v0

    .line 658
    .local v20, views:[Landroid/view/View;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v14, v0, [Z

    .line 659
    .local v14, light:[Z
    const/4 v13, 0x0

    .line 660
    .local v13, lastView:Landroid/view/View;
    const/4 v12, 0x0

    .line 662
    .local v12, lastLight:Z
    const/4 v15, 0x0

    .line 663
    .local v15, pos:I
    if-eqz p6, :cond_0

    .line 664
    aput-object p1, v20, v15

    .line 665
    const/16 v21, 0x0

    aput-boolean v21, v14, v15

    .line 666
    add-int/lit8 v15, v15, 0x1

    .line 674
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v21, 0x0

    :goto_0
    aput-object v21, v20, v15

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    :goto_1
    aput-boolean v21, v14, v15

    .line 677
    add-int/lit8 v15, v15, 0x1

    .line 678
    if-eqz p3, :cond_1

    .line 679
    aput-object p3, v20, v15

    .line 680
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    move/from16 v21, v0

    aput-boolean v21, v14, v15

    .line 681
    add-int/lit8 v15, v15, 0x1

    .line 683
    :cond_1
    if-eqz p4, :cond_2

    .line 684
    aput-object p7, v20, v15

    .line 685
    const/16 v21, 0x1

    aput-boolean v21, v14, v15

    .line 688
    :cond_2
    const/16 v16, 0x0

    .line 689
    .local v16, setView:Z
    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_a

    .line 690
    aget-object v19, v20, v15

    .line 691
    .local v19, v:Landroid/view/View;
    if-nez v19, :cond_5

    .line 689
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v16           #setView:Z
    .end local v19           #v:Landroid/view/View;
    :cond_3
    move-object/from16 v21, p2

    .line 674
    goto :goto_0

    .line 676
    :cond_4
    const/16 v21, 0x0

    goto :goto_1

    .line 694
    .restart local v16       #setView:Z
    .restart local v19       #v:Landroid/view/View;
    :cond_5
    if-eqz v13, :cond_6

    .line 695
    if-nez v16, :cond_8

    .line 696
    if-eqz v12, :cond_7

    move/from16 v21, v17

    :goto_4
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 700
    :goto_5
    const/16 v16, 0x1

    .line 702
    :cond_6
    move-object/from16 v13, v19

    .line 703
    aget-boolean v12, v14, v15

    goto :goto_3

    :cond_7
    move/from16 v21, v18

    .line 696
    goto :goto_4

    .line 698
    :cond_8
    if-eqz v12, :cond_9

    move/from16 v21, v8

    :goto_6
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_9
    move/from16 v21, v9

    goto :goto_6

    .line 706
    .end local v19           #v:Landroid/view/View;
    :cond_a
    if-eqz v13, :cond_b

    .line 707
    if-eqz v16, :cond_10

    .line 712
    if-eqz v12, :cond_f

    if-eqz p4, :cond_e

    .end local v7           #bottomMedium:I
    :goto_7
    invoke-virtual {v13, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 744
    .end local v10           #fullBright:I
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 746
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setSelection(I)V

    .line 751
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AlertController;->setFilletListViewCornerType(Landroid/widget/ListView;Landroid/view/View;ZZ)V

    .line 754
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AlertController;->correctCustomPanelBackground(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V

    .line 755
    return-void

    .restart local v7       #bottomMedium:I
    .restart local v10       #fullBright:I
    :cond_e
    move v7, v5

    .line 712
    goto :goto_7

    :cond_f
    move v7, v6

    goto :goto_7

    .line 715
    :cond_10
    if-eqz v12, :cond_11

    .end local v10           #fullBright:I
    :goto_9
    invoke-virtual {v13, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    .restart local v10       #fullBright:I
    :cond_11
    move v10, v11

    goto :goto_9
.end method

.method private setFilletListViewCornerType(Landroid/widget/ListView;Landroid/view/View;ZZ)V
    .locals 1
    .parameter "listView"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "hasTitle"

    .prologue
    .line 758
    instance-of v0, p1, Lcom/android/internal/widget/RecycleFilletListView;

    if-eqz v0, :cond_1

    .line 759
    if-eqz p4, :cond_3

    .line 760
    if-nez p3, :cond_0

    if-eqz p2, :cond_2

    .line 761
    :cond_0
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    .line 773
    :cond_1
    :goto_0
    return-void

    .line 763
    .restart local p1
    :cond_2
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    goto :goto_0

    .line 766
    .restart local p1
    :cond_3
    if-nez p3, :cond_4

    if-eqz p2, :cond_5

    .line 767
    :cond_4
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    goto :goto_0

    .line 769
    .restart local p1
    :cond_5
    check-cast p1, Lcom/android/internal/widget/RecycleFilletListView;

    .end local p1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecycleFilletListView;->setCornerType(I)V

    goto :goto_0
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 553
    const/4 v2, 0x1

    .line 554
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 555
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 556
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v3, 0x0

    .line 557
    .local v3, whichButtons:I
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, #id@button1#t

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 558
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 561
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 568
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, #id@button2#t

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 569
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 572
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 580
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, #id@button3#t

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 581
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 584
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 592
    :goto_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    if-ne v3, v2, :cond_4

    .line 598
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 606
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 563
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 565
    or-int/2addr v3, v2

    goto :goto_0

    .line 574
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 577
    or-int/2addr v3, v0

    goto :goto_1

    .line 586
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    or-int/2addr v3, v1

    goto :goto_2

    .line 599
    :cond_4
    if-ne v3, v0, :cond_5

    .line 600
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 601
    :cond_5
    if-ne v3, v1, :cond_0

    .line 602
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 606
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter "contentPanel"

    .prologue
    const v5, #id@scrollView#t

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 520
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, #id@message#t

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 525
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 550
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 535
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 538
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 547
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const v6, #id@title_template#t

    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 460
    const/4 v1, 0x1

    .line 462
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 464
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 467
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 471
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 516
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 473
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 475
    .local v0, hasTextTitle:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, #id@icon#t

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 476
    if-eqz v0, :cond_5

    .line 478
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, #id@alertTitle#t

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 480
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 484
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 491
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 492
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 493
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 494
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 495
    :cond_4
    iget v4, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 500
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 504
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 509
    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 510
    .restart local v3       #titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 17

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, #id@contentPanel#t

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 399
    .local v3, contentPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->setupButtons()Z

    move-result v5

    .line 402
    .local v5, hasButtons:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, #id@topPanel#t

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 403
    .local v2, topPanel:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    sget-object v14, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v15, #attr@alertDialogStyle#t

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 405
    .local v6, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v7

    .line 407
    .local v7, hasTitle:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, #id@buttonPanel#t

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 408
    .local v8, buttonPanel:Landroid/view/View;
    if-nez v5, :cond_0

    .line 409
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 413
    :cond_0
    const/4 v4, 0x0

    .line 414
    .local v4, customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, #id@customPanel#t

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #customPanel:Landroid/widget/FrameLayout;
    check-cast v4, Landroid/widget/FrameLayout;

    .line 416
    .restart local v4       #customPanel:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, #id@custom#t

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 417
    .local v9, custom:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v1, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_1

    .line 419
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v9, v1, v13, v14, v15}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 422
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 423
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    iput v13, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 432
    .end local v9           #custom:Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v7, :cond_5

    .line 433
    const/4 v10, 0x0

    .line 434
    .local v10, divider:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    .line 435
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, #id@titleDivider#t

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 441
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 442
    .local v11, res:Landroid/content/res/Resources;
    invoke-virtual {v11}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v12

    .line 443
    .local v12, textColor:I
    if-eqz v12, :cond_4

    .line 444
    if-eqz v10, :cond_4

    .line 445
    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 450
    :cond_4
    if-eqz v10, :cond_5

    .line 451
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    .end local v10           #divider:Landroid/view/View;
    .end local v11           #res:Landroid/content/res/Resources;
    .end local v12           #textColor:I
    :cond_5
    move-object/from16 v1, p0

    .line 455
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 456
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 457
    return-void

    .line 426
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, #id@customPanel#t

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 437
    .restart local v10       #divider:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v13, #id@titleDividerTop#t

    invoke-virtual {v1, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    goto :goto_1
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 180
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 181
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, #attr@alertDialogCenterButtons#t

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 183
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 375
    packed-switch p1, :pswitch_data_0

    .line 383
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 377
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 379
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 381
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .parameter "attrId"

    .prologue
    .line 361
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 362
    .local v0, out:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 363
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    .line 238
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 240
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 245
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 246
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 305
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 309
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 313
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 329
    :goto_0
    return-void

    .line 317
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 318
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 322
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 323
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 260
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 337
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 338
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 339
    if-lez p1, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    if-nez p1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 349
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 368
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 264
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 250
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 275
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 284
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 285
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 286
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 287
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 288
    return-void
.end method
