.class Lyi/support/v1/utils/Animatable$Translate$1;
.super Ljava/lang/Object;
.source "Animatable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/support/v1/utils/Animatable$Translate;-><init>(FFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/support/v1/utils/Animatable$Translate;


# direct methods
.method constructor <init>(Lyi/support/v1/utils/Animatable$Translate;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lyi/support/v1/utils/Animatable$Translate$1;->this$0:Lyi/support/v1/utils/Animatable$Translate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 88
    iget-object v0, p0, Lyi/support/v1/utils/Animatable$Translate$1;->this$0:Lyi/support/v1/utils/Animatable$Translate;

    invoke-virtual {v0}, Lyi/support/v1/utils/Animatable$Translate;->onEnd()V

    .line 89
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 84
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 81
    return-void
.end method
