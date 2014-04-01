.class public Lyi/support/v1/utils/FpsCounter;
.super Ljava/lang/Object;
.source "FpsCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/utils/FpsCounter$FpsView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 48
    const v2, 0x4020022

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, fps:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    .local v0, decorView:Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 55
    .end local v0           #decorView:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public static enable(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, -0x1

    .line 35
    const v3, 0x4020022

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, fps:Landroid/view/View;
    if-nez v1, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    .local v0, decorView:Landroid/view/ViewGroup;
    new-instance v1, Lyi/support/v1/utils/FpsCounter$FpsView;

    .end local v1           #fps:Landroid/view/View;
    invoke-direct {v1, p0}, Lyi/support/v1/utils/FpsCounter$FpsView;-><init>(Landroid/content/Context;)V

    .line 40
    .restart local v1       #fps:Landroid/view/View;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 41
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v3, v1

    .line 42
    check-cast v3, Lyi/support/v1/utils/FpsCounter$FpsView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 45
    .end local v0           #decorView:Landroid/view/ViewGroup;
    .end local v2           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public static isEnabled(Landroid/app/Activity;)Z
    .locals 2
    .parameter "activity"

    .prologue
    .line 58
    const v1, 0x4020022

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, fps:Landroid/view/View;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
