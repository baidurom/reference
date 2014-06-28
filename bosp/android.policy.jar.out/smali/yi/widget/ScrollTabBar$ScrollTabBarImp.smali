.class Lyi/widget/ScrollTabBar$ScrollTabBarImp;
.super Ljava/lang/Object;
.source "ScrollTabBar.java"

# interfaces
.implements Lyi/widget/ScrollTabBar$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/widget/ScrollTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollTabBarImp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;
    }
.end annotation


# static fields
.field private static final SCROLLING_HORIZONTAL_VIEW_NAME:Ljava/lang/String; = "com.android.internal.widget.ScrollingTabContainerView"


# instance fields
.field mActionbar:Landroid/app/ActionBar;

.field mAdapterCount:I

.field mBadgeList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lyi/widget/BadgeView;",
            ">;"
        }
    .end annotation
.end field

.field mCursor:Landroid/widget/ImageView;

.field mCursorParent:Landroid/widget/FrameLayout;

.field mCursorWidth:I

.field private mIsActionBarVisible:Z

.field mOnActionTabClickListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field mScrollContentViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mScrollView:Landroid/widget/HorizontalScrollView;

.field mSlidDrawableLand:Landroid/graphics/drawable/Drawable;

.field mSlidDrawablePort:Landroid/graphics/drawable/Drawable;

.field private mTabClickListener:Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

.field mTabContainerWidth:I

.field mTabLayout:Landroid/widget/LinearLayout;

.field private mUserDefaultSlid:Z

