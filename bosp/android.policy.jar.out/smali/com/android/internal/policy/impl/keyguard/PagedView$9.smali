.class Lcom/android/internal/policy/impl/keyguard/PagedView$9;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

.field final synthetic val$dragView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/PagedView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2315
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/policy/impl/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 2325
    .local v4, dragViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getVisiblePages([I)V

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/policy/impl/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/4 v7, 0x1

    .line 2328
    .local v7, isLastWidgetPage:Z
    :goto_0
    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    if-le v4, v0, :cond_4

    :cond_0
    const/4 v13, 0x1

    .line 2332
    .local v13, slideFromLeft:Z
    :goto_1
    if-eqz v13, :cond_1

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    add-int/lit8 v17, v4, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/policy/impl/keyguard/PagedView;->snapToPageImmediately(I)V

    .line 2336
    :cond_1
    if-eqz v7, :cond_5

    const/4 v5, 0x0

    .line 2337
    .local v5, firstIndex:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2338
    .local v8, lastIndex:I
    if-eqz v13, :cond_6

    move v9, v5

    .line 2339
    .local v9, lowerIndex:I
    :goto_3
    if-eqz v13, :cond_7

    add-int/lit8 v14, v4, -0x1

    .line 2340
    .local v14, upperIndex:I
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2341
    .local v3, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move v6, v9

    .local v6, i:I
    :goto_5
    if-gt v6, v14, :cond_a

    .line 2342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2346
    .local v15, v:Landroid/view/View;
    const/4 v11, 0x0

    .line 2347
    .local v11, oldX:I
    const/4 v10, 0x0

    .line 2348
    .local v10, newX:I
    if-eqz v13, :cond_9

    .line 2349
    if-nez v6, :cond_8

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildWidth(I)I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mPageSpacing:I

    move/from16 v17, v0

    sub-int v11, v16, v17

    .line 2356
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v17

    add-int v10, v16, v17

    .line 2364
    :goto_7
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/AnimatorSet;

    .line 2365
    .local v2, anim:Landroid/animation/AnimatorSet;
    if-eqz v2, :cond_2

    .line 2366
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2371
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getAlpha()F

    move-result v16

    const v17, 0x3c23d70a

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setAlpha(F)V

    .line 2372
    sub-int v16, v11, v10

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setTranslationX(F)V

    .line 2373
    new-instance v2, Landroid/animation/AnimatorSet;

    .end local v2           #anim:Landroid/animation/AnimatorSet;
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2374
    .restart local v2       #anim:Landroid/animation/AnimatorSet;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "translationX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "alpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2377
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2378
    invoke-virtual {v15, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2341
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 2327
    .end local v2           #anim:Landroid/animation/AnimatorSet;
    .end local v3           #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v5           #firstIndex:I
    .end local v6           #i:I
    .end local v7           #isLastWidgetPage:Z
    .end local v8           #lastIndex:I
    .end local v9           #lowerIndex:I
    .end local v10           #newX:I
    .end local v11           #oldX:I
    .end local v13           #slideFromLeft:Z
    .end local v14           #upperIndex:I
    .end local v15           #v:Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2328
    .restart local v7       #isLastWidgetPage:Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 2336
    .restart local v13       #slideFromLeft:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v5, v16, v17

    goto/16 :goto_2

    .line 2338
    .restart local v5       #firstIndex:I
    .restart local v8       #lastIndex:I
    :cond_6
    add-int/lit8 v9, v4, 0x1

    goto/16 :goto_3

    .restart local v9       #lowerIndex:I
    :cond_7
    move v14, v8

    .line 2339
    goto/16 :goto_4

    .line 2354
    .restart local v3       #animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v6       #i:I
    .restart local v10       #newX:I
    .restart local v11       #oldX:I
    .restart local v14       #upperIndex:I
    .restart local v15       #v:Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getViewportOffsetX()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v6, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v17

    add-int v11, v16, v17

    goto/16 :goto_6

    .line 2358
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v6, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getChildOffset(I)I

    move-result v17

    sub-int v11, v16, v17

    .line 2359
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 2381
    .end local v10           #newX:I
    .end local v11           #oldX:I
    .end local v15           #v:Landroid/view/View;
    :cond_a
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2382
    .local v12, slideAnimations:Landroid/animation/AnimatorSet;
    invoke-virtual {v12, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/policy/impl/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/policy/impl/keyguard/PagedView;->access$700(Lcom/android/internal/policy/impl/keyguard/PagedView;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2384
    new-instance v16, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/PagedView$9$1;-><init>(Lcom/android/internal/policy/impl/keyguard/PagedView$9;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2397
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/policy/impl/keyguard/PagedView;->removeView(Landroid/view/View;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/PagedView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onRemoveView(Landroid/view/View;)V

    .line 2401
    return-void
.end method
