.class public Lcom/android/phone/BaiduDualCardLogic;
.super Ljava/lang/Object;
.source "BaiduDualCardLogic.java"


# static fields
.field private static final DUAL_DSDS:I = 0x0

.field private static final DUAL_MTK:I = 0x1

.field private static final DUAL_NONE:I = -0x1

.field private static mCurDualType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/BaiduDualCardLogic;->mCurDualType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs onShowInComingCallWidget([Ljava/lang/Object;)V
    .locals 7
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 13
    sget v3, Lcom/android/phone/BaiduDualCardLogic;->mCurDualType:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 14
    aget-object v0, p0, v6

    check-cast v0, Lcom/android/phone/InCallScreen;

    .line 15
    .local v0, ics:Lcom/android/phone/InCallScreen;
    aget-object v1, p0, v5

    check-cast v1, Lcom/baidu/multiwaveview/MultiWaveView;

    .line 17
    .local v1, iw:Lcom/baidu/multiwaveview/MultiWaveView;
    invoke-virtual {v1}, Lcom/baidu/multiwaveview/MultiWaveView;->getMODE()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 18
    invoke-static {}, Lcom/android/phone/BaiduPhoneAdapter;->getBusySlot()I

    move-result v2

    .line 19
    .local v2, sub:I
    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-ne v2, v5, :cond_1

    const v3, 0x7f02018a

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/baidu/multiwaveview/MultiWaveView;->setTargetResource(ILandroid/graphics/drawable/Drawable;)V

    .line 26
    .end local v0           #ics:Lcom/android/phone/InCallScreen;
    .end local v1           #iw:Lcom/baidu/multiwaveview/MultiWaveView;
    .end local v2           #sub:I
    :cond_0
    return-void

    .line 19
    .restart local v0       #ics:Lcom/android/phone/InCallScreen;
    .restart local v1       #iw:Lcom/baidu/multiwaveview/MultiWaveView;
    .restart local v2       #sub:I
    :cond_1
    const v3, 0x7f020186

    goto :goto_0
.end method
