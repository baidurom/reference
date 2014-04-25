.class Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;
.super Landroid/view/animation/Animation;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/water/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringAnimation"
.end annotation


# instance fields
.field private icon:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/baidu/internal/keyguard/water/TargetView;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/water/TargetView;Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;FF)V
    .locals 1
    .parameter
    .parameter "icon"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 69
    iget v0, p2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->startX:F

    .line 70
    iget v0, p2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    iput v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->startY:F

    .line 71
    iput-object p2, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    .line 72
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 78
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v1, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->startX:F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mXBackup:F

    iget v3, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->startX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mX:F

    .line 79
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v1, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->startY:F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mYBackup:F

    iget v3, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->startY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/baidu/internal/keyguard/water/TargetView$TargetIcon;->mY:F

    .line 80
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/TargetView$SpringAnimation;->this$0:Lcom/baidu/internal/keyguard/water/TargetView;

    #calls: Lcom/baidu/internal/keyguard/water/TargetView;->adjustTargetIconPosition()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/TargetView;->access$000(Lcom/baidu/internal/keyguard/water/TargetView;)V

    .line 81
    return-void
.end method
