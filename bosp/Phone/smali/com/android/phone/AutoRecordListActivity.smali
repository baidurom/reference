.class public Lcom/android/phone/AutoRecordListActivity;
.super Landroid/app/ListActivity;
.source "AutoRecordListActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;
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

.field private static final QUERY_LOADER_ID:I


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
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/AutoRecordListActivity;->REQUEST_CODE_PICK:I

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->result:Ljava/lang/StringBuffer;

    .line 385
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AutoRecordListActivity;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/AutoRecordListActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/AutoRecordListActivity;->showEditDialog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/AutoRecordListActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/AutoRecordListActivity;->updateRecordByEdit(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/AutoRecordListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/AutoRecordListActivity;->refreshList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/AutoRecordListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/AutoRecordListActivity;->launchMultiplePhonePicker()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/AutoRecordListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/AutoRecordListActivity;->launchSinglePhoneInput()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/AutoRecordListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/AutoRecordListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/AutoRecordListActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/AutoRecordListActivity;->deleteFromWhiteList(I)Z

    move-result v0

    return v0
.end method

.method private deleteFromWhiteList(I)Z
    .locals 5
    .parameter "_id"

    .prologue
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/AutoRecordListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 456
    .local v0, count:I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static existedInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 324
    const/4 v7, 0x0

    .line 325
    .local v7, result:Z
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 326
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "PHONE_NUMBERS_EQUAL(number, ?, 0)  AND type = 1"

    .line 328
    .local v3, selection:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 330
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v0, "===="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", selectionArgs"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 335
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 337
    const/4 v7, 0x1

    .line 340
    :cond_0
    if-eqz v6, :cond_1

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 342
    const/4 v6, 0x0

    .line 345
    :cond_1
    return v7

    .line 340
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 341
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 342
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public static insertToWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "subscriberId"
    .parameter "name"
    .parameter "number"

    .prologue
    .line 352
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 353
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "subscriber"

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "number"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 358
    return-void
.end method

.method private launchMultiplePhonePicker()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/AutoRecordListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    return-void
.end method

.method private launchSinglePhoneInput()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/WhiteListManuallyInputActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRecordListActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void
.end method

.method private processPickedResult(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 254
    const-string v5, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 255
    .local v3, uris:[Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    array-length v1, v3

    .line 256
    .local v1, resultCount:I
    :goto_0
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "data1"

    aput-object v5, v0, v4

    .line 258
    .local v0, phoneNumberProjection:[Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/phone/AutoRecordListActivity$5;

    invoke-direct {v4, p0, v1, v3, v0}, Lcom/android/phone/AutoRecordListActivity$5;-><init>(Lcom/android/phone/AutoRecordListActivity;I[Landroid/os/Parcelable;[Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 316
    .local v2, t:Ljava/lang/Thread;
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 317
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 318
    return-void

    .end local v0           #phoneNumberProjection:[Ljava/lang/String;
    .end local v1           #resultCount:I
    .end local v2           #t:Ljava/lang/Thread;
    :cond_0
    move v1, v4

    .line 255
    goto :goto_0
.end method

.method private refreshList()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/AutoRecordListActivity$6;

    invoke-direct {v1, p0}, Lcom/android/phone/AutoRecordListActivity$6;-><init>(Lcom/android/phone/AutoRecordListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 472
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/phone/AutoRecordListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mListView:Landroid/widget/ListView;

    .line 95
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/AutoRecordListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    const v0, #id@empty#t

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRecordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mEmptyView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/AutoRecordListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/AutoRecordListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/AutoRecordListActivity$1;-><init>(Lcom/android/phone/AutoRecordListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    return-void
.end method

.method private showEditDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "id"
    .parameter "name"
    .parameter "number"

    .prologue
    .line 116
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 117
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040026

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 118
    .local v8, view:Landroid/view/View;
    const v0, 0x7f07000f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 119
    .local v2, nameET:Landroid/widget/EditText;
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const v0, 0x7f070012

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 121
    .local v3, numberET:Landroid/widget/EditText;
    invoke-virtual {v3, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/AutoRecordListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c028e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, #string@ok#t

    new-instance v0, Lcom/android/phone/AutoRecordListActivity$3;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/AutoRecordListActivity$3;-><init>(Lcom/android/phone/AutoRecordListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v4, Lcom/android/phone/AutoRecordListActivity$2;

    invoke-direct {v4, p0}, Lcom/android/phone/AutoRecordListActivity$2;-><init>(Lcom/android/phone/AutoRecordListActivity;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 150
    return-void
.end method

.method private showWhiteListCreateDialog()V
    .locals 5

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, ADD_FROM_CONTACTS:I
    const/4 v0, 0x1

    .line 201
    .local v0, ADD_BY_INPUT_NUMBER:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/AutoRecordListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c028d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06001c

    new-instance v4, Lcom/android/phone/AutoRecordListActivity$4;

    invoke-direct {v4, p0}, Lcom/android/phone/AutoRecordListActivity$4;-><init>(Lcom/android/phone/AutoRecordListActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 218
    return-void
.end method

.method private updateRecordByEdit(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "id"
    .parameter "name"
    .parameter "number"

    .prologue
    .line 156
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-direct {p0, p1}, Lcom/android/phone/AutoRecordListActivity;->deleteFromWhiteList(I)Z

    .line 169
    :goto_0
    return-void

    .line 161
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v3, "number"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, "_id = ?"

    .line 165
    .local v2, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 166
    .local v0, selectionArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AutoRecordListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

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
    .line 239
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 246
    invoke-direct {p0, p3}, Lcom/android/phone/AutoRecordListActivity;->processPickedResult(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 72
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRecordListActivity;->setContentView(I)V

    .line 73
    iput-object p0, p0, Lcom/android/phone/AutoRecordListActivity;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;

    iget-object v2, p0, Lcom/android/phone/AutoRecordListActivity;->mContext:Landroid/content/Context;

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

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/AutoRecordListActivity$WhiteListAdapter;-><init>(Lcom/android/phone/AutoRecordListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/AutoRecordListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v7, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 79
    return-void

    .line 74
    :array_0
    .array-data 0x4
        0xcct 0x0t 0x7t 0x7ft
        0xcdt 0x0t 0x7t 0x7ft
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
    .line 364
    sget-object v2, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 365
    .local v2, whiteListUri:Landroid/net/Uri;
    const/4 v0, 0x3

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

    .line 369
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "type = 1"

    .line 371
    .local v4, selection:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/phone/AutoRecordListActivity;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "name"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/AutoRecordListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 175
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 176
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
    .line 377
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 378
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/AutoRecordListActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 382
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 383
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 190
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 183
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/AutoRecordListActivity;->finish()V

    goto :goto_0

    .line 187
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/AutoRecordListActivity;->showWhiteListCreateDialog()V

    goto :goto_0

    .line 181
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
    .line 83
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 84
    invoke-direct {p0}, Lcom/android/phone/AutoRecordListActivity;->setupView()V

    .line 86
    invoke-virtual {p0}, Lcom/android/phone/AutoRecordListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 87
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/AutoRecordListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 91
    return-void
.end method
