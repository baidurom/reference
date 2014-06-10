.class abstract Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledMessageResId:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledMessageResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .parameter "enabledIconResId"
    .parameter "disabledIconResid"
    .parameter "message"
    .parameter "enabledStatusMessageResId"
    .parameter "disabledStatusMessageResId"

    .prologue
    .line 749
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 727
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 750
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 751
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 752
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    .line 753
    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 754
    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 755
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .parameter "enabledIconResId"
    .parameter "disabledIconResid"
    .parameter "enabledMessage"
    .parameter "disabledMessage"
    .parameter "enabledStatusMessageResId"
    .parameter "disabledStatusMessageResId"

    .prologue
    .line 762
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 727
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 763
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 764
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 765
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledMessageResId:I

    .line 766
    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledMessageResId:I

    .line 767
    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 768
    iput p6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 769
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .parameter "buttonOn"

    .prologue
    .line 843
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 844
    return-void

    .line 843
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v7, 0x0

    .line 781
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->willCreate()V

    .line 783
    const v6, #layout@global_actions_item#t

    invoke-virtual {p4, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 786
    .local v5, v:Landroid/view/View;
    const v6, #id@icon#t

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 787
    .local v1, icon:Landroid/widget/ImageView;
    const v6, #id@message#t

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 788
    .local v2, messageView:Landroid/widget/TextView;
    const v6, #id@status#t

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 789
    .local v4, statusView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 791
    .local v0, enabled:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v6, v8, :cond_4

    :cond_0
    const/4 v3, 0x1

    .line 792
    .local v3, on:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 793
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    if-eqz v6, :cond_5

    .line 794
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 798
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 801
    :cond_1
    if-eqz v1, :cond_2

    .line 802
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v3, :cond_7

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_2
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 807
    :cond_2
    if-eqz v4, :cond_3

    .line 808
    if-eqz v3, :cond_8

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 809
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 812
    :cond_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 814
    return-object v5

    .end local v3           #on:Z
    :cond_4
    move v3, v7

    .line 791
    goto :goto_0

    .line 796
    .restart local v3       #on:Z
    :cond_5
    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledMessageResId:I

    :goto_4
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledMessageResId:I

    goto :goto_4

    .line 802
    :cond_7
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    goto :goto_2

    .line 808
    :cond_8
    iget v6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto :goto_3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return v0
.end method

.method public final onPress()V
    .locals 3

    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 824
    .local v0, nowOn:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onToggle(Z)V

    .line 825
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 823
    .end local v0           #nowOn:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 850
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 777
    return-void
.end method
