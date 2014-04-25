.class public Lcom/android/phone/CallBanner;
.super Landroid/widget/RelativeLayout;
.source "CallBanner.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CallBanner"


# instance fields
.field public mCallStateLabel:Landroid/widget/TextView;

.field public mCallTypeLabel:Landroid/widget/TextView;

.field public mLabel:Landroid/widget/TextView;

.field public mMainCallBanner:Landroid/view/ViewGroup;

.field public mName:Landroid/widget/TextView;

.field public mOperatorName:Landroid/widget/TextView;

.field public mPhoneNumber:Landroid/widget/TextView;

.field public mSimIndicator:Landroid/widget/TextView;

.field public mSocialStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 65
    const-string v0, "CallBanner"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallBanner onFinishInflate(this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallBanner;->log(Ljava/lang/String;)V

    .line 38
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallBanner;->mOperatorName:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallBanner;->mSimIndicator:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallBanner;->mName:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallBanner;->mPhoneNumber:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallBanner;->mLabel:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallBanner;->mCallTypeLabel:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallBanner;->mSocialStatus:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/CallBanner;->mMainCallBanner:Landroid/view/ViewGroup;

    .line 47
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallBanner;->mCallStateLabel:Landroid/widget/TextView;

    .line 48
    return-void
.end method