.field mViewPagerObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 2
    .parameter "activity"
    .parameter "viewPagerObj"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mUserDefaultSlid:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mIsActionBarVisible:Z

    .line 96
    iput-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawableLand:Landroid/graphics/drawable/Drawable;

    .line 97
    iput-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawablePort:Landroid/graphics/drawable/Drawable;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mActionbar:Landroid/app/ActionBar;

    .line 112
    iput-object p2, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mViewPagerObj:Ljava/lang/Object;

    .line 113
    invoke-direct {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->initSlidDrawable(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mBadgeList:Ljava/util/Map;

    .line 115
    invoke-virtual {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->init(Landroid/app/Activity;)V

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/Object;Lyi/widget/ScrollTabBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;-><init>(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method

.method private getAdapterCount(Ljava/lang/Object;)I
    .locals 10
    .parameter "viewPagerObj"

    .prologue
    .line 384
    const/4 v2, 0x0

    .line 385
    .local v2, count:I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 387
    .local v7, viewPagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v9, "getAdapter"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 388
    .local v5, getAdapterM:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 389
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 390
    .local v1, adapterObj:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 392
    .local v0, adapterClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "getCount"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 393
    .local v6, getCountM:Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    .line 394
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 395
    .local v3, countObj:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 410
    .end local v0           #adapterClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #adapterObj:Ljava/lang/Object;
    .end local v3           #countObj:Ljava/lang/Integer;
    .end local v5           #getAdapterM:Ljava/lang/reflect/Method;
    .end local v6           #getCountM:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v2

    .line 401
    :catch_0
    move-exception v4

    .line 402
    .local v4, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 403
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 404
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 405
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 406
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 407
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 408
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDividerWidth(Landroid/widget/LinearLayout;)I
    .locals 11
    .parameter "ll"

    .prologue
    .line 278
    const/4 v8, 0x0

    .line 279
    .local v8, width:I
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getShowDividers()I

    move-result v7

    .line 280
    .local v7, showDividers:I
    const/4 v3, 0x0

    .line 282
    .local v3, divider:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "mDivider"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 283
    .local v5, field:Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    .line 284
    .local v1, accessible:Z
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 285
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 286
    .local v6, object:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, className:Ljava/lang/String;
    instance-of v9, v6, Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    .line 288
    move-object v0, v6

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    .line 290
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v1           #accessible:Z
    .end local v2           #className:Ljava/lang/String;
    .end local v5           #field:Ljava/lang/reflect/Field;
    .end local v6           #object:Ljava/lang/Object;
    :goto_0
    if-eqz v3, :cond_1

    .line 296
    packed-switch v7, :pswitch_data_0

    .line 308
    :cond_1
    :goto_1
    return v8

    .line 291
    :catch_0
    move-exception v4

    .line 292
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v4           #e:Ljava/lang/Exception;
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v9

    if-nez v9, :cond_2

    .line 299
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 303
    goto :goto_1

    .line 296
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getViewPagerCurrentItem(Ljava/lang/Object;)I
    .locals 9
    .parameter "viewPagerObj"

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, currentItem:I
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 418
    .local v6, viewPagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v8, "getCurrentItem"

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 419
    .local v5, getCurrentItemM:Ljava/lang/reflect/Method;
    if-eqz v5, :cond_0

    .line 420
    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 421
    .local v3, currentItemObj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 422
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 423
    .local v2, currentItemI:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 435
    .end local v2           #currentItemI:Ljava/lang/Integer;
    .end local v3           #currentItemObj:Ljava/lang/Object;
    .end local v5           #getCurrentItemM:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v1

    .line 426
    :catch_0
    move-exception v4

    .line 427
    .local v4, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v4           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 429
    .local v4, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 430
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 431
    .local v4, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 432
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 433
    .local v4, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private initSlidDrawable(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 120
    .local v4, theme:Landroid/content/res/Resources$Theme;
    sget-object v5, Lcom/yi/internal/R$styleable;->ActionTabBarSlid:[I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 121
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 122
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 123
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 124
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 122
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawableLand:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 129
    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawablePort:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 133
    .end local v2           #attr:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    iget-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawableLand:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x508028b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawableLand:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_1
    iget-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawablePort:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5080284

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawablePort:Landroid/graphics/drawable/Drawable;

    .line 141
    :cond_2
    return-void

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private rebuildClickEventOnActionTab(Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter "tabLayout"

    .prologue
    .line 509
    iput-object p1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    .line 510
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 511
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabClickListener:Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

    if-nez v3, :cond_0

    .line 512
    new-instance v3, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;-><init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp;Lyi/widget/ScrollTabBar$1;)V

    iput-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabClickListener:Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

    .line 514
    :cond_0
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 515
    .local v2, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 516
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, child:Landroid/view/View;
    iget-object v3, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mTabClickListener:Lyi/widget/ScrollTabBar$ScrollTabBarImp$TabClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #tabCount:I
    :cond_1
    return-void
.end method

.method private showBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)V
    .locals 2
    .parameter "activity"
    .parameter "position"
    .parameter "targetResId"
    .parameter "text"

    .prologue
    .line 654
    invoke-virtual {p0, p1, p2, p3, p4}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)Lyi/widget/BadgeView;

    move-result-object v0

    .line 656
    .local v0, badge:Lyi/widget/BadgeView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyi/widget/BadgeView;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyi/widget/BadgeView;->show(Z)V

    .line 658
    :cond_0
    return-void
.end method


# virtual methods
.method addCursorView(Landroid/content/Context;Landroid/view/ViewGroup;ILandroid/app/ActionBar;)V
    .locals 8
    .parameter "context"
    .parameter "cursorParent"
    .parameter "tabContainerWidth"
    .parameter "actionBar"

    .prologue
    const/16 v7, 0x50

    .line 447
    iget-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    if-nez v5, :cond_0

    .line 448
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    .line 449
    :cond_0
    iget-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 451
    invoke-virtual {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getOrientation(Landroid/content/Context;)I

    move-result v0

    .line 452
    .local v0, orientation:I
    packed-switch v0, :pswitch_data_0

    .line 457
    iget-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawablePort:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    :goto_0
    iget v4, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mAdapterCount:I

    .line 462
    .local v4, tabCount:I
    invoke-virtual {p4}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 463
    .local v2, selectTab:Landroid/app/ActionBar$Tab;
    const/4 v3, 0x0

    .line 464
    .local v3, selectedTabIndex:I
    if-eqz v2, :cond_1

    .line 465
    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v3

    .line 467
    :cond_1
    div-int v5, p3, v4

    iput v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    .line 468
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 471
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_2

    .line 472
    const/16 v5, 0x55

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 481
    :goto_1
    iget-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {p2, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    return-void

    .line 454
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v2           #selectTab:Landroid/app/ActionBar$Tab;
    .end local v3           #selectedTabIndex:I
    .end local v4           #tabCount:I
    :pswitch_0
    iget-object v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mSlidDrawableLand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 473
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2       #selectTab:Landroid/app/ActionBar$Tab;
    .restart local v3       #selectedTabIndex:I
    .restart local v4       #tabCount:I
    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_3

    .line 474
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 475
    iget v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    mul-int/2addr v5, v3

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 477
    :cond_3
    const/16 v5, 0x53

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 478
    const/4 v5, 0x0

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method getActionContainerView(Landroid/app/Activity;)Landroid/widget/FrameLayout;
    .locals 6
    .parameter "activity"

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 490
    .local v0, decorView:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "action_bar_container"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 492
    .local v1, resId:I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    return-object v2
.end method

.method public getBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)Lyi/widget/BadgeView;
    .locals 4
    .parameter "activity"
    .parameter "position"
    .parameter "targetResId"
    .parameter "text"

    .prologue
    .line 741
    iget-object v2, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mBadgeList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyi/widget/BadgeView;

    .line 742
    .local v0, badge:Lyi/widget/BadgeView;
    if-nez v0, :cond_0

    .line 743
    invoke-virtual {p0, p1, p2, p3}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getTargetView(Landroid/app/Activity;II)Landroid/view/View;

    move-result-object v1

    .line 745
    .local v1, target:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 746
    new-instance v0, Lyi/widget/BadgeView;

    .end local v0           #badge:Lyi/widget/BadgeView;
    invoke-direct {v0, p1, v1, p2, p3}, Lyi/widget/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    .line 747
    .restart local v0       #badge:Lyi/widget/BadgeView;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lyi/widget/BadgeView;->setContainerMatchParent(Z)V

    .line 748
    iget-object v2, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mBadgeList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    .end local v1           #target:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 753
    invoke-virtual {v0, p4}, Lyi/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    :cond_1
    return-object v0
.end method

.method getHorizontalScrollView(Landroid/app/Activity;Landroid/widget/FrameLayout;)Landroid/widget/HorizontalScrollView;
    .locals 10
    .parameter "activity"
    .parameter "containerView"

    .prologue
    .line 334
    const/4 v6, 0x0

    .line 335
    .local v6, hScrollView:Landroid/widget/HorizontalScrollView;
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 336
    .local v2, actionBar:Landroid/app/ActionBar;
    if-eqz v2, :cond_1

    .line 338
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "mTabScrollView"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 339
    .local v5, field:Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    .line 340
    .local v1, accessible:Z
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 341
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 342
    .local v7, object:Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, className:Ljava/lang/String;
    const-string v8, "com.android.internal.widget.ScrollingTabContainerView"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 344
    move-object v0, v7

    check-cast v0, Landroid/widget/HorizontalScrollView;

    move-object v6, v0

    .line 346
    :cond_0
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 347
    const-string v8, "getHorizontalScrollView"

    const-string v9, "rendayun getHorizontalScrollView"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v1           #accessible:Z
    .end local v3           #className:Ljava/lang/String;
    .end local v5           #field:Ljava/lang/reflect/Field;
    .end local v7           #object:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v6

    .line 348
    :catch_0
    move-exception v4

    .line 349
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getOrientation(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method getTabView(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 5
    .parameter "tabParent"
    .parameter "position"
    .parameter "targetResId"

    .prologue
    .line 710
    const/4 v3, 0x0

    .line 711
    .local v3, tabView:Landroid/view/View;
    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 713
    .local v2, tabLayout:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 714
    if-eqz p3, :cond_1

    .line 715
    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 727
    .end local v2           #tabLayout:Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-object v3

    .line 717
    .restart local v2       #tabLayout:Landroid/view/ViewGroup;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 718
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 719
    .local v0, childView:Landroid/view/View;
    instance-of v4, v0, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 720
    move-object v3, v0

    .line 721
    goto :goto_0

    .line 717
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getTargetView(Landroid/app/Activity;II)Landroid/view/View;
    .locals 8
    .parameter "activity"
    .parameter "position"
    .parameter "targetResId"

    .prologue
    .line 678
    const/4 v4, 0x0

    .line 679
    .local v4, tabParent:Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getActionContainerView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getHorizontalScrollView(Landroid/app/Activity;Landroid/widget/FrameLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    .line 681
    .local v3, scrollView:Landroid/widget/HorizontalScrollView;
    if-eqz v3, :cond_0

    .line 682
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 683
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 684
    instance-of v7, v5, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    move-object v4, v5

    .line 685
    check-cast v4, Landroid/view/ViewGroup;

    .line 700
    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    invoke-virtual {p0, v4, p2, p3}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getTabView(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    return-object v7

    .line 686
    .restart local v5       #view:Landroid/view/View;
    :cond_1
    instance-of v7, v5, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    move-object v6, v5

    .line 687
    check-cast v6, Landroid/view/ViewGroup;

    .line 688
    .local v6, vp:Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 689
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 690
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 691
    .local v1, childView:Landroid/view/View;
    instance-of v7, v1, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    move-object v4, v1

    .line 692
    check-cast v4, Landroid/view/ViewGroup;

    .line 693
    goto :goto_0

    .line 689
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method hasEmbeddedTabs(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_embed_tabs"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method public hideBadgeView(I)V
    .locals 3
    .parameter "tabIndex"

    .prologue
    .line 665
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mBadgeList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyi/widget/BadgeView;

    .line 666
    .local v0, badge:Lyi/widget/BadgeView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lyi/widget/BadgeView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyi/widget/BadgeView;->hide(Z)V

    .line 669
    :cond_0
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 10
    .parameter "activity"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getActionContainerView(Landroid/app/Activity;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 148
    .local v1, containerView:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {p0, p1, v1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->getHorizontalScrollView(Landroid/app/Activity;Landroid/widget/FrameLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    iput-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 151
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v6, :cond_1

    .line 152
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 153
    .local v5, view:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 154
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_1

    .line 155
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    if-ne v6, v5, :cond_0

    .line 156
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 157
    .local v4, tabView:Landroid/view/View;
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 158
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 159
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v7, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 160
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v4, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .end local v4           #tabView:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v8}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    .local v0, childView:Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    instance-of v6, v0, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 166
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    .line 168
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    if-nez v6, :cond_3

    .line 169
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    .line 170
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 175
    :goto_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .local v3, params1:Landroid/view/ViewGroup$LayoutParams;
    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    iput v9, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 179
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v7, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v0, v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 182
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;

    invoke-direct {v7, p0, v0, p1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp$1;-><init>(Lyi/widget/ScrollTabBar$ScrollTabBarImp;Landroid/view/ViewGroup;Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 209
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 210
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 211
    check-cast v0, Landroid/widget/LinearLayout;

    .end local v0           #childView:Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->rebuildClickEventOnActionTab(Landroid/widget/LinearLayout;)V

    .line 272
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #params1:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #view:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 273
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 275
    :cond_2
    return-void

    .line 172
    .restart local v0       #childView:Landroid/view/ViewGroup;
    .restart local v2       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v5       #view:Landroid/view/ViewGroup;
    :cond_3
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorParent:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_0
.end method

.method isActionBarViewVisible(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 496
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 497
    .local v0, decorView:Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "action_bar"

    const-string v6, "id"

    const-string v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 499
    .local v1, resId:I
    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 501
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 502
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 505
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return v3
.end method

.method public onScrolled(IFI)V
    .locals 11
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    const/16 v10, 0x50

    const/4 v9, 0x0

    .line 590
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    iget v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mAdapterCount:I

    if-eqz v6, :cond_1

    .line 591
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 592
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 593
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 594
    .local v4, screenWidth:I
    iget v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    mul-int/2addr v6, p1

    iget v7, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    mul-int/2addr v7, p3

    div-int/2addr v7, v4

    add-int v2, v6, v7

    .line 597
    .local v2, end:I
    iget v5, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mAdapterCount:I

    .line 598
    .local v5, tabCount:I
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 599
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    const-string v6, "ViewPager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Viewpager:position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " positionOffset = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " positionOffsetPixels = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " end = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " screenWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lyi/support/v1/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    add-int/lit8 v6, v5, -0x1

    if-ne p1, v6, :cond_2

    .line 604
    const/16 v6, 0x55

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 625
    :cond_0
    :goto_0
    iget-object v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->requestLayout()V

    .line 627
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #end:I
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    .end local v4           #screenWidth:I
    .end local v5           #tabCount:I
    :cond_1
    return-void

    .line 606
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v2       #end:I
    .restart local v3       #params:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4       #screenWidth:I
    .restart local v5       #tabCount:I
    :cond_2
    invoke-static {p2, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_3

    if-eqz p3, :cond_4

    .line 607
    :cond_3
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 608
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 609
    :cond_4
    invoke-static {p2, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_0

    if-nez p3, :cond_0

    .line 610
    add-int/lit8 v6, v5, -0x1

    if-ge p1, v6, :cond_0

    .line 611
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 612
    iget v6, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mCursorWidth:I

    mul-int/2addr v6, p1

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public setTabOnClickListener(ILandroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "positon"
    .parameter "scrollView"
    .parameter "l"

    .prologue
    .line 525
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 526
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    .line 529
    :cond_0
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 530
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    .line 533
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 535
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_2
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :cond_3
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mScrollContentViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v1, p0, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->mOnActionTabClickListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public showBadgeView(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "tabIndex"

    .prologue
    .line 634
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->showBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)V

    .line 635
    return-void
.end method

.method public showBadgeView(Landroid/app/Activity;ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "activity"
    .parameter "tabIndex"
    .parameter "text"

    .prologue
    .line 643
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;->showBadgeView(Landroid/app/Activity;IILjava/lang/CharSequence;)V

    .line 644
    return-void
.end method
