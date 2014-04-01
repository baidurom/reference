.class public final Lcom/android/internal/app/RingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final ADD_MORE_RINGTONES:I = 0x1

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final SAVE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasMoreRingtonesItem:Z

.field private mHasSilentItem:Z

.field private mMoreRingtonesPos:I

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mType:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 68
    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 71
    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 74
    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 77
    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasMoreRingtonesItem:Z

    .line 98
    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mMoreRingtonesPos:I

    .line 101
    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    .line 109
    new-instance v0, Lcom/android/internal/app/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RingtonePickerActivity$1;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/RingtonePickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mMoreRingtonesPos:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/RingtonePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/RingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 269
    const v0, #string@ringtone_default#t

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addMoreRingtonesItem(Landroid/widget/ListView;)I
    .locals 4
    .parameter "listView"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, #layout@simple_list_item_1#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, textView:Landroid/widget/TextView;
    const v1, #string@Add_More_Ringtones#t

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 281
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    .line 282
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 273
    const v0, #string@ringtone_silent#t

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, #layout@select_dialog_singlechoice_holo#t

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 263
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 264
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    .line 265
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 417
    if-gez p1, :cond_0

    .line 419
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 411
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 335
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 336
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    return-void
.end method

.method private setRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 467
    .local v2, resolver:Landroid/content/ContentResolver;
    :try_start_0
    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-ne v4, v7, :cond_0

    .line 468
    const-string v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown ringtone type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 472
    .local v3, values:Landroid/content/ContentValues;
    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-eq v5, v4, :cond_1

    const/16 v4, 0x8

    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-ne v4, v5, :cond_2

    .line 473
    :cond_1
    const-string v4, "is_ringtone"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, p2}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v1

    .line 492
    .local v1, position:I
    const-string v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRingtone: uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-eq v1, v7, :cond_5

    .line 494
    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 495
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iput v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    goto :goto_0

    .line 474
    .end local v1           #position:I
    :cond_2
    const/4 v4, 0x4

    :try_start_1
    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-ne v4, v5, :cond_3

    .line 475
    const-string v4, "is_alarm"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 483
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 485
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    const-string v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t set ringtone flag for uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 476
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v4, 0x2

    :try_start_2
    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-ne v4, v5, :cond_4

    .line 477
    const-string v4, "is_notification"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 479
    :cond_4
    const-string v4, "RingtonePickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupport ringtone type =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 497
    .restart local v1       #position:I
    :cond_5
    const-string v4, "RingtonePickerActivity"

    const-string/jumbo v5, "setRingtone: get position is invalid!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 408
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 424
    packed-switch p1, :pswitch_data_0

    .line 461
    :goto_0
    return-void

    .line 426
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 427
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 428
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->setRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    .line 429
    const-string v3, "RingtonePickerActivity"

    const-string v4, "RESULT_OK, so set to be ringtone!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v3}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 438
    .local v2, listView:Landroid/widget/ListView;
    if-eqz v2, :cond_3

    .line 439
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 440
    .local v0, adapter:Landroid/widget/ListAdapter;
    move-object v1, v0

    .line 441
    .local v1, headAdapter:Landroid/widget/ListAdapter;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v3, :cond_2

    .line 443
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .end local v1           #headAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 445
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    .line 446
    check-cast v3, Landroid/widget/SimpleCursorAdapter;

    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 447
    const-string v3, "RingtonePickerActivity"

    const-string/jumbo v4, "setRingtone: notify cursor adapter update listview with new cursor!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_2
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 452
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 454
    const-string v3, "RingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRingtone: set position to be checked: mClickedPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_1
    const-string v3, "RingtonePickerActivity"

    const-string v4, "Cancel to choose more ringtones, so do nothing!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 449
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #headAdapter:Landroid/widget/ListAdapter;
    .restart local v2       #listView:Landroid/widget/ListView;
    :cond_2
    const-string v3, "RingtonePickerActivity"

    const-string/jumbo v4, "setRingtone: cursor adapter is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 456
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #headAdapter:Landroid/widget/ListAdapter;
    :cond_3
    const-string v3, "RingtonePickerActivity"

    const-string/jumbo v4, "setRingtone: listview is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 289
    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    .line 292
    .local v0, positiveResult:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 294
    if-eqz v0, :cond_3

    .line 295
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 298
    .local v2, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 308
    :goto_1
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v5, v1}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 314
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/RingtonePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/internal/app/RingtonePickerActivity$2;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->finish()V

    .line 321
    return-void

    .end local v0           #positiveResult:Z
    :cond_0
    move v0, v3

    .line 289
    goto :goto_0

    .line 301
    .restart local v0       #positiveResult:Z
    .restart local v1       #resultIntent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_1
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_2

    .line 303
    const/4 v2, 0x0

    goto :goto_1

    .line 305
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 311
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(I)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 138
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 148
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 149
    const-string v3, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 150
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 151
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 154
    :cond_0
    if-eqz p1, :cond_1

    .line 155
    const-string v3, "clicked_pos"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 158
    :cond_1
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    .line 161
    const-string v3, "android.intent.extra.ringtone.SHOW_MORE_RINGTONES"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasMoreRingtonesItem:Z

    .line 164
    new-instance v3, Landroid/media/RingtoneManager;

    invoke-direct {v3, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 167
    const-string v3, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 169
    .local v0, includeDrm:Z
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3, v0}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 172
    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    .line 173
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-eq v3, v6, :cond_2

    .line 174
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->setType(I)V

    .line 177
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 180
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 183
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 186
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 187
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 188
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    const-string/jumbo v3, "title"

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 190
    iput-boolean v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 191
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 192
    const v3, #string@ok#t

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 193
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 194
    const/high16 v3, 0x104

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 195
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 196
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 198
    const-string v3, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 199
    iget-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    .line 200
    const v3, #string@ringtone_picker_title#t

    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->setupAlert()V

    .line 204
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 394
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 327
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    .line 328
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 331
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 387
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 388
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 389
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    const/4 v3, -0x1

    .line 213
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrepareListView>>>: mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 217
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasMoreRingtonesItem:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addMoreRingtonesItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mMoreRingtonesPos:I

    .line 226
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_2

    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 230
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 231
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 235
    :cond_2
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v3, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 240
    :cond_3
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v3, :cond_4

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 248
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrepareListView<<<: mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 209
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 381
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 382
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 383
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 341
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 356
    :cond_2
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    .line 357
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 368
    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 374
    :goto_1
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 371
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method
