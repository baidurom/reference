.class public Lcom/android/phone/ADNList;
.super Landroid/app/ListActivity;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ADNList$1;,
        Lcom/android/phone/ADNList$ADNListBroadcastReceiver;,
        Lcom/android/phone/ADNList$QueryHandler;
    }
.end annotation


# static fields
.field protected static final ADDITIONAL_NUMBER_COLUMN:I = 0x4

.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field protected static final DBG:Z = false

.field protected static final DELETE_TOKEN:I = 0x3

.field protected static final EMAIL_COLUMN:I = 0x3

.field protected static final GROUP_COLUMN:I = 0x5

.field protected static final INDEX_COLUMN:I = 0x0

.field protected static final INSERT_TOKEN:I = 0x1

.field protected static final NAME_COLUMN:I = 0x1

.field protected static final NUMBER_COLUMN:I = 0x2

.field protected static final QUERY_TOKEN:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "ADNList"

.field protected static final UPDATE_TOKEN:I = 0x2

.field private static final VIEW_NAMES:[I


# instance fields
.field protected mAirplaneMode:Z

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorAdapter:Landroid/widget/CursorAdapter;

.field private mEmptyText:Landroid/widget/TextView;

.field protected mIndicate:I

.field protected mInitialSelection:I

.field protected mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "index"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "additionalNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "groupIds"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    .line 67
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/android/phone/ADNList;->mAirplaneMode:Z

    .line 80
    iput-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    .line 84
    iput v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 88
    new-instance v0, Lcom/android/phone/ADNList$ADNListBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ADNList$ADNListBroadcastReceiver;-><init>(Lcom/android/phone/ADNList;Lcom/android/phone/ADNList$1;)V

    iput-object v0, p0, Lcom/android/phone/ADNList;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 256
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/ADNList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/ADNList;->setAdapter()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/ADNList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/ADNList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/phone/ADNList;->reQuery()V

    return-void
.end method

.method private displayProgress(Z)V
    .locals 7
    .parameter "flag"

    .prologue
    const v3, 0x7f0b0159

    const/4 v5, 0x1

    .line 186
    iget v4, p0, Lcom/android/phone/ADNList;->mSimId:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/phone/ADNList;->mSimId:I

    if-ne v4, v5, :cond_2

    .line 187
    :cond_0
    const v0, 0x7f0b0157

    .line 188
    .local v0, LoadingResId:I
    iget v4, p0, Lcom/android/phone/ADNList;->mSimId:I

    invoke-static {p0, v4}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 189
    .local v1, info:Landroid/provider/Telephony$SIMInfo;
    const-string v2, ""

    .line 190
    .local v2, text:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 192
    iget-object v3, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .end local v0           #LoadingResId:I
    .end local v1           #info:Landroid/provider/Telephony$SIMInfo;
    .end local v2           #text:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    if-eqz p1, :cond_5

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v4, v5, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 205
    return-void

    .line 194
    .restart local v0       #LoadingResId:I
    .restart local v1       #info:Landroid/provider/Telephony$SIMInfo;
    .restart local v2       #text:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 197
    .end local v0           #LoadingResId:I
    .end local v1           #info:Landroid/provider/Telephony$SIMInfo;
    .end local v2           #text:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v3, 0x7f0b0158

    :cond_3
    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/android/phone/ADNList;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v3, 0x7f0b015b

    goto :goto_2

    .line 202
    :cond_5
    const/4 v3, -0x2

    goto :goto_1
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private query()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->resolveIntent()Landroid/net/Uri;

    move-result-object v3

    .line 128
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/ADNList$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/ADNList;->displayProgress(Z)V

    .line 131
    return-void
.end method

.method private reQuery()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 135
    return-void
.end method

.method private setAdapter()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->newAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    .line 165
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    :goto_0
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 171
    iget v0, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->setSelection(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 175
    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursorAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 247
    const-string v0, "ADNList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ADNList] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 178
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f040001

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    new-array v4, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v5, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v1

    sget-object v1, Lcom/android/phone/ADNList;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v7

    aput-object v1, v4, v6

    sget-object v5, Lcom/android/phone/ADNList;->VIEW_NAMES:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 93
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->setContentView(I)V

    .line 94
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/phone/ADNList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/ADNList;->mEmptyText:Landroid/widget/TextView;

    .line 95
    new-instance v1, Lcom/android/phone/ADNList$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/phone/ADNList$QueryHandler;-><init>(Lcom/android/phone/ADNList;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/phone/ADNList;->mQueryHandler:Lcom/android/phone/ADNList$QueryHandler;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/phone/ADNList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/ADNList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 253
    iget-object v0, p0, Lcom/android/phone/ADNList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/ADNList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 105
    invoke-direct {p0}, Lcom/android/phone/ADNList;->query()V

    .line 106
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 111
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 114
    :cond_0
    return-void
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/phone/ADNList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 119
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
