.class Lyi/support/v1/ContentDemensionSwitcher$2;
.super Lyi/support/v1/utils/Animatable$Vertical;
.source "ContentDemensionSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/ContentDemensionSwitcher;->showScrollUpAnimation(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/ContentDemensionSwitcher;

.field final synthetic val$actionBar:Landroid/view/View;

.field final synthetic val$content:Landroid/view/View;


# direct methods
.method constructor <init>(Lyi/support/v1/ContentDemensionSwitcher;FFFJFLandroid/view/View;Landroid/view/View;)V
    .locals 8
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lyi/support/v1/ContentDemensionSwitcher$2;->this$0:Lyi/support/v1/ContentDemensionSwitcher;

    move-object/from16 v0, p8

    iput-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher$2;->val$content:Landroid/view/View;

    move-object/from16 v0, p9

    iput-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher$2;->val$actionBar:Landroid/view/View;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move v7, p7

    invoke-direct/range {v1 .. v7}, Lyi/support/v1/utils/Animatable$Vertical;-><init>(FFFJF)V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher$2;->val$content:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 104
    iget-object v0, p0, Lyi/support/v1/ContentDemensionSwitcher$2;->val$actionBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void
.end method
