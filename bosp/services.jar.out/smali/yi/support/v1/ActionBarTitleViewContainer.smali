.class public Lyi/support/v1/ActionBarTitleViewContainer;
.super Ljava/lang/Object;
.source "ActionBarTitleViewContainer.java"


# instance fields
.field dismissListenter:Landroid/widget/PopupWindow$OnDismissListener;

.field listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mActionBarButtonClickListener:Landroid/view/View$OnClickListener;

.field private final mActionBarSpinerClickListener:Landroid/view/View$OnClickListener;

.field private mActionButtonItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mActionButtonRes:Landroid/graphics/drawable/Drawable;

.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mBackHomeItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mCallback:Lyi/support/v1/YiLaf$OnSpinerItemListener;

.field private mListView:Lyi/widget/RoundCornerListView;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mShowActionButton:Z

.field private mShowActionSpiner:Z

.field private mShowHomeAsUp:Z

.field private mSpinerClose:Landroid/view/View;

.field private mSpinerOpen:Landroid/view/View;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mTitleView:Landroid/view/View;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mShowHomeAsUp:Z

    .line 50
    iput-boolean v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mShowActionButton:Z

    .line 53
    iput-boolean v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mShowActionSpiner:Z

    .line 193
    new-instance v0, Lyi/support/v1/ActionBarTitleViewContainer$1;

    invoke-direct {v0, p0}, Lyi/support/v1/ActionBarTitleViewContainer$1;-><init>(Lyi/support/v1/ActionBarTitleViewContainer;)V

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v0, Lyi/support/v1/ActionBarTitleViewContainer$2;

    invoke-direct {v0, p0}, Lyi/support/v1/ActionBarTitleViewContainer$2;-><init>(Lyi/support/v1/ActionBarTitleViewContainer;)V

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionBarButtonClickListener:Landroid/view/View$OnClickListener;

    .line 203
    new-instance v0, Lyi/support/v1/ActionBarTitleViewContainer$3;

    invoke-direct {v0, p0}, Lyi/support/v1/ActionBarTitleViewContainer$3;-><init>(Lyi/support/v1/ActionBarTitleViewContainer;)V

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionBarSpinerClickListener:Landroid/view/View$OnClickListener;

    .line 224
    new-instance v0, Lyi/support/v1/ActionBarTitleViewContainer$4;

    invoke-direct {v0, p0}, Lyi/support/v1/ActionBarTitleViewContainer$4;-><init>(Lyi/support/v1/ActionBarTitleViewContainer;)V

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 240
    new-instance v0, Lyi/support/v1/ActionBarTitleViewContainer$5;

    invoke-direct {v0, p0}, Lyi/support/v1/ActionBarTitleViewContainer$5;-><init>(Lyi/support/v1/ActionBarTitleViewContainer;)V

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->dismissListenter:Landroid/widget/PopupWindow$OnDismissListener;

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    .line 65
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mWindowCallback:Landroid/view/Window$Callback;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lyi/support/v1/ActionBarTitleViewContainer;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mBackHomeItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$100(Lyi/support/v1/ActionBarTitleViewContainer;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionButtonItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerOpen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerClose:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$500(Lyi/support/v1/ActionBarTitleViewContainer;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Lyi/support/v1/ActionBarTitleViewContainer;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lyi/support/v1/ActionBarTitleViewContainer;)Lyi/support/v1/YiLaf$OnSpinerItemListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mCallback:Lyi/support/v1/YiLaf$OnSpinerItemListener;

    return-object v0
.end method

.method private static getActionBar(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "activity"

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->getActionBar(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private static getActionBar(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .parameter "view"

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_container"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, resId:I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    return v1

    .line 187
    :pswitch_0
    invoke-virtual {p0}, Lyi/support/v1/ActionBarTitleViewContainer;->hide()V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 132
    iget-object v2, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lyi/support/v1/ActionBarTitleViewContainer;->getActionBar(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 134
    .local v0, actionbar:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 135
    const v2, 0x5020025

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, titleview:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 142
    .end local v0           #actionbar:Landroid/view/ViewGroup;
    .end local v1           #titleview:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setCallback(Lyi/support/v1/YiLaf$OnSpinerItemListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 171
    iput-object p1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mCallback:Lyi/support/v1/YiLaf$OnSpinerItemListener;

    .line 172
    return-void
.end method

.method public setDisplayActionButtonEnabled(ZLandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "showActionButton"
    .parameter "res"

    .prologue
    .line 159
    iput-boolean p1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mShowActionButton:Z

    .line 160
    iput-object p2, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionButtonRes:Landroid/graphics/drawable/Drawable;

    .line 162
    return-void
.end method

.method public setDisplayActionSpinerEnabled(Z)V
    .locals 0
    .parameter "showActionSpiner"

    .prologue
    .line 164
    iput-boolean p1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mShowActionSpiner:Z

    .line 165
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .parameter "showHomeAsUp"

    .prologue
    .line 155
    iput-boolean p1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mShowHomeAsUp:Z

    .line 156
    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 0
    .parameter "adpter"

    .prologue
    .line 168
    iput-object p1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 169
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 145
    iget-object v2, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lyi/support/v1/ActionBarTitleViewContainer;->getActionBar(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 147
    .local v0, actionbar:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 148
    const v2, 0x502002c

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    .local v1, text:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .end local v0           #actionbar:Landroid/view/ViewGroup;
    .end local v1           #text:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public show()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v13, 0x1

    const/16 v12, 0x8

    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lyi/support/v1/ActionBarTitleViewContainer;->getActionBar(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v8

    .line 71
    .local v8, actionbar:Landroid/view/ViewGroup;
    if-eqz v8, :cond_1

    .line 72
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x5090016

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    const v1, 0x5020025

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 75
    iget-object v1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x5080053

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    const v1, 0x502002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 80
    .local v9, back:Landroid/view/View;
    iget-boolean v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mShowHomeAsUp:Z

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    iget-object v1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, #id@home#t

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mBackHomeItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 82
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {v9, v13}, Landroid/view/View;->setClickable(Z)V

    .line 84
    invoke-virtual {v9, v13}, Landroid/view/View;->setFocusable(Z)V

    .line 90
    :goto_0
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    const v1, 0x502002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 91
    .local v7, actionBt:Landroid/view/View;
    iget-boolean v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mShowActionButton:Z

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionButtonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    iget-object v1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x5020015

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionButtonItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 94
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionBarButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v7, v13}, Landroid/view/View;->setClickable(Z)V

    .line 96
    invoke-virtual {v7, v13}, Landroid/view/View;->setFocusable(Z)V

    .line 102
    :goto_1
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    const v1, 0x502002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerOpen:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    const v1, 0x502002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerClose:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x509001a

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 105
    .local v10, spiner:Landroid/view/View;
    const v0, 0x502003b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lyi/widget/RoundCornerListView;

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mListView:Lyi/widget/RoundCornerListView;

    .line 106
    iget-boolean v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mShowActionSpiner:Z

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerOpen:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerClose:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerOpen:Landroid/view/View;

    iget-object v1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionBarSpinerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerClose:Landroid/view/View;

    iget-object v1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionBarSpinerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mListView:Lyi/widget/RoundCornerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mListView:Lyi/widget/RoundCornerListView;

    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {v1, v0}, Lyi/widget/RoundCornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mListView:Lyi/widget/RoundCornerListView;

    iget-object v1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->listClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lyi/widget/RoundCornerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v10, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;

    .line 116
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mPopUpWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lyi/support/v1/ActionBarTitleViewContainer;->dismissListenter:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mTitleView:Landroid/view/View;

    const v1, 0x502002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 120
    .local v11, titleText:Landroid/widget/TextView;
    if-eqz v11, :cond_1

    .line 121
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mActionBarSpinerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .end local v7           #actionBt:Landroid/view/View;
    .end local v8           #actionbar:Landroid/view/ViewGroup;
    .end local v9           #back:Landroid/view/View;
    .end local v10           #spiner:Landroid/view/View;
    .end local v11           #titleText:Landroid/widget/TextView;
    :cond_1
    :goto_2
    return-void

    .line 86
    .restart local v8       #actionbar:Landroid/view/ViewGroup;
    .restart local v9       #back:Landroid/view/View;
    :cond_2
    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 98
    .restart local v7       #actionBt:Landroid/view/View;
    :cond_3
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 124
    .restart local v10       #spiner:Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerOpen:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lyi/support/v1/ActionBarTitleViewContainer;->mSpinerClose:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
