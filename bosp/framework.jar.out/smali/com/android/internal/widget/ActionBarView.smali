.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private final mHomeResId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleUpView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUseActivityIcon:Z

.field private mUseActivityLogo:Z

.field private mUseCustomIcon:Z

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 185
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 102
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mUseCustomIcon:Z

    .line 103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mUseActivityLogo:Z

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mUseActivityIcon:Z

    .line 153
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mReserveOverflowSet:Z

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mReserveOverflow:Z

    .line 156
    new-instance v2, Lcom/android/internal/widget/ActionBarView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 168
    new-instance v2, Lcom/android/internal/widget/ActionBarView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v2, Lcom/android/internal/widget/ActionBarView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$3;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 188
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 190
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, #attr@actionBarStyle#t

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 193
    .local v9, a:Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 194
    .local v10, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 195
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 197
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 198
    const/16 v2, 0x9

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 200
    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 202
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 204
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 210
    invoke-virtual {v10, v14}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mUseActivityLogo:Z

    .line 215
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 217
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 219
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 225
    invoke-virtual {v10, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 227
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mUseActivityIcon:Z

    .line 230
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 232
    .local v13, inflater:Landroid/view/LayoutInflater;
    const/16 v2, 0xf

    const v3, #layout@action_bar_home#t

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeResId:I

    .line 236
    const v2, #layout@action_bar_up_container#t

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 238
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeResId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeResId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #string@action_bar_up_description#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 249
    .local v15, upBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_6

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 255
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 256
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 257
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 258
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 261
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 262
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 264
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 266
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 267
    .local v11, customNavId:I
    if-eqz v11, :cond_7

    .line 268
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 270
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 273
    :cond_7
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 275
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v4, 0x0

    const v5, #id@home#t

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 284
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 286
    :cond_8
    return-void

    .line 205
    .end local v11           #customNavId:I
    .end local v13           #inflater:Landroid/view/LayoutInflater;
    .end local v15           #upBackground:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v12

    .line 206
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 220
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v12

    .line 221
    .restart local v12       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ActionBarView"

    const-string v3, "Activity component name not found!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 554
    if-eqz p1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 563
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 560
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 10

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 890
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_4

    .line 891
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 892
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, #layout@action_bar_title_item#t

    invoke-virtual {v1, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 894
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v8, #id@action_bar_title#t

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 895
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v8, #id@action_bar_subtitle#t

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 896
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v8, #id@up#t

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 898
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v4, :cond_0

    .line 899
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v4, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 901
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 902
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    :cond_1
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v4, :cond_2

    .line 906
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v4, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 908
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 909
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 913
    :cond_3
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    move v0, v5

    .line 914
    .local v0, homeAsUp:Z
    :goto_0
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    move v2, v5

    .line 915
    .local v2, showHome:Z
    :goto_1
    if-nez v2, :cond_8

    move v3, v5

    .line 916
    .local v3, showTitleUp:Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-eqz v3, :cond_a

    if-eqz v0, :cond_9

    move v4, v6

    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 919
    .end local v0           #homeAsUp:Z
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #showHome:Z
    .end local v3           #showTitleUp:Z
    :cond_4
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 920
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 923
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 927
    :goto_4
    return-void

    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    :cond_6
    move v0, v6

    .line 913
    goto :goto_0

    .restart local v0       #homeAsUp:Z
    :cond_7
    move v2, v6

    .line 914
    goto :goto_1

    .restart local v2       #showHome:Z
    :cond_8
    move v3, v6

    .line 915
    goto :goto_2

    .line 916
    .restart local v3       #showTitleUp:Z
    :cond_9
    const/4 v4, 0x4

    goto :goto_3

    :cond_a
    move v4, v7

    goto :goto_3

    .line 925
    .end local v0           #homeAsUp:Z
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #showHome:Z
    .end local v3           #showTitleUp:Z
    :cond_b
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "recordState"

    .prologue
    .line 651
    if-eqz p2, :cond_0

    .line 652
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 678
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 665
    if-nez p1, :cond_2

    .line 666
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 670
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 671
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #string@action_bar_up_description#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #string@action_bar_home_description#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 617
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 618
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 619
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 623
    .local v0, visible:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 625
    .end local v0           #visible:Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 626
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 628
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 620
    goto :goto_0

    .line 623
    .restart local v0       #visible:Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public collapseActionView()V
    .locals 2

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 573
    .local v0, item:Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 576
    :cond_0
    return-void

    .line 571
    .end local v0           #item:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 868
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1343
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .parameter "lp"

    .prologue
    .line 1348
    if-nez p1, :cond_0

    .line 1349
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1351
    :cond_0
    return-object p1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 857
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 407
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, #id@progress_circular#t

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 412
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 399
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 400
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, #id@progress_horizontal#t

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 945
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 960
    :cond_0
    :goto_0
    return v3

    .line 949
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 950
    .local v2, titleLayout:Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 954
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 955
    .local v1, lineCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 956
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 957
    const/4 v3, 0x1

    goto :goto_0

    .line 955
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v7, 0x0

    .line 290
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 292
    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 293
    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 294
    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 295
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v5, v6, :cond_0

    .line 296
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 298
    :cond_0
    iput-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 299
    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 303
    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v5, :cond_3

    .line 304
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 305
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_2

    .line 306
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    const/4 v5, -0x1

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 309
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 313
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 314
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mHomeResId:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 315
    .local v3, tempHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    if-eqz v3, :cond_4

    .line 316
    const v5, #id@home#t

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 317
    .local v4, tempIconView:Landroid/widget/ImageView;
    if-eqz v4, :cond_4

    .line 318
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 319
    .local v0, homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_0
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIconViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    .end local v0           #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v4           #tempIconView:Landroid/widget/ImageView;
    :cond_4
    return-void

    .line 318
    .restart local v4       #tempIconView:Landroid/widget/ImageView;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 385
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 386
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 391
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 873
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 875
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 876
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 878
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 880
    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 881
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 882
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 884
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 887
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 39
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1183
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1185
    .local v7, contentHeight:I
    if-gtz v7, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1190
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->isLayoutRtl()Z

    move-result v8

    .line 1191
    .local v8, isLayoutRtl:Z
    if-eqz v8, :cond_a

    const/16 v22, 0x1

    .line 1192
    .local v22, direction:I
    :goto_1
    if-eqz v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v11

    .line 1195
    .local v11, menuStart:I
    :goto_2
    if-eqz v8, :cond_c

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v36, v3, v4

    .line 1196
    .local v36, x:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    .line 1198
    .local v6, y:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    .line 1199
    .local v26, homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_4
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_e

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_e

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v33

    .line 1203
    .local v33, startOffset:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int v5, v36, v3

    .line 1205
    .end local v36           #x:I
    .local v5, x:I
    move/from16 v0, v33

    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 1208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_f

    const/16 v32, 0x1

    .line 1211
    .local v32, showTitle:Z
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 1233
    .end local v32           #showTitle:Z
    :cond_2
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_3

    .line 1234
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-nez v8, :cond_12

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1238
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    .line 1240
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v8, :cond_13

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1244
    :cond_4
    const/16 v20, 0x0

    .line 1245
    .local v20, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_14

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1251
    :cond_5
    :goto_a
    if-eqz v20, :cond_9

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v27

    .line 1253
    .local v27, layoutDirection:I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 1254
    .local v28, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v28

    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_15

    check-cast v28, Landroid/app/ActionBar$LayoutParams;

    .end local v28           #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v15, v28

    .line 1256
    .local v15, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_b
    if-eqz v15, :cond_16

    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v23, v0

    .line 1257
    .local v23, gravity:I
    :goto_c
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1259
    .local v29, navWidth:I
    const/16 v34, 0x0

    .line 1260
    .local v34, topMargin:I
    const/16 v16, 0x0

    .line 1261
    .local v16, bottomMargin:I
    if-eqz v15, :cond_6

    .line 1262
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1263
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1264
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v34, v0

    .line 1265
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    .line 1268
    :cond_6
    const v3, 0x800007

    and-int v25, v23, v3

    .line 1270
    .local v25, hgravity:I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_1a

    .line 1271
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v18, v3, 0x2

    .line 1272
    .local v18, centeredLeft:I
    if-eqz v8, :cond_18

    .line 1273
    add-int v19, v18, v29

    .line 1274
    .local v19, centeredStart:I
    move/from16 v17, v18

    .line 1275
    .local v17, centeredEnd:I
    move/from16 v0, v19

    if-le v0, v5, :cond_17

    .line 1276
    const/16 v25, 0x5

    .line 1293
    .end local v17           #centeredEnd:I
    .end local v18           #centeredLeft:I
    .end local v19           #centeredStart:I
    :cond_7
    :goto_d
    const/16 v37, 0x0

    .line 1294
    .local v37, xpos:I
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1306
    :goto_e
    :pswitch_1
    and-int/lit8 v35, v23, 0x70

    .line 1308
    .local v35, vgravity:I
    if-nez v23, :cond_8

    .line 1309
    const/16 v35, 0x10

    .line 1312
    :cond_8
    const/16 v38, 0x0

    .line 1313
    .local v38, ypos:I
    sparse-switch v35, :sswitch_data_0

    .line 1327
    :goto_f
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1328
    .local v21, customWidth:I
    add-int v3, v37, v21

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v38

    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1330
    move/from16 v0, v21

    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1333
    .end local v15           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v16           #bottomMargin:I
    .end local v21           #customWidth:I
    .end local v23           #gravity:I
    .end local v25           #hgravity:I
    .end local v27           #layoutDirection:I
    .end local v29           #navWidth:I
    .end local v34           #topMargin:I
    .end local v35           #vgravity:I
    .end local v37           #xpos:I
    .end local v38           #ypos:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 1334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v24, v3, 0x2

    .line 1336
    .local v24, halfProgressHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v0, v24

    neg-int v9, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    move/from16 v0, v24

    invoke-virtual {v3, v4, v9, v10, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1191
    .end local v5           #x:I
    .end local v6           #y:I
    .end local v11           #menuStart:I
    .end local v20           #customView:Landroid/view/View;
    .end local v22           #direction:I
    .end local v24           #halfProgressHeight:I
    .end local v26           #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v33           #startOffset:I
    :cond_a
    const/16 v22, -0x1

    goto/16 :goto_1

    .line 1192
    .restart local v22       #direction:I
    :cond_b
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v11, v3, v4

    goto/16 :goto_2

    .line 1195
    .restart local v11       #menuStart:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v36

    goto/16 :goto_3

    .line 1198
    .restart local v6       #y:I
    .restart local v36       #x:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    goto/16 :goto_4

    .line 1199
    .restart local v26       #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :cond_e
    const/16 v33, 0x0

    goto/16 :goto_5

    .line 1208
    .end local v36           #x:I
    .restart local v5       #x:I
    .restart local v33       #startOffset:I
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_6

    .line 1215
    .restart local v32       #showTitle:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    .line 1216
    if-eqz v32, :cond_10

    .line 1217
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1219
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1220
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1224
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_2

    .line 1225
    if-eqz v32, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1226
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1227
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1234
    .end local v32           #showTitle:Z
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 1240
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1247
    .restart local v20       #customView:Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v20, v0

    goto/16 :goto_a

    .line 1254
    .restart local v27       #layoutDirection:I
    .restart local v28       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 1256
    .end local v28           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v15       #ablp:Landroid/app/ActionBar$LayoutParams;
    :cond_16
    const v23, 0x800013

    goto/16 :goto_c

    .line 1277
    .restart local v16       #bottomMargin:I
    .restart local v17       #centeredEnd:I
    .restart local v18       #centeredLeft:I
    .restart local v19       #centeredStart:I
    .restart local v23       #gravity:I
    .restart local v25       #hgravity:I
    .restart local v29       #navWidth:I
    .restart local v34       #topMargin:I
    :cond_17
    move/from16 v0, v17

    if-ge v0, v11, :cond_7

    .line 1278
    const/16 v25, 0x3

    goto/16 :goto_d

    .line 1281
    .end local v17           #centeredEnd:I
    .end local v19           #centeredStart:I
    :cond_18
    move/from16 v19, v18

    .line 1282
    .restart local v19       #centeredStart:I
    add-int v17, v18, v29

    .line 1283
    .restart local v17       #centeredEnd:I
    move/from16 v0, v19

    if-ge v0, v5, :cond_19

    .line 1284
    const/16 v25, 0x3

    goto/16 :goto_d

    .line 1285
    :cond_19
    move/from16 v0, v17

    if-le v0, v11, :cond_7

    .line 1286
    const/16 v25, 0x5

    goto/16 :goto_d

    .line 1289
    .end local v17           #centeredEnd:I
    .end local v18           #centeredLeft:I
    .end local v19           #centeredStart:I
    :cond_1a
    if-nez v23, :cond_7

    .line 1290
    const v25, 0x800003

    goto/16 :goto_d

    .line 1296
    .restart local v37       #xpos:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v37, v3, 0x2

    .line 1297
    goto/16 :goto_e

    .line 1299
    :pswitch_5
    if-eqz v8, :cond_1b

    move/from16 v37, v11

    .line 1300
    :goto_10
    goto/16 :goto_e

    :cond_1b
    move/from16 v37, v5

    .line 1299
    goto :goto_10

    .line 1302
    :pswitch_6
    if-eqz v8, :cond_1c

    sub-int v37, v5, v29

    :goto_11
    goto/16 :goto_e

    :cond_1c
    sub-int v37, v11, v29

    goto :goto_11

    .line 1315
    .restart local v35       #vgravity:I
    .restart local v38       #ypos:I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v31

    .line 1316
    .local v31, paddedTop:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v30, v3, v4

    .line 1317
    .local v30, paddedBottom:I
    sub-int v3, v30, v31

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v38, v3, 0x2

    .line 1318
    goto/16 :goto_f

    .line 1320
    .end local v30           #paddedBottom:I
    .end local v31           #paddedTop:I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    add-int v38, v3, v34

    .line 1321
    goto/16 :goto_f

    .line 1323
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v38, v3, v16

    goto/16 :goto_f

    .line 1211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1294
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1313
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 48
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v8

    .line 966
    .local v8, childCount:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    move/from16 v44, v0

    if-eqz v44, :cond_6

    .line 967
    const/16 v42, 0x0

    .line 968
    .local v42, visibleChildren:I
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    move/from16 v0, v25

    if-ge v0, v8, :cond_2

    .line 969
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 970
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v44

    if-eqz v44, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    if-eq v7, v0, :cond_1

    .line 973
    add-int/lit8 v42, v42, 0x1

    .line 968
    :cond_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 977
    .end local v7           #child:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v38

    .line 978
    .local v38, upChildCount:I
    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v38

    if-ge v0, v1, :cond_4

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 980
    .restart local v7       #child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_3

    .line 981
    add-int/lit8 v42, v42, 0x1

    .line 978
    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 985
    .end local v7           #child:Landroid/view/View;
    :cond_4
    if-nez v42, :cond_6

    .line 987
    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 988
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1179
    .end local v25           #i:I
    .end local v38           #upChildCount:I
    .end local v42           #visibleChildren:I
    :cond_5
    :goto_2
    return-void

    .line 992
    :cond_6
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 994
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    .line 995
    .local v43, widthMode:I
    const/high16 v44, 0x4000

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_7

    .line 996
    new-instance v44, Ljava/lang/IllegalStateException;

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " can only be used "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 1000
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1001
    .local v18, heightMode:I
    const/high16 v44, -0x8000

    move/from16 v0, v18

    move/from16 v1, v44

    if-eq v0, v1, :cond_8

    .line 1002
    new-instance v44, Ljava/lang/IllegalStateException;

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " can only be used "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v44

    .line 1006
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1008
    .local v10, contentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v44, v0

    if-ltz v44, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v30, v0

    .line 1011
    .local v30, maxHeight:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v45

    add-int v41, v44, v45

    .line 1012
    .local v41, verticalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v33

    .line 1013
    .local v33, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v34

    .line 1014
    .local v34, paddingRight:I
    sub-int v17, v30, v41

    .line 1015
    .local v17, height:I
    const/high16 v44, -0x8000

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1016
    .local v9, childSpecHeight:I
    const/high16 v44, 0x4000

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1018
    .local v16, exactHeightSpec:I
    sub-int v44, v10, v33

    sub-int v6, v44, v34

    .line 1019
    .local v6, availableWidth:I
    div-int/lit8 v27, v6, 0x2

    .line 1020
    .local v27, leftOfCenter:I
    move/from16 v35, v27

    .line 1022
    .local v35, rightOfCenter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v44, v0

    if-eqz v44, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 1024
    .local v20, homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_4
    const/16 v22, 0x0

    .line 1025
    .local v22, homeWidth:I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    if-ne v0, v1, :cond_9

    .line 1026
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    .line 1028
    .local v29, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v44, v0

    if-gez v44, :cond_16

    .line 1029
    const/high16 v44, -0x8000

    move/from16 v0, v44

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1040
    .local v23, homeWidthSpec:I
    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 1041
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v22

    .line 1042
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v44

    add-int v21, v22, v44

    .line 1043
    .local v21, homeOffsetWidth:I
    const/16 v44, 0x0

    sub-int v45, v6, v21

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1044
    const/16 v44, 0x0

    sub-int v45, v6, v21

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1047
    .end local v21           #homeOffsetWidth:I
    .end local v23           #homeWidthSpec:I
    .end local v29           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_a

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v16

    move/from16 v3, v45

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1049
    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v45

    sub-int v45, v35, v45

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1052
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v44, v0

    if-eqz v44, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_b

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1056
    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v45

    sub-int v45, v35, v45

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1060
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v44, v0

    if-eqz v44, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x8

    if-eqz v44, :cond_17

    const/16 v36, 0x1

    .line 1063
    .local v36, showTitle:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v44, v0

    if-nez v44, :cond_c

    .line 1064
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v44, v0

    packed-switch v44, :pswitch_data_0

    .line 1094
    :cond_c
    :goto_7
    const/4 v15, 0x0

    .line 1095
    .local v15, customView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v44, v0

    if-eqz v44, :cond_1a

    .line 1096
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1102
    :cond_d
    :goto_8
    if-eqz v15, :cond_11

    .line 1103
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    .line 1104
    .restart local v29       #lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v44, v0

    if-eqz v44, :cond_1b

    move-object/from16 v44, v29

    check-cast v44, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v5, v44

    .line 1107
    .local v5, ablp:Landroid/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v24, 0x0

    .line 1108
    .local v24, horizontalMargin:I
    const/16 v40, 0x0

    .line 1109
    .local v40, verticalMargin:I
    if-eqz v5, :cond_e

    .line 1110
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v44, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v45, v0

    add-int v24, v44, v45

    .line 1111
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v44, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v45, v0

    add-int v40, v44, v45

    .line 1117
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v44, v0

    if-gtz v44, :cond_1c

    .line 1118
    const/high16 v12, -0x8000

    .line 1123
    .local v12, customNavHeightMode:I
    :goto_a
    const/16 v44, 0x0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v45, v0

    if-ltz v45, :cond_f

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v45, v0

    move/from16 v0, v45

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .end local v17           #height:I
    :cond_f
    sub-int v45, v17, v40

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1126
    .local v11, customNavHeight:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v44, v0

    const/16 v45, -0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1e

    const/high16 v14, 0x4000

    .line 1128
    .local v14, customNavWidthMode:I
    :goto_b
    const/16 v45, 0x0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v44, v0

    if-ltz v44, :cond_1f

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v44, v0

    move/from16 v0, v44

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v44

    :goto_c
    sub-int v44, v44, v24

    move/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1131
    .local v13, customNavWidth:I
    if-eqz v5, :cond_20

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v44, v0

    :goto_d
    and-int/lit8 v19, v44, 0x7

    .line 1136
    .local v19, hgrav:I
    const/16 v44, 0x1

    move/from16 v0, v19

    move/from16 v1, v44

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v44, v0

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_10

    .line 1137
    move/from16 v0, v27

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v44

    mul-int/lit8 v13, v44, 0x2

    .line 1140
    :cond_10
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1143
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v44

    add-int v44, v44, v24

    sub-int v6, v6, v44

    .line 1150
    .end local v5           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v11           #customNavHeight:I
    .end local v12           #customNavHeightMode:I
    .end local v13           #customNavWidth:I
    .end local v14           #customNavWidthMode:I
    .end local v19           #hgrav:I
    .end local v24           #horizontalMargin:I
    .end local v29           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v40           #verticalMargin:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v44, v0

    add-int v45, v6, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v46, v0

    const/high16 v47, 0x4000

    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v44, v0

    if-eqz v44, :cond_12

    .line 1153
    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v45

    sub-int v45, v27, v45

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1156
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v44, v0

    if-gtz v44, :cond_23

    .line 1157
    const/16 v31, 0x0

    .line 1158
    .local v31, measuredHeight:I
    const/16 v25, 0x0

    .restart local v25       #i:I
    :goto_e
    move/from16 v0, v25

    if-ge v0, v8, :cond_21

    .line 1159
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    .line 1160
    .local v39, v:Landroid/view/View;
    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getMeasuredHeight()I

    move-result v44

    add-int v32, v44, v41

    .line 1161
    .local v32, paddedViewHeight:I
    move/from16 v0, v32

    move/from16 v1, v31

    if-le v0, v1, :cond_13

    .line 1162
    move/from16 v31, v32

    .line 1158
    :cond_13
    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    .line 1008
    .end local v6           #availableWidth:I
    .end local v9           #childSpecHeight:I
    .end local v15           #customView:Landroid/view/View;
    .end local v16           #exactHeightSpec:I
    .end local v20           #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v22           #homeWidth:I
    .end local v25           #i:I
    .end local v27           #leftOfCenter:I
    .end local v30           #maxHeight:I
    .end local v31           #measuredHeight:I
    .end local v32           #paddedViewHeight:I
    .end local v33           #paddingLeft:I
    .end local v34           #paddingRight:I
    .end local v35           #rightOfCenter:I
    .end local v36           #showTitle:Z
    .end local v39           #v:Landroid/view/View;
    .end local v41           #verticalPadding:I
    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v30

    goto/16 :goto_3

    .line 1022
    .restart local v6       #availableWidth:I
    .restart local v9       #childSpecHeight:I
    .restart local v16       #exactHeightSpec:I
    .restart local v17       #height:I
    .restart local v27       #leftOfCenter:I
    .restart local v30       #maxHeight:I
    .restart local v33       #paddingLeft:I
    .restart local v34       #paddingRight:I
    .restart local v35       #rightOfCenter:I
    .restart local v41       #verticalPadding:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    goto/16 :goto_4

    .line 1031
    .restart local v20       #homeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v22       #homeWidth:I
    .restart local v29       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_16
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v44, v0

    const/high16 v45, 0x4000

    invoke-static/range {v44 .. v45}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .restart local v23       #homeWidthSpec:I
    goto/16 :goto_5

    .line 1060
    .end local v23           #homeWidthSpec:I
    .end local v29           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    const/16 v36, 0x0

    goto/16 :goto_6

    .line 1066
    .restart local v36       #showTitle:Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v44, v0

    if-eqz v44, :cond_c

    .line 1067
    if-eqz v36, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v44, v0

    mul-int/lit8 v26, v44, 0x2

    .line 1068
    .local v26, itemPaddingSize:I
    :goto_f
    const/16 v44, 0x0

    sub-int v45, v6, v26

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1069
    const/16 v44, 0x0

    sub-int v45, v27, v26

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v44, v0

    const/high16 v45, -0x8000

    move/from16 v0, v45

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    const/high16 v46, 0x4000

    move/from16 v0, v17

    move/from16 v1, v46

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v28

    .line 1074
    .local v28, listNavWidth:I
    const/16 v44, 0x0

    sub-int v45, v6, v28

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1075
    const/16 v44, 0x0

    sub-int v45, v27, v28

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1076
    goto/16 :goto_7

    .line 1067
    .end local v26           #itemPaddingSize:I
    .end local v28           #listNavWidth:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v26, v0

    goto :goto_f

    .line 1079
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_c

    .line 1080
    if-eqz v36, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v44, v0

    mul-int/lit8 v26, v44, 0x2

    .line 1081
    .restart local v26       #itemPaddingSize:I
    :goto_10
    const/16 v44, 0x0

    sub-int v45, v6, v26

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1082
    const/16 v44, 0x0

    sub-int v45, v27, v26

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v44, v0

    const/high16 v45, -0x8000

    move/from16 v0, v45

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    const/high16 v46, 0x4000

    move/from16 v0, v17

    move/from16 v1, v46

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v37

    .line 1087
    .local v37, tabWidth:I
    const/16 v44, 0x0

    sub-int v45, v6, v37

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1088
    const/16 v44, 0x0

    sub-int v45, v27, v37

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(II)I

    move-result v27

    goto/16 :goto_7

    .line 1080
    .end local v26           #itemPaddingSize:I
    .end local v37           #tabWidth:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v26, v0

    goto :goto_10

    .line 1097
    .restart local v15       #customView:Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x10

    if-eqz v44, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v44, v0

    if-eqz v44, :cond_d

    .line 1099
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 1104
    .restart local v29       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1120
    .restart local v5       #ablp:Landroid/app/ActionBar$LayoutParams;
    .restart local v24       #horizontalMargin:I
    .restart local v40       #verticalMargin:I
    :cond_1c
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v44, v0

    const/16 v45, -0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1d

    const/high16 v12, 0x4000

    .restart local v12       #customNavHeightMode:I
    :goto_11
    goto/16 :goto_a

    .end local v12           #customNavHeightMode:I
    :cond_1d
    const/high16 v12, -0x8000

    goto :goto_11

    .line 1126
    .end local v17           #height:I
    .restart local v11       #customNavHeight:I
    .restart local v12       #customNavHeightMode:I
    :cond_1e
    const/high16 v14, -0x8000

    goto/16 :goto_b

    .restart local v14       #customNavWidthMode:I
    :cond_1f
    move/from16 v44, v6

    .line 1128
    goto/16 :goto_c

    .line 1131
    .restart local v13       #customNavWidth:I
    :cond_20
    const v44, 0x800013

    goto/16 :goto_d

    .line 1165
    .end local v5           #ablp:Landroid/app/ActionBar$LayoutParams;
    .end local v11           #customNavHeight:I
    .end local v12           #customNavHeightMode:I
    .end local v13           #customNavWidth:I
    .end local v14           #customNavWidthMode:I
    .end local v24           #horizontalMargin:I
    .end local v29           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v40           #verticalMargin:I
    .restart local v25       #i:I
    .restart local v31       #measuredHeight:I
    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1170
    .end local v25           #i:I
    .end local v31           #measuredHeight:I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v44, v0

    if-eqz v44, :cond_22

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v44, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1174
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v44, v0

    if-eqz v44, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v44

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_5

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v45, v0

    mul-int/lit8 v45, v45, 0x2

    sub-int v45, v10, v45

    const/high16 v46, 0x4000

    invoke-static/range {v45 .. v46}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v46

    const/high16 v47, -0x8000

    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    invoke-virtual/range {v44 .. v46}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_2

    .line 1167
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 1064
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "p"

    .prologue
    .line 1370
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1372
    .local v1, state:Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1374
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1376
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1377
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1378
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1382
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1383
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1385
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1356
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1357
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1359
    .local v0, state:Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1360
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1365
    return-object v0
.end method

.method public reloadHomeIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 326
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mUseCustomIcon:Z

    if-nez v3, :cond_4

    .line 329
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 330
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 332
    .local v2, pm:Landroid/content/pm/PackageManager;
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mUseActivityLogo:Z

    if-eqz v3, :cond_1

    .line 333
    iput-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 334
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 336
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 344
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 348
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mUseActivityIcon:Z

    if-eqz v3, :cond_3

    .line 349
    iput-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 350
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 352
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    .line 360
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 364
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 365
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 372
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    :goto_2
    return-void

    .line 338
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 339
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ActionBarView"

    const-string v4, "Activity component name not found!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 354
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 355
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ActionBarView"

    const-string v4, "Activity component name not found!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 367
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 368
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    .line 485
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0
    .parameter "collapsable"

    .prologue
    .line 934
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 935
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 931
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 579
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 580
    .local v0, showCustom:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 583
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 584
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 585
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 587
    :cond_1
    return-void

    .line 579
    .end local v0           #showCustom:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 12
    .parameter "options"

    .prologue
    const/16 v7, 0x8

    const/4 v11, 0x2

    const/4 v0, -0x1

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 681
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_7

    .line 682
    .local v0, flagsChanged:I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 684
    and-int/lit8 v9, v0, 0x3f

    if-eqz v9, :cond_12

    .line 685
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_8

    move v4, v8

    .line 686
    .local v4, showHome:Z
    :goto_1
    if-eqz v4, :cond_9

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_9

    move v5, v6

    .line 687
    .local v5, vis:I
    :goto_2
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 689
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 690
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_a

    move v3, v8

    .line 691
    .local v3, setUp:Z
    :goto_3
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUp(Z)V

    .line 697
    if-eqz v3, :cond_0

    .line 698
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 702
    .end local v3           #setUp:Z
    :cond_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_1

    .line 703
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_b

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_b

    move v2, v8

    .line 704
    .local v2, logoVis:Z
    :goto_4
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v2, :cond_c

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v10, v9}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 707
    .end local v2           #logoVis:Z
    :cond_1
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2

    .line 708
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_d

    .line 709
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 715
    :cond_2
    :goto_6
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_4

    and-int/lit8 v9, v0, 0x6

    if-eqz v9, :cond_4

    .line 717
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_e

    move v1, v8

    .line 718
    .local v1, homeAsUp:Z
    :goto_7
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v4, :cond_3

    if-eqz v1, :cond_f

    move v7, v6

    :cond_3
    :goto_8
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 721
    .end local v1           #homeAsUp:Z
    :cond_4
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 722
    and-int/lit8 v7, p1, 0x10

    if-eqz v7, :cond_10

    .line 723
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 729
    :cond_5
    :goto_9
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_6

    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_6

    .line 731
    and-int/lit8 v7, p1, 0x20

    if-eqz v7, :cond_11

    .line 732
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 733
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 740
    :cond_6
    :goto_a
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 746
    .end local v4           #showHome:Z
    .end local v5           #vis:I
    :goto_b
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_13

    .line 747
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v11}, Lcom/android/internal/widget/ActionBarView$HomeView;->setImportantForAccessibility(I)V

    .line 759
    :goto_c
    return-void

    .line 681
    .end local v0           #flagsChanged:I
    :cond_7
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0       #flagsChanged:I
    :cond_8
    move v4, v6

    .line 685
    goto/16 :goto_1

    .restart local v4       #showHome:Z
    :cond_9
    move v5, v7

    .line 686
    goto/16 :goto_2

    .restart local v5       #vis:I
    :cond_a
    move v3, v6

    .line 690
    goto/16 :goto_3

    :cond_b
    move v2, v6

    .line 703
    goto :goto_4

    .line 704
    .restart local v2       #logoVis:Z
    :cond_c
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 711
    .end local v2           #logoVis:Z
    :cond_d
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_6

    :cond_e
    move v1, v6

    .line 717
    goto :goto_7

    .line 718
    .restart local v1       #homeAsUp:Z
    :cond_f
    const/4 v7, 0x4

    goto :goto_8

    .line 725
    .end local v1           #homeAsUp:Z
    :cond_10
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 735
    :cond_11
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 736
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_a

    .line 742
    .end local v4           #showHome:Z
    .end local v5           #vis:I
    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b

    .line 750
    :cond_13
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/ActionBarView$HomeView;->setImportantForAccessibility(I)V

    .line 751
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_14

    .line 752
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #string@action_bar_up_description#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 755
    :cond_14
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #string@action_bar_home_description#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 835
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 838
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 846
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .parameter "tabs"

    .prologue
    const/4 v2, 0x1

    .line 469
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 473
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 474
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 475
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 476
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 477
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 478
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 479
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 481
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 473
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 647
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 648
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 775
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 763
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUseCustomIcon:Z

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 769
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 771
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 787
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "logo"

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 779
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUseCustomIcon:Z

    .line 783
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 8
    .parameter "menu"
    .parameter "cb"

    .prologue
    const/4 v7, -0x1

    .line 488
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    .line 551
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 491
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 492
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 495
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 496
    .local v0, builder:Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 497
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_2

    .line 498
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 499
    .local v3, oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 500
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 503
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-nez v4, :cond_4

    .line 504
    new-instance v4, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 505
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarView;->mReserveOverflowSet:Z

    if-eqz v4, :cond_3

    .line 506
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-boolean v5, p0, Lcom/android/internal/widget/ActionBarView;->mReserveOverflow:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 508
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 509
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, #id@action_menu_presenter#t

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setId(I)V

    .line 510
    new-instance v4, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 514
    :cond_4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 516
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_6

    .line 517
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #bool@action_bar_expanded_action_views_exclusive#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 520
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 521
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 522
    .local v2, menuView:Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 523
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_5

    if-eq v3, p0, :cond_5

    .line 524
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 526
    :cond_5
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    goto/16 :goto_0

    .line 528
    .end local v2           #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 530
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 533
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 535
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 536
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 537
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 538
    .restart local v2       #menuView:Lcom/android/internal/view/menu/ActionMenuView;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_8

    .line 539
    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 540
    .restart local v3       #oldParent:Landroid/view/ViewGroup;
    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eq v3, v4, :cond_7

    .line 541
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 543
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 544
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v2, v1}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 547
    .end local v3           #oldParent:Landroid/view/ViewGroup;
    :cond_8
    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setNavigationMode(I)V
    .locals 6
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    .line 790
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 791
    .local v0, oldMode:I
    if-eq p1, v0, :cond_2

    .line 792
    packed-switch v0, :pswitch_data_0

    .line 804
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 828
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 829
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 831
    :cond_2
    return-void

    .line 794
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 795
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 799
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 800
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 806
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 807
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, #attr@actionDropDownStyle#t

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 809
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, #attr@actionBarTabBarStyle#t

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 811
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 813
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 814
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 817
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 819
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 820
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 823
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 824
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 804
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .parameter "reserveOverflow"

    .prologue
    .line 1388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mReserveOverflowSet:Z

    .line 1389
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mReserveOverflow:Z

    .line 1390
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 5
    .parameter "splitActionBar"

    .prologue
    const/4 v3, 0x0

    .line 416
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v2, p1, :cond_6

    .line 417
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_2

    .line 418
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 419
    .local v1, oldParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 422
    :cond_0
    if-eqz p1, :cond_7

    .line 423
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 431
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 433
    .end local v1           #oldParent:Landroid/view/ViewGroup;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_3

    .line 434
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 437
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v2, :cond_5

    .line 438
    if-nez p1, :cond_9

    .line 440
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 441
    .local v0, abp:Lcom/android/internal/view/ActionBarPolicy;
    if-eqz v0, :cond_4

    .line 442
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 444
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #bool@action_bar_expanded_action_views_exclusive#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 456
    .end local v0           #abp:Lcom/android/internal/view/ActionBarPolicy;
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 458
    :cond_6
    return-void

    .line 428
    .restart local v1       #oldParent:Landroid/view/ViewGroup;
    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 429
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 434
    .end local v1           #oldParent:Landroid/view/ViewGroup;
    :cond_8
    const/16 v2, 0x8

    goto :goto_1

    .line 448
    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 450
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 453
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "subtitle"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 635
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 636
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 642
    .local v0, visible:Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 644
    .end local v0           #visible:Z
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 638
    goto :goto_0

    :cond_3
    move v0, v2

    .line 639
    goto :goto_1

    .restart local v0       #visible:Z
    :cond_4
    move v2, v3

    .line 642
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 601
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 602
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 381
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 612
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 614
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    return v0
.end method
