.class final Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private final mLaunchedFromUid:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "intent"
    .parameter "initialIntents"
    .parameter
    .parameter "launchedFromUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p5, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 413
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 414
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 415
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 416
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 417
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 418
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 419
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 5
    .parameter "view"
    .parameter "info"

    .prologue
    .line 679
    const v3, #id@text1#t

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 680
    .local v1, text:Landroid/widget/TextView;
    const v3, #id@text2#t

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 681
    .local v2, text2:Landroid/widget/TextView;
    const v3, #id@icon#t

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 682
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 686
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSmartFit(Z)V

    .line 687
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 690
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 691
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    :goto_0
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 697
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 699
    :cond_0
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 700
    return-void

    .line 694
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter "ro"
    .parameter "roLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 581
    .local v12, num:I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 583
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_0
    return-void

    .line 585
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$702(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 586
    const/4 v14, 0x0

    .line 587
    .local v14, usePkg:Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 588
    .local v13, startApp:Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    .line 589
    const/4 v14, 0x1

    .line 591
    :cond_2
    if-nez v14, :cond_5

    .line 593
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 595
    .local v7, duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v8, p2, 0x1

    .local v8, j:I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_4

    .line 597
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 598
    .local v10, jRi:Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 599
    .local v9, jApp:Ljava/lang/CharSequence;
    if-eqz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 600
    :cond_3
    const/4 v14, 0x1

    .line 607
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 609
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    :cond_5
    move/from16 v11, p2

    .local v11, k:I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 610
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 611
    .local v3, add:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    .line 613
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 603
    .end local v3           #add:Landroid/content/pm/ResolveInfo;
    .end local v11           #k:I
    .restart local v7       #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8       #j:I
    .restart local v9       #jApp:Ljava/lang/CharSequence;
    .restart local v10       #jRi:Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 617
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    .restart local v3       #add:Landroid/content/pm/ResolveInfo;
    .restart local v11       #k:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 20

    .prologue
    .line 450
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 486
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .local v13, N:I
    if-lez v13, :cond_10

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 490
    .local v11, r0:Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x1

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_6

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 498
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    iget v1, v11, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_5

    .line 500
    :cond_1
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_5

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 502
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 453
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    .end local v11           #r0:Landroid/content/pm/ResolveInfo;
    .end local v13           #N:I
    .end local v16           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x40

    :goto_2
    or-int/2addr v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    .restart local v16       #i:I
    :goto_3
    if-ltz v16, :cond_0

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 464
    .local v14, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, v2, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v15

    .line 467
    .local v15, granted:I
    if-eqz v15, :cond_3

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 462
    :cond_3
    add-int/lit8 v16, v16, -0x1

    goto :goto_3

    .line 453
    .end local v14           #ai:Landroid/content/pm/ActivityInfo;
    .end local v15           #granted:I
    .end local v16           #i:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 490
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v11       #r0:Landroid/content/pm/ResolveInfo;
    .restart local v13       #N:I
    .restart local v16       #i:I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 506
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_6
    const/4 v1, 0x1

    if-le v13, v1, :cond_7

    .line 507
    new-instance v18, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 509
    .local v18, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 512
    .end local v18           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_b

    .line 516
    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v1, v16

    .line 518
    .local v6, ii:Landroid/content/Intent;
    if-nez v6, :cond_8

    .line 516
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 521
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 523
    .restart local v14       #ai:Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_9

    .line 524
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 528
    :cond_9
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 529
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    iput-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 530
    instance-of v1, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_a

    move-object/from16 v17, v6

    .line 531
    check-cast v17, Landroid/content/pm/LabeledIntent;

    .line 532
    .local v17, li:Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 533
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 534
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 535
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 537
    .end local v17           #li:Landroid/content/pm/LabeledIntent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 544
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    .end local v6           #ii:Landroid/content/Intent;
    .end local v14           #ai:Landroid/content/pm/ActivityInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #r0:Landroid/content/pm/ResolveInfo;
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 545
    .restart local v11       #r0:Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 546
    .local v9, start:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 547
    .local v12, r0Label:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$702(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 548
    const/16 v16, 0x1

    :goto_6
    move/from16 v0, v16

    if-ge v0, v13, :cond_f

    .line 549
    if-nez v12, :cond_c

    .line 550
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 552
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 553
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 554
    .local v19, riLabel:Ljava/lang/CharSequence;
    if-nez v19, :cond_d

    .line 555
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 557
    :cond_d
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 548
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 560
    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v10, v16, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 561
    move-object v11, v3

    .line 562
    move-object/from16 v12, v19

    .line 563
    move/from16 v9, v16

    goto :goto_7

    .line 566
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    .end local v19           #riLabel:Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 575
    .end local v9           #start:I
    .end local v11           #r0:Landroid/content/pm/ResolveInfo;
    .end local v12           #r0Label:Ljava/lang/CharSequence;
    .end local v13           #N:I
    .end local v16           #i:I
    :goto_8
    return-void

    .line 571
    :cond_10
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "rebuildList zero count, set mList to null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    goto :goto_8
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 658
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 663
    if-nez p2, :cond_0

    .line 664
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, #layout@resolve_list_item#t

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 668
    .local v2, view:Landroid/view/View;
    const v3, #id@icon#t

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 669
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 670
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mIconSize:I
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$800(Lcom/android/internal/app/ResolverActivity;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 674
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 675
    return-object v2

    .line 672
    .end local v2           #view:Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public handlePackagesChanged()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    .line 423
    .local v3, oldItemCount:I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 426
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 428
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v2

    .line 432
    .local v2, newItemCount:I
    if-eq v2, v3, :cond_3

    .line 435
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$200(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 436
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mGrid:Landroid/widget/GridView;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 437
    .local v0, checkedPos:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    const/4 v1, 0x1

    .line 438
    .local v1, enabled:Z
    :goto_0
    if-eqz v1, :cond_2

    if-lt v0, v2, :cond_2

    .line 439
    const-string v5, "ResolverActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlePackagesChanged: checkedPos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= newItemCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disable buttons"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 441
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 445
    .end local v0           #checkedPos:I
    .end local v1           #enabled:Z
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 447
    :cond_3
    return-void

    .restart local v0       #checkedPos:I
    :cond_4
    move v1, v4

    .line 437
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .parameter "position"

    .prologue
    .line 633
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 634
    const/4 v2, 0x0

    .line 646
    :goto_0
    return-object v2

    .line 637
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 639
    .local v1, dri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 641
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 644
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 639
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 629
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
