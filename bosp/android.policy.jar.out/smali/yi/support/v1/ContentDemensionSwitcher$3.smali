.class Lyi/support/v1/ContentDemensionSwitcher$3;
.super Lyi/support/v1/utils/Animatable$Vertical;
.source "ContentDemensionSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/ContentDemensionSwitcher;->showScrollDownAnimation(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/ContentDemensionSwitcher;

.field final synthetic val$content:Landroid/view/View;


# direct methods
.method constructor <init>(Lyi/support/v1/ContentDemensionSwitcher;FFFJFLandroid/view/View;)V
    .locals 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lyi/support/v1/ContentDemensionSwitcher$3;->this$0:Lyi/support/v1/ContentDemensionSwitcher;

    iput-object p8, p0, Lyi/support/v1/ContentDemensionSwitcher$3;->val$content:Landroid/view/View;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lyi/support/v1/utils/Animatable$Vertical;-><init>(FFFJF)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher$3;->val$content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 125
    iget-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher$3;->val$content:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-void
.end method
