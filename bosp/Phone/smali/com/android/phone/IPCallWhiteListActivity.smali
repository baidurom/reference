.class public Lcom/android/phone/IPCallWhiteListActivity;
.super Landroid/app/ListActivity;
.source "IPCallWhiteListActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;
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

.field final mSubscriberId:Ljava/lang/String;

.field private mType:I

.field final result:Ljava/lang/StringBuffer;

.field telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 59
    iput v1, p0, Lcom/android/phone/IPCallWhiteListActivity;->REQUEST_CODE_PICK:I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->result:Ljava/lang/StringBuffer;

    .line 65
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mSubscriberId:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/android/phone/IPCallWhiteListActivity;->mType:I

    .line 390
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/widget/SimpleCursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IPCallWhiteListActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/IPCallWhiteListActivity;->showEditDialog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IPCallWhiteListActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/IPCallWhiteListActivity;->updateRecordByEdit(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IPCallWhiteListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/IPCallWhiteListActivity;->refreshList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IPCallWhiteListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/IPCallWhiteListActivity;->launchMultiplePhonePicker()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/IPCallWhiteListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/IPCallWhiteListActivity;->launchSinglePhoneInput()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/IPCallWhiteListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/IPCallWhiteListActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/IPCallWhiteListActivity;->deleteFromWhiteList(I)I

    move-result v0

    return v0
.end method

.method private deleteFromWhiteList(I)I
    .locals 5
    .parameter "_id"

    .prologue
    .line 456
    const-string v2, "_id = ?"

    .line 457
    .local v2, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 458
    .local v1, selectionArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, count:I
    return v0
.end method

.method public static hasBeenExistedInWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "subscriberId"
    .parameter "phoneNumber"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 325
    const/4 v7, 0x0

    .line 326
    .local v7, result:Z
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 327
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 328
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 329
    .local v4, selectionArgs:[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 330
    const-string v3, "PHONE_NUMBERS_EQUAL(number, ?, 0)  AND type = 0"

    .line 332
    new-array v4, v5, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    aput-object p2, v4, v1

    .line 340
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 344
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 346
    const/4 v7, 0x1

    .line 349
    :cond_0
    if-eqz v6, :cond_1

    .line 350
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    const/4 v6, 0x0

    .line 354
    :cond_1
    return v7

    .line 334
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    const-string v3, "PHONE_NUMBERS_EQUAL(number, ?, 0) AND subscriber = ?  AND type = 0"

    .line 337
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    aput-object p2, v4, v1

    aput-object p1, v4, v5

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_0

    .line 349
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 350
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method private launchMultiplePhonePicker()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/IPCallWhiteListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    return-void
.end method

.method private launchSinglePhoneInput()V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/WhiteListManuallyInputActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/phone/IPCallWhiteListActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method private processPickedResult(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 255
    const-string v5, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 256
    .local v3, uris:[Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    array-length v1, v3

    .line 257
    .local v1, resultCount:I
    :goto_0
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "data1"

    aput-object v5, v0, v4

    .line 259
    .local v0, phoneNumberProjection:[Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/phone/IPCallWhiteListActivity$5;

    invoke-direct {v4, p0, v1, v3, v0}, Lcom/android/phone/IPCallWhiteListActivity$5;-><init>(Lcom/android/phone/IPCallWhiteListActivity;I[Landroid/os/Parcelable;[Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 317
    .local v2, t:Ljava/lang/Thread;
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 318
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 319
    return-void

    .end local v0           #phoneNumberProjection:[Ljava/lang/String;
    .end local v1           #resultCount:I
    .end local v2           #t:Ljava/lang/Thread;
    :cond_0
    move v1, v4

    .line 256
    goto :goto_0
.end method

.method private refreshList()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/phone/IPCallWhiteListActivity$6;

    invoke-direct {v1, p0}, Lcom/android/phone/IPCallWhiteListActivity$6;-><init>(Lcom/android/phone/IPCallWhiteListActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/phone/IPCallWhiteListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mListView:Landroid/widget/ListView;

    .line 96
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/IPCallWhiteListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    const v0, #id@empty#t

    invoke-virtual {p0, v0}, Lcom/android/phone/IPCallWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mEmptyView:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/IPCallWhiteListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/IPCallWhiteListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/phone/IPCallWhiteListActivity$1;-><init>(Lcom/android/phone/IPCallWhiteListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    return-void
.end method

.method private showEditDialog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "id"
    .parameter "name"
    .parameter "number"

    .prologue
    .line 117
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 118
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040026

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 119
    .local v8, view:Landroid/view/View;
    const v0, 0x7f07000f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 120
    .local v2, nameET:Landroid/widget/EditText;
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v0, 0x7f070012

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 122
    .local v3, numberET:Landroid/widget/EditText;
    invoke-virtual {v3, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c028e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, #string@ok#t

    new-instance v0, Lcom/android/phone/IPCallWhiteListActivity$3;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/phone/IPCallWhiteListActivity$3;-><init>(Lcom/android/phone/IPCallWhiteListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v4, Lcom/android/phone/IPCallWhiteListActivity$2;

    invoke-direct {v4, p0}, Lcom/android/phone/IPCallWhiteListActivity$2;-><init>(Lcom/android/phone/IPCallWhiteListActivity;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 151
    return-void
.end method

.method private showWhiteListCreateDialog()V
    .locals 5

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, ADD_FROM_CONTACTS:I
    const/4 v0, 0x1

    .line 202
    .local v0, ADD_BY_INPUT_NUMBER:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c028d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f06001c

    new-instance v4, Lcom/android/phone/IPCallWhiteListActivity$4;

    invoke-direct {v4, p0}, Lcom/android/phone/IPCallWhiteListActivity$4;-><init>(Lcom/android/phone/IPCallWhiteListActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 219
    return-void
.end method

.method private updateRecordByEdit(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "id"
    .parameter "name"
    .parameter "number"

    .prologue
    .line 157
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/phone/IPCallWhiteListActivity;->deleteFromWhiteList(I)I

    .line 170
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "number"

    invoke-virtual {v1, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "_id = ?"

    .line 166
    .local v2, where:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 167
    .local v0, selectionArgs:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;

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
    .line 240
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 247
    invoke-direct {p0, p3}, Lcom/android/phone/IPCallWhiteListActivity;->processPickedResult(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 73
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/android/phone/IPCallWhiteListActivity;->setContentView(I)V

    .line 74
    iput-object p0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;

    iget-object v2, p0, Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;

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

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/IPCallWhiteListActivity$WhiteListAdapter;-><init>(Lcom/android/phone/IPCallWhiteListActivity;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 79
    invoke-virtual {p0}, Lcom/android/phone/IPCallWhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v7, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 80
    return-void

    .line 75
    :array_0
    .array-data 0x4
        0xcct 0x0t 0x7t 0x7ft
        0xcdt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 361
    sget-object v2, Lcom/android/phone/WhiteListProvider$WhiteListDBColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 362
    .local v2, whiteListUri:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "name"

    aput-object v0, v3, v7

    const/4 v0, 0x2

    const-string v1, "number"

    aput-object v1, v3, v0

    .line 365
    .local v3, projection:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 366
    .local v4, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 367
    .local v5, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mSubscriberId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 368
    const-string v4, "type = 0"

    .line 369
    const/4 v5, 0x0

    .line 376
    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/phone/IPCallWhiteListActivity;->mContext:Landroid/content/Context;

    const-string v6, "name"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 371
    :cond_0
    const-string v4, "subscriber = ?  AND type = 0"

    .line 373
    new-array v5, v7, [Ljava/lang/String;

    .end local v5           #selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mSubscriberId:Ljava/lang/String;

    aput-object v0, v5, v6

    .restart local v5       #selectionArgs:[Ljava/lang/String;
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/phone/IPCallWhiteListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 176
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 177
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
    .line 382
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 383
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/IPCallWhiteListActivity;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 387
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 388
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 191
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/IPCallWhiteListActivity;->finish()V

    goto :goto_0

    .line 188
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/IPCallWhiteListActivity;->showWhiteListCreateDialog()V

    goto :goto_0

    .line 182
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
    .line 84
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 85
    invoke-direct {p0}, Lcom/android/phone/IPCallWhiteListActivity;->setupView()V

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/IPCallWhiteListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 88
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/IPCallWhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 92
    return-void
.end method
