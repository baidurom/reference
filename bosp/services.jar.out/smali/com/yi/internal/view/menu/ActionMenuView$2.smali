.class Lcom/yi/internal/view/menu/ActionMenuView$2;
.super Lyi/support/v1/utils/Animatable$Alpha;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yi/internal/view/menu/ActionMenuView;->fadeOut(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/view/menu/ActionMenuView;


# direct methods
.method constructor <init>(Lcom/yi/internal/view/menu/ActionMenuView;FFFJ)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/yi/internal/view/menu/ActionMenuView$2;->this$0:Lcom/yi/internal/view/menu/ActionMenuView;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lyi/support/v1/utils/Animatable$Alpha;-><init>(FFFJ)V

    return-void
.end method


# virtual methods
.method protected onEnd()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yi/internal/view/menu/ActionMenuView$2;->this$0:Lcom/yi/internal/view/menu/ActionMenuView;

    #calls: Lcom/yi/internal/view/menu/ActionMenuView;->onFadeEnd()V
    invoke-static {v0}, Lcom/yi/internal/view/menu/ActionMenuView;->access$000(Lcom/yi/internal/view/menu/ActionMenuView;)V

    .line 122
    return-void
.end method
