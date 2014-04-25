.class Lcom/android/phone/VTInCallScreen$2;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->initVTInCallScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DRAGPOINT:I = 0x1

.field private static final NONEPOINT:I = 0x0

.field private static final ZOOMPOINT:I = 0x2


# instance fields
.field private final mChangeThreshold:F

.field private mMode:I

.field private mOldDist:F

.field final synthetic this$0:Lcom/android/phone/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/VTInCallScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/VTInCallScreen$2;->mMode:I

    .line 673
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$400(Lcom/android/phone/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/phone/VTInCallScreen$2;->mChangeThreshold:F

    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 726
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 727
    .local v0, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 728
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 677
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 719
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 679
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v2, "MotionEvent.ACTION_DOWN"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    #calls: Lcom/android/phone/VTInCallScreen;->hideLocalZoomOrBrightness()V
    invoke-static {v1}, Lcom/android/phone/VTInCallScreen;->access$600(Lcom/android/phone/VTInCallScreen;)V

    .line 681
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iput-boolean v4, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 682
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iput-boolean v4, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 683
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iput-boolean v4, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 684
    iput v5, p0, Lcom/android/phone/VTInCallScreen$2;->mMode:I

    goto :goto_0

    .line 687
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v2, "MotionEvent.ACTION_UP"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 689
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    const-string v2, "MotionEvent.ACTION_POINTER_UP"

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 690
    iput v4, p0, Lcom/android/phone/VTInCallScreen$2;->mMode:I

    .line 691
    iput v6, p0, Lcom/android/phone/VTInCallScreen$2;->mOldDist:F

    goto :goto_0

    .line 694
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/phone/VTInCallScreen$2;->spacing(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/android/phone/VTInCallScreen$2;->mOldDist:F

    .line 695
    iput v7, p0, Lcom/android/phone/VTInCallScreen$2;->mMode:I

    .line 696
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent.ACTION_POINTER_DOWN, mOldDist is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/VTInCallScreen$2;->mOldDist:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent.ACTION_MOVE, mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/VTInCallScreen$2;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 700
    iget v1, p0, Lcom/android/phone/VTInCallScreen$2;->mMode:I

    if-ne v1, v7, :cond_0

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v1, :cond_0

    .line 703
    invoke-direct {p0, p2}, Lcom/android/phone/VTInCallScreen$2;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    .line 704
    .local v0, newDist:F
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent.ACTION_MOVE, new dist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", old dist is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/VTInCallScreen$2;->mOldDist:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threshold is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/VTInCallScreen$2;->mChangeThreshold:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VTInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/VTInCallScreen;->access$000(Lcom/android/phone/VTInCallScreen;Ljava/lang/String;)V

    .line 706
    iget v1, p0, Lcom/android/phone/VTInCallScreen$2;->mOldDist:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/android/phone/VTInCallScreen$2;->mChangeThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTFullScreen:Z

    if-nez v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v1, v5}, Lcom/android/phone/VTInCallScreen;->setVTDisplayScreenMode(Z)V

    .line 709
    iput v4, p0, Lcom/android/phone/VTInCallScreen$2;->mMode:I

    .line 710
    iput v6, p0, Lcom/android/phone/VTInCallScreen$2;->mOldDist:F

    goto/16 :goto_0

    .line 711
    :cond_1
    iget v1, p0, Lcom/android/phone/VTInCallScreen$2;->mOldDist:F

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/phone/VTInCallScreen$2;->mChangeThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/VTInCallScreenFlags;->mVTFullScreen:Z

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$2;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-virtual {v1, v4}, Lcom/android/phone/VTInCallScreen;->setVTDisplayScreenMode(Z)V

    .line 714
    iput v4, p0, Lcom/android/phone/VTInCallScreen$2;->mMode:I

    goto/16 :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
