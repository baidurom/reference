.class public final Lcom/yi/internal/app/RingtonePickerCustomActivity;
.super Landroid/app/Activity;
.source "RingtonePickerCustomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final EXTRA_RINGTONE_TITLE_CN:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE.CN"

.field private static final EXTRA_RINGTONE_TITLE_ID:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE.ID"

.field private static final ID_COLUMN_INDEX:I = 0x0

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RingtonePickerCustomActivity"

.field private static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mActualTypes:I

.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mIncludeDrm:Z

.field private mOkButton:Landroid/widget/Button;

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mProcessReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mTypes:I

.field private mUriForDefaultItem:Landroid/net/Uri;

.field private mVoiceAdapter:Landroid/widget/ListAdapter;

.field private mVoiceList:Landroid/widget/ListView;

.field private registed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mFilterColumns:Ljava/util/List;

    .line 78
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSilentPos:I

    .line 81
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtonePos:I

    .line 84
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    .line 87
    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registed:Z

    .line 403
    new-instance v0, Lcom/yi/internal/app/RingtonePickerCustomActivity$2;

    invoke-direct {v0, p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity$2;-><init>(Lcom/yi/internal/app/RingtonePickerCustomActivity;)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/yi/internal/app/RingtonePickerCustomActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/yi/internal/app/RingtonePickerCustomActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yi/internal/app/RingtonePickerCustomActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->playRingtone(II)V

    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 242
    sget v0, Lyi/util/IDHelper;->STR_RING_DEFAULT:I

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 246
    sget v0, Lyi/util/IDHelper;->STR_RING_SILENT:I

    invoke-direct {p0, p1, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lyi/util/IDHelper;->LAYOUT_SELDLG_SINGLE_HOLO:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 235
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 236
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 237
    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mStaticItemCount:I

    .line 238
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "includeDrm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 475
    const/4 v2, 0x0

    .line 497
    :goto_0
    return-object v2

    .line 476
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 480
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 483
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 485
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 488
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    if-nez p1, :cond_3

    .line 493
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v2, "is_drm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 438
    .local v0, theirContext:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    .line 440
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 385
    if-gez p1, :cond_0

    .line 388
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 464
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, status:Ljava/lang/String;
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    invoke-direct {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setFilterColumnsList(I)V

    .line 466
    const-string v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/yi/internal/app/RingtonePickerCustomActivity;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mFilterColumns:Ljava/util/List;

    iget-boolean v3, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mIncludeDrm:Z

    invoke-static {v0, v3}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method private getMediaStatus()I
    .locals 2

    .prologue
    .line 457
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 379
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private getRingtoneUri(I)Landroid/net/Uri;
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 523
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-object v0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 534
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    iput p1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    .line 314
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    return-void
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mFilterColumns:Ljava/util/List;

    .line 508
    .local v0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 509
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 510
    const-string v1, "is_music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 514
    const-string v1, "is_music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 518
    const-string v1, "is_music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_2
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 376
    :cond_2
    return-void
.end method


# virtual methods
.method public getCursorCustom()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 447
    .local v0, mediaCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 448
    const/4 v1, 0x0

    .line 450
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/database/SortCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "title_key"

    invoke-direct {v1, v2, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lyi/util/IDHelper;->ID_OK_BUTTON:I

    if-ne v6, v7, :cond_6

    .line 255
    iget-object v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 257
    const/4 v4, 0x0

    .line 258
    .local v4, uri:Landroid/net/Uri;
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    iget v7, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSilentPos:I

    if-ne v6, v7, :cond_0

    .line 260
    const/4 v4, 0x0

    .line 265
    :goto_0
    if-nez v4, :cond_1

    .line 267
    sget v6, Lyi/util/IDHelper;->STR_RING_PICK_NO_SEL:I

    invoke-virtual {p0, v6}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 270
    .local v3, toast:Landroid/widget/Toast;
    const/16 v6, 0x11

    invoke-virtual {v3, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 271
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 272
    invoke-virtual {p0, v8}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setResult(I)V

    .line 299
    .end local v0           #message:Ljava/lang/String;
    .end local v3           #toast:Landroid/widget/Toast;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 262
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_0
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    invoke-direct {p0, v6}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getRingtoneManagerPosition(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 277
    .local v1, resolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 278
    .local v5, values:Landroid/content/ContentValues;
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mActualTypes:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 279
    const-string v6, "is_ringtone"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_2
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mActualTypes:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    .line 281
    const-string v6, "is_notification"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_3
    iget v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mActualTypes:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_4

    .line 283
    const-string v6, "is_alarm"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v5           #values:Landroid/content/ContentValues;
    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v2, resultIntent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 293
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v2}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setResult(ILandroid/content/Intent;)V

    .line 298
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #resultIntent:Landroid/content/Intent;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->finish()V

    goto :goto_1

    .line 294
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lyi/util/IDHelper;->ID_CANCEL_BUTTON:I

    if-ne v6, v7, :cond_5

    .line 295
    invoke-virtual {p0, v8}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setResult(I)V

    .line 296
    iget-object v6, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    goto :goto_3

    .line 286
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget v0, Lyi/util/IDHelper;->LAYOUT_YI_RINGTONE:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setContentView(I)V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHandler:Landroid/os/Handler;

    .line 121
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 127
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHasDefaultItem:Z

    .line 128
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 129
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 134
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mHasSilentItem:Z

    .line 137
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 140
    const-string v0, "android.intent.extra.ringtone.INCLUDE_DRM"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mIncludeDrm:Z

    .line 141
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-boolean v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mIncludeDrm:Z

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 143
    const-string v0, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 144
    .local v6, Title:Ljava/lang/CharSequence;
    if-nez v6, :cond_1

    .line 145
    sget v0, Lyi/util/IDHelper;->STR_RING_PICK:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    :cond_1
    invoke-virtual {p0, v6}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    const-string v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, -0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    .line 151
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    iput v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mActualTypes:I

    .line 152
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    .line 153
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setVolumeControlStream(I)V

    .line 164
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mExistingUri:Landroid/net/Uri;

    .line 166
    sget v0, Lyi/util/IDHelper;->ID_VOICE_LIST:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    .line 167
    const v0, #id@empty#t

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 168
    .local v8, emptyView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getCursorCustom()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    .line 169
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, #layout@select_dialog_singlechoice#t

    iget-object v3, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    const v12, #id@text1#t

    aput v12, v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceAdapter:Landroid/widget/ListAdapter;

    .line 175
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->onPrepareListView(Landroid/widget/ListView;)V

    .line 177
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getMediaStatus()I

    move-result v10

    .line 178
    .local v10, mediaStatus:I
    if-nez v10, :cond_2

    .line 179
    sget v0, Lyi/util/IDHelper;->ID_EMPTY_TEXT:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 180
    .local v11, text:Landroid/widget/TextView;
    sget v0, Lyi/util/IDHelper;->STR_RING_PICK_SD_UNMOUNT:I

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 182
    .end local v11           #text:Landroid/widget/TextView;
    :cond_2
    if-eqz v8, :cond_3

    .line 183
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 187
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    new-instance v1, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;

    invoke-direct {v1, p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity$1;-><init>(Lcom/yi/internal/app/RingtonePickerCustomActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 199
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mVoiceList:Landroid/widget/ListView;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 201
    sget v0, Lyi/util/IDHelper;->ID_OK_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    .line 202
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 204
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    :cond_4
    sget v0, Lyi/util/IDHelper;->ID_CANCEL_BUTTON:I

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 208
    .local v7, buttonCancel:Landroid/widget/Button;
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-void

    .line 155
    .end local v7           #buttonCancel:Landroid/widget/Button;
    .end local v8           #emptyView:Landroid/view/View;
    .end local v10           #mediaStatus:I
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    .line 156
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mTypes:I

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registed:Z

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 423
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 424
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 305
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->playRingtone(II)V

    .line 306
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 428
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 429
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->setResult(I)V

    .line 431
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 309
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 361
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 362
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->stopAnyPlayingRingtone()V

    .line 363
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 3
    .parameter "listView"

    .prologue
    const/4 v2, -0x1

    .line 213
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    if-ne v0, v2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    .line 218
    :cond_0
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mClickedPos:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 394
    iget-boolean v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registed:Z

    if-nez v1, :cond_0

    .line 395
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 396
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mProcessReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->registed:Z

    .line 401
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 356
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->stopAnyPlayingRingtone()V

    .line 357
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->stopAnyPlayingRingtone()V

    .line 320
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSilentPos:I

    if-ne v0, v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    iget v1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtonePos:I

    if-ne v0, v1, :cond_3

    .line 330
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 341
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 348
    :goto_1
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 344
    :cond_3
    iget v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v0}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity;->mPreviousRingtone:Landroid/media/Ringtone;

    goto :goto_1
.end method
