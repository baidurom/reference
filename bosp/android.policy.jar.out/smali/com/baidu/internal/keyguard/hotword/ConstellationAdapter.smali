.class public Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;
.super Landroid/widget/BaseAdapter;
.source "ConstellationAdapter.java"


# static fields
.field private static final MAX_WORD_PER_PAGE_COUNT:I = 0x5

.field private static TAG:Ljava/lang/String;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mConstellationCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ConstellationAdapter"

    sput-object v0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 1
    .parameter "c"
    .parameter "callback"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    .line 22
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 23
    iput-object p2, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 24
    return-void
.end method


# virtual methods
.method public adjustAccordingToWordCount(I)V
    .locals 3
    .parameter "wordCount"

    .prologue
    .line 46
    div-int/lit8 v0, p1, 0x5

    iput v0, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    .line 47
    sget-object v0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConstellationCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",WordCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    iget v0, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    if-lt p1, v0, :cond_0

    .line 32
    iget v0, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    rem-int/2addr p1, v0

    .line 35
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 39
    iget v0, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    if-lt p1, v0, :cond_0

    .line 40
    iget v0, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    rem-int/2addr p1, v0

    .line 42
    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getRealItemCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v2, #layout@baidu_keyguard_constellation01#t

    const/4 v3, 0x0

    .line 55
    move-object v0, p2

    .line 57
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    if-lt p1, v1, :cond_0

    .line 58
    iget v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mConstellationCount:I

    rem-int/2addr p1, v1

    .line 61
    :cond_0
    if-nez v0, :cond_1

    .line 62
    add-int/lit8 v1, p1, 0x1

    packed-switch v1, :pswitch_data_0

    .line 94
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :cond_1
    :goto_0
    move-object v1, v0

    .line 98
    check-cast v1, Lcom/baidu/internal/keyguard/hotword/Constellation;

    invoke-virtual {v1, p1}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setPage(I)V

    move-object v1, v0

    .line 99
    check-cast v1, Lcom/baidu/internal/keyguard/hotword/Constellation;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/hotword/Constellation;->setKeyguardCallback(Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 100
    return-object v0

    .line 64
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_constellation02#t

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_constellation03#t

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    goto :goto_0

    .line 73
    :pswitch_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_constellation04#t

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    goto :goto_0

    .line 76
    :pswitch_4
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_constellation05#t

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    goto :goto_0

    .line 79
    :pswitch_5
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_constellation06#t

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    goto :goto_0

    .line 82
    :pswitch_6
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_constellation07#t

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    goto :goto_0

    .line 85
    :pswitch_7
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_constellation08#t

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    goto :goto_0

    .line 88
    :pswitch_8
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_constellation09#t

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    goto :goto_0

    .line 91
    :pswitch_9
    iget-object v1, p0, Lcom/baidu/internal/keyguard/hotword/ConstellationAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, #layout@baidu_keyguard_constellation10#t

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
