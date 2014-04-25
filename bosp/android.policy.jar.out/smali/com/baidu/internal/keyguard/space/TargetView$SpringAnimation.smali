.class Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
.super Landroid/view/animation/Animation;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/space/TargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringAnimation"
.end annotation


# instance fields
.field private icon:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/baidu/internal/keyguard/space/TargetView;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/space/TargetView;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;FF)V
    .locals 1
    .parameter
    .parameter "icon"
    .parameter "startX"
    .parameter "startY"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 76
    iget v0, p2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->startX:F

    .line 77
    iget v0, p2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->startY:F

    .line 78
    iput-object p2, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 79
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 85
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->startX:F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXBackup:F

    iget v3, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->startX:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    .line 86
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->startY:F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->icon:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYBackup:F

    iget v3, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->startY:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    .line 87
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;->this$0:Lcom/baidu/internal/keyguard/space/TargetView;

    #calls: Lcom/baidu/internal/keyguard/space/TargetView;->adjustTargetIconPosition()V
    invoke-static {v0}, Lcom/baidu/internal/keyguard/space/TargetView;->access$000(Lcom/baidu/internal/keyguard/space/TargetView;)V

    .line 88
    return-void
.end method
