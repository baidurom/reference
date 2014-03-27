.class public Lcom/android/phone/AutoRedialListManuallyInputActivity;
.super Landroid/app/Activity;
.source "AutoRedialListManuallyInputActivity.java"


# instance fields
.field private mASO:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mName:Landroid/widget/EditText;

.field private mNumber:Landroid/widget/EditText;

.field private mRUC:Landroid/widget/CheckBox;

.field private mRepeatTime:Landroid/widget/EditText;

.field final mSubscriberId:Ljava/lang/String;

.field telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 28
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mSubscriberId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRepeatTime:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRUC:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mASO:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/AutoRedialListManuallyInputActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 79
    iput-object p0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mContext:Landroid/content/Context;

    .line 81
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mName:Landroid/widget/EditText;

    .line 82
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mNumber:Landroid/widget/EditText;

    .line 84
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 86
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRepeatTime:Landroid/widget/EditText;

    .line 87
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRUC:Landroid/widget/CheckBox;

    .line 88
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mASO:Landroid/widget/CheckBox;

    .line 89
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRepeatTime:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRepeatTime:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRUC:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRUC:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity;->mRUC:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/phone/AutoRedialListManuallyInputActivity$3;

    invoke-direct {v1, p0}, Lcom/android/phone/AutoRedialListManuallyInputActivity$3;-><init>(Lcom/android/phone/AutoRedialListManuallyInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->requestWindowFeature(I)Z

    .line 36
    const v5, 0x7f040002

    invoke-virtual {p0, v5}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->setupView()V

    .line 38
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 43
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04000e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, customActionBarView:Landroid/view/View;
    const v5, 0x7f070069

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 45
    .local v3, done:Landroid/view/View;
    new-instance v5, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;

    invoke-direct {v5, p0}, Lcom/android/phone/AutoRedialListManuallyInputActivity$1;-><init>(Lcom/android/phone/AutoRedialListManuallyInputActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v5, 0x7f070068

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, cancel:Landroid/view/View;
    new-instance v5, Lcom/android/phone/AutoRedialListManuallyInputActivity$2;

    invoke-direct {v5, p0}, Lcom/android/phone/AutoRedialListManuallyInputActivity$2;-><init>(Lcom/android/phone/AutoRedialListManuallyInputActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 74
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 76
    .end local v1           #cancel:Landroid/view/View;
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v3           #done:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method
