.class public Lyi/widget/ScrollTabBar;
.super Ljava/lang/Object;
.source "ScrollTabBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/widget/ScrollTabBar$1;,
        Lyi/widget/ScrollTabBar$ScrollTabBarImp;,
        Lyi/widget/ScrollTabBar$ScrollTabBarStub;,
        Lyi/widget/ScrollTabBar$Interface;
    }
.end annotation


# static fields
.field private static final DEFAULT_SLID_DRAWABLE_RES_LAND:I = 0x508028b

.field private static final DEFAULT_SLID_DRAWABLE_RES_PORT:I = 0x508028b

.field private static final TAG:Ljava/lang/String; = "SrollTabBar"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static create(Landroid/app/Activity;)Lyi/widget/ScrollTabBar$Interface;
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 59
    const v1, 0x5020014

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, viewPageObj:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lyi/widget/ScrollTabBar$ScrollTabBarImp;

    invoke-direct {v1, p0, v0, v2}, Lyi/widget/ScrollTabBar$ScrollTabBarImp;-><init>(Landroid/app/Activity;Ljava/lang/Object;Lyi/widget/ScrollTabBar$1;)V

    .line 64
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lyi/widget/ScrollTabBar$ScrollTabBarStub;

    invoke-direct {v1, v2}, Lyi/widget/ScrollTabBar$ScrollTabBarStub;-><init>(Lyi/widget/ScrollTabBar$1;)V

    goto :goto_0
.end method
