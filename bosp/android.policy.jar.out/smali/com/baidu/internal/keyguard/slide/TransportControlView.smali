.class public Lcom/baidu/internal/keyguard/slide/TransportControlView;
.super Landroid/widget/RelativeLayout;
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

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mClientGeneration:I

.field private mClientIntent:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

.field private mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

.field private mPopulateMetadataWhenAttached:Landroid/os/Bundle;

.field mShowIfHidden:Z

.field mSpectrumSensorManager:Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;

.field mSpectrumView:Lcom/baidu/internal/keyguard/slide/SpectrumView;

.field private mTrackAlbumTitle:Landroid/widget/TextView;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransportControlFlags:I

.field private mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput v0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;-><init>(Lcom/baidu/internal/keyguard/slide/TransportControlView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    .line 85
    iput-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mShowIfHidden:Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 96
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$1;-><init>(Lcom/baidu/internal/keyguard/slide/TransportControlView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mHandler:Landroid/os/Handler;

    .line 308
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

    .line 309
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mContext:Landroid/content/Context;

    .line 310
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    .line 311
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    .line 312
    sput v3, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    .line 313
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #drawable@baidu_keyguard_slide_album_default#t

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->createImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/TransportControlView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientGeneration:I

    return v0
.end method

.method static synthetic access$002(Lcom/baidu/internal/keyguard/slide/TransportControlView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientGeneration:I

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/TransportControlView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$1002(Lcom/baidu/internal/keyguard/slide/TransportControlView;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/slide/TransportControlView;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/slide/TransportControlView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/slide/TransportControlView;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    return v0
.end method

.method private getMdString(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "id"

    .prologue
    .line 421
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private populateMetadata()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1300(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1300(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1200(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackAlbumTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1200(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_1
    sget v0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updatePlayPauseState(I)V

    .line 474
    return-void
.end method

.method private sendMediaButtonClick(I)V
    .locals 6
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x0

    .line 638
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_0

    .line 641
    const-string v3, "TransportControlView"

    const-string v4, "sendMediaButtonClick(): No client is currently registered"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_0
    return-void

    .line 647
    :cond_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v4, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 648
    .local v2, keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 651
    :try_start_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 657
    :goto_1
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 658
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 659
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 661
    :try_start_1
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mClientIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
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

    .line 664
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0

    .line 652
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v0

    .line 653
    .restart local v0       #e:Landroid/app/PendingIntent$CanceledException;
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

    .line 654
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1
.end method

.method private setVisualizerEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 385
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_0

    .line 386
    const-string v1, "TransportControlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set visualizer enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1, p1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "TransportControlView"

    const-string v2, "setEnabled fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 27
    .parameter "bitmap"

    .prologue
    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 180
    .local v22, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 183
    .local v13, height:I
    move/from16 v0, v22

    if-ge v0, v13, :cond_0

    .line 184
    div-int/lit8 v23, v22, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v17, v0

    .line 185
    .local v17, radiusPx:F
    div-int/lit8 v23, v13, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v21, v23, v17

    .line 186
    .local v21, top:F
    div-int/lit8 v23, v13, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v5, v23, v17

    .line 187
    .local v5, bottom:F
    const/4 v14, 0x0

    .line 188
    .local v14, left:F
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v19, v0

    .line 189
    .local v19, right:F
    move/from16 v13, v22

    .line 190
    const/4 v10, 0x0

    .line 191
    .local v10, dst_left:F
    const/4 v12, 0x0

    .line 192
    .local v12, dst_top:F
    move/from16 v0, v22

    int-to-float v11, v0

    .line 193
    .local v11, dst_right:F
    move/from16 v0, v22

    int-to-float v9, v0

    .line 207
    .local v9, dst_bottom:F
    :goto_0
    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 208
    .local v15, output:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    .local v6, canvas:Landroid/graphics/Canvas;
    const v7, -0xbdbdbe

    .line 211
    .local v7, color:I
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 212
    .local v16, paint:Landroid/graphics/Paint;
    new-instance v20, Landroid/graphics/Rect;

    float-to-int v0, v14

    move/from16 v23, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v25, v0

    float-to-int v0, v5

    move/from16 v26, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 213
    .local v20, src:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    float-to-int v0, v10

    move/from16 v23, v0

    float-to-int v0, v12

    move/from16 v24, v0

    float-to-int v0, v11

    move/from16 v25, v0

    float-to-int v0, v9

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 214
    .local v8, dst:Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/RectF;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 216
    .local v18, rectF:Landroid/graphics/RectF;
    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 219
    const v23, -0xbdbdbe

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v17

    move-object/from16 v3, v16

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 222
    new-instance v23, Landroid/graphics/PorterDuffXfermode;

    sget-object v24, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v23 .. v24}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 223
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v6, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 224
    return-object v15

    .line 195
    .end local v5           #bottom:F
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v7           #color:I
    .end local v8           #dst:Landroid/graphics/Rect;
    .end local v9           #dst_bottom:F
    .end local v10           #dst_left:F
    .end local v11           #dst_right:F
    .end local v12           #dst_top:F
    .end local v14           #left:F
    .end local v15           #output:Landroid/graphics/Bitmap;
    .end local v16           #paint:Landroid/graphics/Paint;
    .end local v17           #radiusPx:F
    .end local v18           #rectF:Landroid/graphics/RectF;
    .end local v19           #right:F
    .end local v20           #src:Landroid/graphics/Rect;
    .end local v21           #top:F
    :cond_0
    div-int/lit8 v23, v13, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v17, v0

    .line 196
    .restart local v17       #radiusPx:F
    div-int/lit8 v23, v22, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v14, v23, v17

    .line 197
    .restart local v14       #left:F
    div-int/lit8 v23, v22, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v19, v23, v17

    .line 198
    .restart local v19       #right:F
    const/16 v21, 0x0

    .line 199
    .restart local v21       #top:F
    int-to-float v5, v13

    .line 200
    .restart local v5       #bottom:F
    move/from16 v22, v13

    .line 201
    const/4 v10, 0x0

    .line 202
    .restart local v10       #dst_left:F
    const/4 v12, 0x0

    .line 203
    .restart local v12       #dst_top:F
    int-to-float v11, v13

    .line 204
    .restart local v11       #dst_right:F
    int-to-float v9, v13

    .restart local v9       #dst_bottom:F
    goto/16 :goto_0
.end method

.method private updateMetadata(Landroid/os/Bundle;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 425
    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    if-eqz v3, :cond_4

    .line 426
    const/4 v3, 0x2

    invoke-direct {p0, p1, v3}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, artistString:Ljava/lang/String;
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artistString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    const/16 v3, 0xd

    invoke-direct {p0, p1, v3}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v0

    .line 431
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    const-string v0, ""

    .line 434
    :cond_1
    const/16 v3, 0x5f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 435
    .local v1, index:I
    const/4 v2, 0x0

    .line 436
    .local v2, newSessionId:I
    if-ltz v1, :cond_3

    .line 437
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1202(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 439
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1200(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    const/4 v4, 0x7

    invoke-direct {p0, p1, v4}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1302(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getMdString(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1402(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackTitle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1300(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "albumTitle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1400(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->populateMetadata()V

    .line 449
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->sessionId:I
    invoke-static {v3}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1100(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)I

    move-result v3

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v3, :cond_2

    .line 450
    const-string v3, "TransportControlView"

    const-string v4, "init Visualizer"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->sessionId:I
    invoke-static {v3, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1102(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;I)I

    .line 452
    new-instance v3, Landroid/media/audiofx/Visualizer;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->sessionId:I
    invoke-static {v4}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1100(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 453
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 454
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mSpectrumView:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3, v4}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->setVisualizer(Landroid/media/audiofx/Visualizer;)V

    .line 459
    .end local v0           #artistString:Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #newSessionId:I
    :cond_2
    :goto_1
    return-void

    .line 441
    .restart local v0       #artistString:Ljava/lang/String;
    .restart local v1       #index:I
    .restart local v2       #newSessionId:I
    :cond_3
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #setter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1202(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 442
    const-string v3, "TransportControlView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1200(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 457
    .end local v0           #artistString:Ljava/lang/String;
    .end local v1           #index:I
    .end local v2           #newSessionId:I
    :cond_4
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    goto :goto_1
.end method

.method private updatePlayPauseState(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 478
    const-string v2, "TransportControlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePlayPauseState(), old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    packed-switch p1, :pswitch_data_0

    .line 506
    :goto_0
    :pswitch_0
    const v1, #drawable@baidu_keyguard_slide_play#t

    .line 507
    .local v1, imageResId:I
    const v0, #string@lockscreen_transport_play_description#t

    .line 510
    .local v0, imageDescId:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 511
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 512
    iget-boolean v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mShowIfHidden:Z

    if-eqz v2, :cond_2

    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-interface {v2, p0}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->requestShow(Landroid/view/View;)V

    .line 523
    :cond_0
    :goto_2
    sput p1, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sCurrentPlayState:I

    .line 529
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    if-eqz v2, :cond_1

    .line 530
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-interface {v2, p1}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->onPlayStateChanged(I)V

    .line 532
    :cond_1
    return-void

    .line 483
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :pswitch_1
    const v1, #drawable@stat_sys_warning#t

    .line 488
    .restart local v1       #imageResId:I
    const v0, #string@lockscreen_transport_play_description#t

    .line 489
    .restart local v0       #imageDescId:I
    goto :goto_1

    .line 492
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :pswitch_2
    const v1, #drawable@baidu_keyguard_slide_pause#t

    .line 493
    .restart local v1       #imageResId:I
    const v0, #string@lockscreen_transport_pause_description#t

    .line 494
    .restart local v0       #imageDescId:I
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mShowIfHidden:Z

    goto :goto_1

    .line 498
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :pswitch_3
    const v1, #drawable@ic_media_stop#t

    .line 499
    .restart local v1       #imageResId:I
    const v0, #string@lockscreen_transport_stop_description#t

    .line 500
    .restart local v0       #imageDescId:I
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mShowIfHidden:Z

    goto :goto_1

    .line 504
    .end local v0           #imageDescId:I
    .end local v1           #imageResId:I
    :pswitch_4
    iput-boolean v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mShowIfHidden:Z

    goto :goto_0

    .line 519
    .restart local v0       #imageDescId:I
    .restart local v1       #imageResId:I
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-interface {v2, p0}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->requestHide(Landroid/view/View;)V

    goto :goto_2

    .line 481
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
    .line 318
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportControlFlags:I

    .line 319
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 324
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 326
    :cond_0
    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .line 327
    return-void
.end method

.method public createImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "src"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 228
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 229
    .local v4, paint:Landroid/graphics/Paint;
    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #drawable@baidu_keyguard_slide_music_covermask#t

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    .local v1, dst:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 233
    .local v3, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 235
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 236
    .local v5, srcRect:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v2, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    .local v2, dstRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v1, v10, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 240
    invoke-virtual {v0, p1, v5, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 241
    return-object v3
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 350
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 351
    const-string v0, "TransportControlView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    if-nez v0, :cond_0

    .line 354
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

    .line 355
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 356
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->sessionId:I
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1100(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Landroid/media/audiofx/Visualizer;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mMetadata:Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;

    #getter for: Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->sessionId:I
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;->access$1100(Lcom/baidu/internal/keyguard/slide/TransportControlView$Metadata;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 358
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 359
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mSpectrumView:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->setVisualizer(Landroid/media/audiofx/Visualizer;)V

    .line 362
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 620
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 621
    const/4 v0, -0x1

    .line 622
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 623
    const/16 v0, 0x58

    .line 629
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 630
    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->sendMediaButtonClick(I)V

    .line 631
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-interface {v1, p0}, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;->userActivity(Landroid/view/View;)V

    .line 635
    :cond_1
    return-void

    .line 624
    :cond_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnNext:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_3

    .line 625
    const/16 v0, 0x57

    goto :goto_0

    .line 626
    :cond_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_0

    .line 627
    const/16 v0, 0x55

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 366
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 367
    const-string v1, "TransportControlView"

    const-string v2, "onDetachedFromWindow()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "TransportControlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistering TCV "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_1

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->release()V

    .line 381
    :cond_1
    iput-boolean v4, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    .line 382
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "TransportControlView"

    const-string v2, "setEnabled fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 331
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 332
    const v5, #id@title#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    .line 333
    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 334
    const v5, #id@album_title#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTrackAlbumTitle:Landroid/widget/TextView;

    .line 335
    const v5, #id@btn_prev#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    .line 336
    const v5, #id@btn_play#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    .line 337
    const v5, #id@btn_next#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnNext:Landroid/widget/ImageView;

    .line 338
    const v5, #id@music_bg#t

    invoke-virtual {p0, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/internal/keyguard/slide/SpectrumView;

    iput-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mSpectrumView:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    .line 340
    const/4 v5, 0x3

    new-array v1, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    aput-object v5, v1, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mBtnNext:Landroid/widget/ImageView;

    aput-object v6, v1, v5

    .line 343
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

    .line 344
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v4           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 397
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 398
    const/16 v1, 0x200

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 401
    .local v0, dim:I
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 594
    const-string v0, "TransportControlView"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iput-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    .line 596
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->updateMetadata(Landroid/os/Bundle;)V

    .line 598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mPopulateMetadataWhenAttached:Landroid/os/Bundle;

    .line 601
    :cond_0
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

    .line 602
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 603
    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisualizerEnable(Z)V

    .line 605
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mShowIfHidden:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mSpectrumView:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->show()V

    .line 607
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mSpectrumView:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->registerListener(Landroid/hardware/SensorEventListener;)V

    .line 609
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 617
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 571
    const-string v0, "TransportControlView"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    if-eqz v0, :cond_0

    .line 578
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

    .line 579
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mIRCD:Lcom/baidu/internal/keyguard/slide/TransportControlView$IRemoteControlDisplayWeak;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 580
    iput-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mAttached:Z

    .line 583
    :cond_0
    invoke-direct {p0, v3}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisualizerEnable(Z)V

    .line 584
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mSpectrumView:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/SpectrumView;->hide()V

    .line 586
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->getInstance(Landroid/content/Context;)Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mSpectrumView:Lcom/baidu/internal/keyguard/slide/SpectrumView;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SpectrumSensorManager;->unRegisterListener(Landroid/hardware/SensorEventListener;)V

    .line 588
    :cond_1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public providesClock()Z
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 669
    check-cast p1, Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .end local p1
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TransportControlView;->mTransportWidgetCallbacks:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .line 670
    return-void
.end method
