.class public Lcom/android/phone/WhiteListManuallyInputActivity;
.super Landroid/app/Activity;
.source "WhiteListManuallyInputActivity.java"


# instance fields
.field private done:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mName:Landroid/widget/EditText;

.field private mNumber:Landroid/widget/EditText;

.field mSubscriberId:Ljava/lang/String;

.field private mType:I

.field telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mType:I

    .line 29
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    iget-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mSubscriberId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/WhiteListManuallyInputActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/WhiteListManuallyInputActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/WhiteListManuallyInputActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/WhiteListManuallyInputActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/WhiteListManuallyInputActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->done:Landroid/view/View;

    return-object v0
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 87
    iput-object p0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mContext:Landroid/content/Context;

    .line 89
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/phone/WhiteListManuallyInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mName:Landroid/widget/EditText;

    .line 90
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/phone/WhiteListManuallyInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mNumber:Landroid/widget/EditText;

    .line 91
    iget-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mNumber:Landroid/widget/EditText;

    new-instance v1, Lcom/android/phone/WhiteListManuallyInputActivity$3;

    invoke-direct {v1, p0}, Lcom/android/phone/WhiteListManuallyInputActivity$3;-><init>(Lcom/android/phone/WhiteListManuallyInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 109
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/android/phone/WhiteListManuallyInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 37
    .local v5, intent:Landroid/content/Intent;
    const-string v6, "subscriberId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mSubscriberId:Ljava/lang/String;

    .line 38
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 39
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "type"

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mType:I

    .line 40
    iget v6, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mType:I

    if-ne v6, v8, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget v6, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mType:I

    if-ne v6, v9, :cond_2

    .line 43
    iput-object v10, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->mSubscriberId:Ljava/lang/String;

    .line 46
    :cond_2
    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/phone/WhiteListManuallyInputActivity;->requestWindowFeature(I)Z

    .line 47
    const v6, 0x7f04004c

    invoke-virtual {p0, v6}, Lcom/android/phone/WhiteListManuallyInputActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/phone/WhiteListManuallyInputActivity;->setupView()V

    .line 49
    invoke-virtual {p0, v7}, Lcom/android/phone/WhiteListManuallyInputActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/android/phone/WhiteListManuallyInputActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 54
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040024

    invoke-virtual {v4, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 55
    .local v3, customActionBarView:Landroid/view/View;
    const v6, 0x7f0700bc

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->done:Landroid/view/View;

    .line 56
    iget-object v6, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->done:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 57
    iget-object v6, p0, Lcom/android/phone/WhiteListManuallyInputActivity;->done:Landroid/view/View;

    new-instance v7, Lcom/android/phone/WhiteListManuallyInputActivity$1;

    invoke-direct {v7, p0}, Lcom/android/phone/WhiteListManuallyInputActivity$1;-><init>(Lcom/android/phone/WhiteListManuallyInputActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v6, 0x7f0700bb

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 72
    .local v2, cancel:Landroid/view/View;
    new-instance v6, Lcom/android/phone/WhiteListManuallyInputActivity$2;

    invoke-direct {v6, p0}, Lcom/android/phone/WhiteListManuallyInputActivity$2;-><init>(Lcom/android/phone/WhiteListManuallyInputActivity;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 82
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto :goto_0
.end method
