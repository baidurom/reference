.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .parameter "audioManager"
    .parameter "handler"

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ITEM_IDS:[I

    .line 652
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    .line 653
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    .line 654
    return-void

    .line 646
    :array_0
    .array-data 0x4
        #id@option1#a
        #id@option2#a
        #id@option3#a
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 663
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .parameter "ringerMode"

    .prologue
    .line 658
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x0

    .line 668
    const v5, #layout@global_actions_silent_mode#t

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 670
    .local v4, v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->ringerModeToIndex(I)I

    move-result v3

    .line 671
    .local v3, selectedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    .line 672
    const v1, #id@option1#t

    .line 673
    .local v1, id:I
    packed-switch v0, :pswitch_data_0

    .line 684
    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 685
    .local v2, itemView:Landroid/view/View;
    if-ne v3, v0, :cond_0

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 687
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 688
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    .end local v2           #itemView:Landroid/view/View;
    :pswitch_0
    const v1, #id@option1#t

    .line 676
    goto :goto_1

    .line 678
    :pswitch_1
    const v1, #id@option2#t

    .line 679
    goto :goto_1

    .line 681
    :pswitch_2
    const v1, #id@option3#t

    goto :goto_1

    .restart local v2       #itemView:Landroid/view/View;
    :cond_0
    move v5, v6

    .line 685
    goto :goto_2

    .line 690
    .end local v1           #id:I
    .end local v2           #itemView:Landroid/view/View;
    :cond_1
    return-object v4

    .line 673
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 722
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 716
    .local v0, index:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 717
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 718
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 720
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->indexToRingerMode(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 721
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeAction;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 694
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 709
    return-void
.end method
