.class public Lcom/android/phone/AutoRedialListActivity;
.super Landroid/app/ListActivity;
.source "AutoRedialListActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_INDEX_IN_CURSOR:I = 0x0

.field private static final NAME_INDEX_IN_CURSOR:I = 0x1

.field private static final NUMBER_INDEX_IN_CURSOR:I = 0x2

.field private static final QUERY_LOADER_ID:I = 0x0

.field private static final REPEAT_INDEX_IN_CURSOR:I = 0x3

.field private static final SPEAKER_INDEX_IN_CURSOR:I = 0x4


# instance fields
.field private final REQUEST_CODE_PICK:I

.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field final result:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/AutoRedialListActivity;->REQUEST_CODE_PICK:I

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->result:Ljava/lang/StringBuffer;

    .line 392
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AutoRedialListActivity;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/AutoRedialListActivity;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/AutoRedialListActivity;->showEditDialog(ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/AutoRedialListActivity;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/AutoRedialListActivity;->updateRecordByEdit(ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/AutoRedialListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/AutoRedialListActivity;->refreshList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/AutoRedialListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/AutoRedialListActivity;->launchPhonePicker()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/AutoRedialListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/AutoRedialListActivity;->launchSinglePhoneInput()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/AutoRedialListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/AutoRedialListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/AutoRedialListActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/AutoRedialListActivity;->deleteFromADList(I)I

    move-result v0

    return v0
.end method

.method private deleteFromADList(I)I
    .locals 5
    .parameter "_id"

    .prologue
    .line 460
    const-string v2, "_id = ?"

    .line 461
    .local v2, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 462
    .local v1, selectionArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 464
    .local v0, count:I
    return v0
.end method

.method public static hasBeenExistedInADList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 337
    const/4 v7, 0x0

    .line 338
    .local v7, result:Z
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 339
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL(number, ?, 0)"

    .line 340
    .local v3, selection:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 342
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 346
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 347
    const/4 v7, 0x1

    .line 350
    :cond_0
    if-eqz v6, :cond_1

    .line 351
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 352
    const/4 v6, 0x0

    .line 355
    :cond_1
    return v7

    .line 350
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 351
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 352
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static insertToADList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "number"
    .parameter "rt"
    .parameter "so"

    .prologue
    .line 362
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 363
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "speaker"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v1, "repeat"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 368
    return-void
.end method

.method private launchPhonePicker()V
    .locals 3

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const-string v2, "content://contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 240
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/AutoRedialListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    return-void
.end method

.method private launchSinglePhoneInput()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/AutoRedialListManuallyInputActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialListActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method private processPickedResult(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 272
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v0, v3

    .line 274
    .local v0, phoneNumberProjection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/phone/AutoRedialListActivity$6;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/phone/AutoRedialListActivity$6;-><init>(Lcom/android/phone/AutoRedialListActivity;Landroid/net/Uri;[Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 329
    .local v1, t:Ljava/lang/Thread;
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 330
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 331
    return-void
.end method

.method private refreshList()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/AutoRedialListActivity$7;

    invoke-direct {v1, p0}, Lcom/android/phone/AutoRedialListActivity$7;-><init>(Lcom/android/phone/AutoRedialListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/phone/AutoRedialListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mListView:Landroid/widget/ListView;

    .line 87
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/AutoRedialListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    const v0, #id@empty#t

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mEmptyView:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/AutoRedialListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/AutoRedialListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/AutoRedialListActivity$1;-><init>(Lcom/android/phone/AutoRedialListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    return-void
.end method

.method private showEditDialog(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 13
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "rc"
    .parameter "so"

    .prologue
    .line 110
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 111
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 112
    .local v10, view:Landroid/view/View;
    const v1, 0x7f07000f

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 113
    .local v3, nameET:Landroid/widget/EditText;
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const v1, 0x7f070012

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 115
    .local v4, numberET:Landroid/widget/EditText;
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const v1, 0x7f070016

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 117
    .local v5, repeatET:Landroid/widget/EditText;
    const/4 v1, -0x1

    move/from16 v0, p4

    if-eq v0, v1, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v1, 0x7f070018

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 119
    .local v6, cb1:Landroid/widget/CheckBox;
    if-eqz v6, :cond_0

    .line 120
    const/4 v1, -0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 122
    new-instance v1, Lcom/android/phone/AutoRedialListActivity$2;

    invoke-direct {v1, p0, v5, v6}, Lcom/android/phone/AutoRedialListActivity$2;-><init>(Lcom/android/phone/AutoRedialListActivity;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_0
    const v1, 0x7f07001b

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 134
    .local v7, cb2:Landroid/widget/CheckBox;
    if-eqz v7, :cond_1

    .line 135
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c028e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, #string@ok#t

    new-instance v1, Lcom/android/phone/AutoRedialListActivity$4;

    move-object v2, p0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/phone/AutoRedialListActivity$4;-><init>(Lcom/android/phone/AutoRedialListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;I)V

    invoke-virtual {v11, v12, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v8, Lcom/android/phone/AutoRedialListActivity$3;

    invoke-direct {v8, p0}, Lcom/android/phone/AutoRedialListActivity$3;-><init>(Lcom/android/phone/AutoRedialListActivity;)V

    invoke-virtual {v1, v2, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 165
    return-void

    .line 117
    .end local v6           #cb1:Landroid/widget/CheckBox;
    .end local v7           #cb2:Landroid/widget/CheckBox;
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 120
    .restart local v6       #cb1:Landroid/widget/CheckBox;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 121
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 135
    .restart local v7       #cb2:Landroid/widget/CheckBox;
    :cond_5
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private showRedialListCreateDialog()V
    .locals 5

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, ADD_FROM_CONTACTS:I
    const/4 v0, 0x1

    .line 219
    .local v0, ADD_BY_INPUT_NUMBER:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c028c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06001c

    new-instance v4, Lcom/android/phone/AutoRedialListActivity$5;

    invoke-direct {v4, p0}, Lcom/android/phone/AutoRedialListActivity$5;-><init>(Lcom/android/phone/AutoRedialListActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 236
    return-void
.end method

.method private updateRecordByEdit(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "rt"
    .parameter "so"

    .prologue
    .line 171
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/android/phone/AutoRedialListActivity;->deleteFromADList(I)I

    .line 186
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "number"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "repeat"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v3, "speaker"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v2, "_id = ?"

    .line 182
    .local v2, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 183
    .local v0, selectionArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 256
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 263
    invoke-direct {p0, p3}, Lcom/android/phone/AutoRedialListActivity;->processPickedResult(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 64
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialListActivity;->setContentView(I)V

    .line 65
    iput-object p0, p0, Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;

    iget-object v2, p0, Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f040027

    new-array v5, v8, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v5, v7

    const/4 v1, 0x1

    const-string v6, "number"

    aput-object v6, v5, v1

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/AutoRedialListActivity$RedialListAdapter;-><init>(Lcom/android/phone/AutoRedialListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/AutoRedialListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v7, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 71
    return-void

    .line 66
    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x7t 0x7ft
        0x1et 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 372
    sget-object v2, Lcom/android/phone/AutoRedialProvider$AutoRedialDBColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 373
    .local v2, redialListUri:Landroid/net/Uri;
    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "name"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "number"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "repeat"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "speaker"

    aput-object v1, v3, v0

    .line 378
    .local v3, projection:[Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/phone/AutoRedialListActivity;->mContext:Landroid/content/Context;

    const-string v6, "name"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 191
    invoke-virtual {p0}, Lcom/android/phone/AutoRedialListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 192
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 193
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0c02e5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 194
    const/4 v1, 0x1

    return v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 385
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/AutoRedialListActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 390
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 208
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 201
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/AutoRedialListActivity;->finish()V

    goto :goto_0

    .line 205
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/AutoRedialListActivity;->showRedialListCreateDialog()V

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        #id@home#t -> :sswitch_0
        0x7f0700d8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/android/phone/AutoRedialListActivity;->setupView()V

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/AutoRedialListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/AutoRedialListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 83
    return-void
.end method
