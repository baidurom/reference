.class public Lcom/baidu/internal/keyguard/slide/TransportControlView;
.super Landroid/widget/FrameLayout;
.source "TransportControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/widget/LockScreenWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;,
        Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;,
        Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = true

.field private static final DISPLAY_TIMEOUT_MS:I = 0x1388

.field private static final MAXDIM:I = 0x200

.field private static final MSG_HIDE_VIEW:I = 0x69

.field private static final MSG_SET_ARTWORK:I = 0x67

.field private static final MSG_SET_GENERATION_ID:I = 0x68

.field private static final MSG_SET_METADATA:I = 0x65

.field private static final MSG_SET_TRANSPORT_CONTROLS:I = 0x66

.field private static final MSG_UPDATE_STATE:I = 0x64

.field protected static final TAG:Ljava/lang/String; = "TransportControlView"

.field private static sCurrentPlayState:I


# instance fields
.field private mAttached:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtnNext:Landroid/widget/Button;

.field private mBtnPlay:Landroid/widget/Button;

.field private mBtnPrev:Landroid/widget/Button;

.field private mClientGeneration:I

.field private mClientIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

.field private mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

.field private mPopulateMetadataWhenAttached:Landroid/os/Bundle;

.field private mTrackAlbum:Landroid/widget/TextView;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransportControlFlags:I

.field private mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

