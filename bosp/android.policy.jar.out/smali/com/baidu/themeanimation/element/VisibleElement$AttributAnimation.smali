.class Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;
.super Landroid/view/animation/Animation;
.source "VisibleElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/VisibleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttributAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/themeanimation/element/VisibleElement;


# direct methods
.method private constructor <init>(Lcom/baidu/themeanimation/element/VisibleElement;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/VisibleElement;

    #getter for: Lcom/baidu/themeanimation/element/VisibleElement;->mAngle:I
    invoke-static {v0}, Lcom/baidu/themeanimation/element/VisibleElement;->access$000(Lcom/baidu/themeanimation/element/VisibleElement;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/VisibleElement;

    #getter for: Lcom/baidu/themeanimation/element/VisibleElement;->mAngle:I
    invoke-static {v1}, Lcom/baidu/themeanimation/element/VisibleElement;->access$000(Lcom/baidu/themeanimation/element/VisibleElement;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VisibleElement;->getCenterX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/themeanimation/element/VisibleElement$AttributAnimation;->this$0:Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/VisibleElement;->getCenterY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 66
    :cond_0
    return-void
.end method
