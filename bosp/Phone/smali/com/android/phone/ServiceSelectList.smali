.class public Lcom/android/phone/ServiceSelectList;
.super Landroid/preference/DialogPreference;
.source "ServiceSelectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ServiceSelectList$SimItem;,
        Lcom/android/phone/ServiceSelectList$SelectionListAdapter;
    }
.end annotation


# static fields
.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field static final TAG:Ljava/lang/String; = "Settings/ServiceSelectList"


# instance fields
.field private mAdapter:Lcom/android/phone/ServiceSelectList$SelectionListAdapter;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mFlater:Landroid/view/LayoutInflater;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInitValue:I

.field private mListView:Landroid/widget/ListView;

.field private mSelected:I

.field private mSwitchTo:I

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mValue:Ljava/lang/String;

.field private phoneMgr:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/ServiceSelectList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v1, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    .line 60
    iput v1, p0, Lcom/android/phone/ServiceSelectList;->mSwitchTo:I

    .line 61
    iput v1, p0, Lcom/android/phone/ServiceSelectList;->mInitValue:I

    .line 64
    iput-object v3, p0, Lcom/android/phone/ServiceSelectList;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 75
    iput-object v3, p0, Lcom/android/phone/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    .line 83
    iput-object p1, p0, Lcom/android/phone/ServiceSelectList;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ServiceSelectList;->mFlater:Landroid/view/LayoutInflater;

    .line 86
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ServiceSelectList;->mEntries:[Ljava/lang/CharSequence;

    .line 89
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ServiceSelectList;->mEntryValues:[Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    iput-object v1, p0, Lcom/android/phone/ServiceSelectList;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 93
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/ServiceSelectList;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/ServiceSelectList;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList;->mFlater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/ServiceSelectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/ServiceSelectList;)Lcom/mediatek/telephony/TelephonyManagerEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    return-object v0
.end method


# virtual methods
.method SetRadioCheched(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 372
    iget-object v4, p0, Lcom/android/phone/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 374
    .local v3, listSize:I
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 376
    iget-object v4, p0, Lcom/android/phone/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, ItemView:Landroid/view/View;
    const v4, 0x7f070111

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 378
    .local v1, btn:Landroid/widget/RadioButton;
    if-eqz v1, :cond_0

    .line 379
    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 374
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 382
    .end local v0           #ItemView:Landroid/view/View;
    .end local v1           #btn:Landroid/widget/RadioButton;
    :cond_2
    return-void
.end method

.method dismissDialogs()V
    .locals 3

    .prologue
    .line 184
    const-string v1, "Settings/ServiceSelectList"

    const-string v2, "disable the 3G switch."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/ServiceSelectList;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 187
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/phone/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/phone/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 193
    :cond_1
    return-void
.end method

.method dismissSelf()V
    .locals 3

    .prologue
    .line 429
    const-string v1, "Settings/ServiceSelectList"

    const-string v2, "Dismiss the select list."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0}, Lcom/android/phone/ServiceSelectList;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 431
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 434
    :cond_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 138
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/ServiceSelectList;->onDialogClosed(Z)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/ServiceSelectList;->onDialogClosed(Z)V

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 125
    const-string v0, "Settings/ServiceSelectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mSelected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v0, "Settings/ServiceSelectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed : mInitValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/ServiceSelectList;->mInitValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz p1, :cond_0

    .line 129
    const-string v0, "Settings/ServiceSelectList"

    const-string v1, "callChangeListener"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList;->mAdapter:Lcom/android/phone/ServiceSelectList$SelectionListAdapter;

    iget-object v0, v0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    iget v1, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ServiceSelectList$SimItem;

    iget-wide v0, v0, Lcom/android/phone/ServiceSelectList$SimItem;->mSimID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ServiceSelectList;->callChangeListener(Ljava/lang/Object;)Z

    .line 131
    iget v0, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    iput v0, p0, Lcom/android/phone/ServiceSelectList;->mInitValue:I

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ServiceSelectList;->dismissSelf()V

    .line 135
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v3, "Settings/ServiceSelectList"

    const-string v4, "onclick"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v3, "Settings/ServiceSelectList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "positon is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v3, "Settings/ServiceSelectList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current select is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget v3, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    if-ne p3, v3, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/ServiceSelectList;->dismissSelf()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v3, p0, Lcom/android/phone/ServiceSelectList;->mAdapter:Lcom/android/phone/ServiceSelectList$SelectionListAdapter;

    iget-object v3, v3, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->mSimItemList:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ServiceSelectList$SimItem;

    .line 162
    .local v2, simItem:Lcom/android/phone/ServiceSelectList$SimItem;
    iget-wide v3, v2, Lcom/android/phone/ServiceSelectList$SimItem;->mSimID:J

    const-wide/16 v5, -0x2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 165
    iput p3, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    .line 166
    const-string v3, "Settings/ServiceSelectList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-wide v3, v2, Lcom/android/phone/ServiceSelectList$SimItem;->mSimID:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    const v0, 0x7f0b0359

    .line 168
    .local v0, msgId:I
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/ServiceSelectList;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0050

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 176
    .local v1, newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 177
    iput-object v1, p0, Lcom/android/phone/ServiceSelectList;->mAlertDialog:Landroid/app/AlertDialog;

    .line 178
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/phone/ServiceSelectList;->onDialogClosed(Z)V

    goto :goto_0

    .line 167
    .end local v0           #msgId:I
    .end local v1           #newDialog:Landroid/app/AlertDialog;
    :cond_3
    const v0, 0x7f0b0356

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 7
    .parameter "builder"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 105
    new-instance v0, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {p0}, Lcom/android/phone/ServiceSelectList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;-><init>(Lcom/android/phone/ServiceSelectList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/ServiceSelectList;->mAdapter:Lcom/android/phone/ServiceSelectList$SelectionListAdapter;

    .line 106
    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/ServiceSelectList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/ServiceSelectList;->mListView:Landroid/widget/ListView;

    .line 107
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/ServiceSelectList;->mAdapter:Lcom/android/phone/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList;->mAdapter:Lcom/android/phone/ServiceSelectList$SelectionListAdapter;

    invoke-virtual {v0}, Lcom/android/phone/ServiceSelectList$SelectionListAdapter;->getHas3GService()I

    move-result v0

    iput v0, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    .line 111
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/phone/ServiceSelectList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 115
    iget-object v1, p0, Lcom/android/phone/ServiceSelectList;->mListView:Landroid/widget/ListView;

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 117
    const v0, 0x7f0b0039

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {p1, v6, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    return-void
.end method

.method setInitValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 385
    iput p1, p0, Lcom/android/phone/ServiceSelectList;->mInitValue:I

    .line 386
    iput p1, p0, Lcom/android/phone/ServiceSelectList;->mSelected:I

    .line 387
    return-void
.end method
