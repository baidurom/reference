.class public Lcom/android/phone/GetPin2Screen;
.super Landroid/app/Activity;
.source "GetPin2Screen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GetPin2Screen$GetPin2ScreenBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final GET_PIN_RETRY_EMPTY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/PhoneApp"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private mPin2Field:Landroid/widget/EditText;

.field private mPin2InvalidInfoLabel:Landroid/widget/TextView;

.field private mPin2RetryLabel:Landroid/widget/TextView;

.field private mPin2Title:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/android/phone/GetPin2Screen$GetPin2ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/GetPin2Screen$GetPin2ScreenBroadcastReceiver;-><init>(Lcom/android/phone/GetPin2Screen;Lcom/android/phone/GetPin2Screen$1;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v0, Lcom/android/phone/GetPin2Screen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/GetPin2Screen$2;-><init>(Lcom/android/phone/GetPin2Screen;)V

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    .line 225
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/GetPin2Screen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GetPin2Screen;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/GetPin2Screen;->invalidatePin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/GetPin2Screen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2InvalidInfoLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/GetPin2Screen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->returnResult()V

    return-void
.end method

.method private getPin2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPin2RetryNumber()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 139
    iget v0, p0, Lcom/android/phone/GetPin2Screen;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPin2()Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2RetryNumber()I

    move-result v0

    .line 146
    .local v0, retryCount:I
    packed-switch v0, :pswitch_data_0

    .line 152
    :pswitch_0
    const v1, 0x7f0b016e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/GetPin2Screen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 148
    :pswitch_1
    const-string v1, " "

    goto :goto_0

    .line 150
    :pswitch_2
    const v1, 0x7f0b016d

    invoke-virtual {p0, v1}, Lcom/android/phone/GetPin2Screen;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private invalidatePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 197
    const-string v0, "Settings/PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetPin2] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-void
.end method

.method private returnResult()V
    .locals 6

    .prologue
    .line 161
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v2, map:Landroid/os/Bundle;
    const-string v4, "pin2"

    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 165
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 167
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, action:Landroid/content/Intent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/GetPin2Screen;->setResult(ILandroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 171
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 112
    const v0, 0x7f0700bd

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    .line 113
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 121
    :cond_0
    const v0, 0x7f0700c1

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Title:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Title:Landroid/widget/TextView;

    const v1, 0x7f0b0172

    invoke-virtual {p0, v1}, Lcom/android/phone/GetPin2Screen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 125
    :cond_1
    const v0, 0x7f0700c2

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2RetryLabel:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2RetryLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2RetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getRetryPin2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_2
    const v0, 0x7f0700c3

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2InvalidInfoLabel:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0700c4

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButton:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/GetPin2Screen;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/GetPin2Screen;->mSimId:I

    .line 62
    const v2, 0x7f040029

    invoke-virtual {p0, v2}, Lcom/android/phone/GetPin2Screen;->setContentView(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->setupView()V

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 67
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/phone/GetPin2Screen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/phone/GetPin2Screen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v2, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    new-instance v3, Lcom/android/phone/GetPin2Screen$1;

    invoke-direct {v3, p0}, Lcom/android/phone/GetPin2Screen$1;-><init>(Lcom/android/phone/GetPin2Screen;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 222
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 223
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 207
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 209
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/phone/GetPin2Screen;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2Field:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 101
    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getPin2RetryNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/phone/GetPin2Screen;->finish()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/phone/GetPin2Screen;->mPin2RetryLabel:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/phone/GetPin2Screen;->getRetryPin2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