.field private mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;-><init>(Lcom/baidu/internal/keyguard/slide/TransportControlView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 107
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;-><init>(Lcom/baidu/internal/keyguard/slide/TransportControlView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mHandler:Landroid/os/Handler;

    .line 248
    const-string v0, "TransportControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create TCV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    .line 250
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    .line 251
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mContext:Landroid/content/Context;

    .line 252
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #drawable@yi_spinner_ab_focused_baidu_dark#t

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/TransportControlView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientGeneration:I

    return v0
.end method

.method static synthetic access$002(Lcom/baidu/internal/keyguard/slide/TransportControlView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientGeneration:I

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/TransportControlView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/baidu/internal/keyguard/slide/TransportControlView;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/slide/TransportControlView;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/slide/TransportControlView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/android/internal/widget/LockScreenWidgetCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "id"

    .prologue
    .line 336
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private populateMetadata()V
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1400(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1400(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1300(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackAlbum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1300(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_1
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportControlFlags:I

    .line 363
    .local v0, flags:I
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPrev:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 364
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnNext:Landroid/widget/Button;

    const/16 v2, 0x80

    invoke-static {v1, v0, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 365
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPrev:Landroid/widget/Button;

    const/16 v2, 0x3c

    invoke-static {v1, v0, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 370
    sget v1, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    invoke-direct {p0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updatePlayPauseState(I)V

    .line 371
    return-void
.end method

.method private sendMediaButtonClick(I)V
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x0

    .line 530
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_0

    .line 533
    const-string v3, "TransportControlView"

    const-string v4, "sendMediaButtonClick(): No client is currently registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :goto_0
    return-void

    .line 539
    :cond_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 540
    .local v2, keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 543
    :try_start_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_1
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 550
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 553
    :try_start_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 558
    :goto_2
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 559
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button down: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 554
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v0

    .line 555
    .restart local v0       #e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending intent for media button up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_2
.end method

.method private static setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "flags"
    .parameter "flag"

    .prologue
    .line 374
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMetadata(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1302(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1402(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1502(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->populateMetadata()V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    goto :goto_0
.end method

.method private updatePlayPauseState(I)V
    .locals 7
    .parameter "state"

    .prologue
    .line 383
    const-string v4, "TransportControlView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePlayPauseState(), old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v3, 0x0

    .line 387
    .local v3, showIfHidden:Z
    const/4 v2, 0x0

    .line 388
    .local v2, isPlaying:Z
    packed-switch p1, :pswitch_data_0

    .line 415
    :goto_0
    :pswitch_0
    const v1, #drawable@yi_spinner_ab_pressed_baidu_light#t

    .line 416
    .local v1, imageResId:I
    const v0, #string@lockscreen_transport_play_description#t

    .line 419
    .local v0, imageDescId:I
    :goto_1
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 420
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 421
    if-eqz v3, :cond_0

    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    if-eqz v4, :cond_0

    .line 423
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-interface {v4, p0}, Lcom/android/internal/widget/LockScreenWidgetCallback;->requestShow(Landroid/view/View;)V

    .line 426
    :cond_0
    sput p1, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    .line 432
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    if-eqz v4, :cond_1

    .line 433
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-interface {v4, p1}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->onPlayStateChanged(I)V

    .line 435
    :cond_1
    return-void

    .line 390
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :pswitch_1
    const v1, #drawable@stat_sys_warning#t

    .line 395
    .restart local v1       #imageResId:I
    const v0, #string@lockscreen_transport_play_description#t

    .line 396
    .restart local v0       #imageDescId:I
    goto :goto_1

    .line 399
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :pswitch_2
    const v1, #drawable@yi_spinner_ab_pressed_baidu_dark#t

    .line 400
    .restart local v1       #imageResId:I
    const v0, #string@lockscreen_transport_pause_description#t

    .line 401
    .restart local v0       #imageDescId:I
    const/4 v3, 0x1

    .line 402
    const/4 v2, 0x1

    .line 403
    goto :goto_1

    .line 406
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :pswitch_3
    const v1, #drawable@ic_media_stop#t

    .line 407
    .restart local v1       #imageResId:I
    const v0, #string@lockscreen_transport_stop_description#t

    .line 408
    .restart local v0       #imageDescId:I
    const/4 v3, 0x1

    .line 409
    const/4 v2, 0x1

    .line 410
    goto :goto_1

    .line 413
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :pswitch_4
    const/4 v3, 0x1

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private updateTransportControls(I)V
    .locals 0
    .parameter "transportControlFlags"

    .prologue
    .line 257
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportControlFlags:I

    .line 258
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 265
    :cond_0
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    .line 266
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .line 267
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 288
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 289
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    if-nez v0, :cond_1

    .line 295
    const-string v0, "TransportControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering TCV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 298
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    .line 299
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 513
    const/4 v0, -0x1

    .line 514
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPrev:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 515
    const/16 v0, 0x58

    .line 521
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 522
    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sendMediaButtonClick(I)V

    .line 523
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-interface {v1, p0}, Lcom/android/internal/widget/LockScreenWidgetCallback;->userActivity(Landroid/view/View;)V

    .line 527
    :cond_1
    return-void

    .line 516
    :cond_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnNext:Landroid/widget/Button;

    if-ne p1, v1, :cond_3

    .line 517
    const/16 v0, 0x57

    goto :goto_0

    .line 518
    :cond_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 519
    const/16 v0, 0x55

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 303
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 304
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "TransportControlView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering TCV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 309
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    .line 310
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 271
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 272
    const v5, #id@title#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    .line 273
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 274
    const v5, #id@album#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackAlbum:Landroid/widget/TextView;

    .line 275
    const v5, #id@btn_prev#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPrev:Landroid/widget/Button;

    .line 276
    const v5, #id@btn_play#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/Button;

    .line 277
    const v5, #id@btn_next#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnNext:Landroid/widget/Button;

    .line 278
    const/4 v5, 0x3

    new-array v1, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPrev:Landroid/widget/Button;

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/Button;

    aput-object v5, v1, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnNext:Landroid/widget/Button;

    aput-object v6, v1, v5

    .line 281
    .local v1, buttons:[Landroid/view/View;
    move-object v0, v1

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 282
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 314
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 315
    const/16 v1, 0x200

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 318
    .local v0, dim:I
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 493
    const-string v1, "TransportControlView"

    const-string v2, "onRestoreInstanceState()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    instance-of v1, p1, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;

    if-nez v1, :cond_1

    .line 495
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 510
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 498
    check-cast v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;

    .line 499
    .local v0, ss:Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;
    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 505
    iget-boolean v1, v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;->wasIRCDRegistered:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    if-nez v1, :cond_0

    .line 507
    const-string v1, "TransportControlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering TCV "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 474
    const-string v2, "TransportControlView"

    const-string v3, "onSaveInstanceState()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 476
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 481
    .local v0, ss:Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;
    iget-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    if-eqz v2, :cond_0

    .line 483
    const-string v2, "TransportControlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistering TCV "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 486
    :cond_0
    iget-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    iput-boolean v2, v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$SavedState;->wasIRCDRegistered:Z

    .line 487
    return-object v0
.end method

.method public providesClock()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mWidgetCallbacks:Lcom/android/internal/widget/LockScreenWidgetCallback;

    .line 564
    instance-of v0, p1, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    if-eqz v0, :cond_0

    .line 565
    check-cast p1, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .end local p1
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .line 567
    :cond_0
    return-void
.end method
