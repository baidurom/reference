.class public Lcom/android/phone/NetworkEditor;
.super Landroid/preference/PreferenceActivity;
.source "NetworkEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_ADD_PLMN_FROM_LIST:Ljava/lang/String; = "button_add_plmn_from_list_key"

.field private static final BUTTON_NETWORK_PRIORITY:Ljava/lang/String; = "network_priority_key"

.field private static final BUTTON_NETWORK_SERVICE:Ljava/lang/String; = "network_mode_key"

.field private static final BUTTON_PLMN_NAME:Ljava/lang/String; = "button_plmn_name_key"

.field private static final MENU_DISCARD:I = 0x2

.field private static final MENU_SAVE:I = 0x1

.field public static final PLMN_CODE:Ljava/lang/String; = "plmn_code"

.field public static final PLMN_MAX_PRIORITY:Ljava/lang/String; = "plmn_max_priority"

.field public static final PLMN_NAME:Ljava/lang/String; = "plmn_name"

.field public static final PLMN_PRIORITY:Ljava/lang/String; = "plmn_priority"

.field public static final PLMN_SERVICE:Ljava/lang/String; = "plmn_service"

.field public static final RESULT_DELETE:I = 0x2

.field public static final RESULT_MODIFY:I = 0x3


# instance fields
.field private mButtonName:Landroid/preference/Preference;

.field private mEntries:[Ljava/lang/String;

.field private mEntriesValue:[Ljava/lang/String;

.field private mListPreference:Landroid/preference/ListPreference;

.field private mListPreferenceService:Landroid/preference/ListPreference;

.field private mMaxPriority:I

.field private mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

.field private mPriority:I

.field private mRemoveButton:Landroid/widget/Button;

.field private mService:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NetworkEditor;->mMaxPriority:I

    .line 44
    iput-object v2, p0, Lcom/android/phone/NetworkEditor;->mListPreference:Landroid/preference/ListPreference;

    .line 45
    iput-object v2, p0, Lcom/android/phone/NetworkEditor;->mListPreferenceService:Landroid/preference/ListPreference;

    .line 51
    iput v1, p0, Lcom/android/phone/NetworkEditor;->mPriority:I

    .line 52
    iput v1, p0, Lcom/android/phone/NetworkEditor;->mService:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/NetworkEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/phone/NetworkEditor;->mPriority:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/phone/NetworkEditor;->setRemovedNetworkAndFinish()V

    return-void
.end method

.method static covertApNW2Ril(I)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, result:I
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 206
    const/4 v0, 0x5

    .line 214
    :goto_0
    return v0

    .line 207
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 209
    const/4 v0, 0x4

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static covertRilNW2Ap(I)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, result:I
    const/4 v1, 0x5

    if-lt p0, v1, :cond_0

    .line 193
    const/4 v0, 0x2

    .line 199
    :goto_0
    return v0

    .line 194
    :cond_0
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    .line 195
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNetworkInfo(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 101
    const-string v4, "plmn_code"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, numberName:Ljava/lang/String;
    const-string v4, "plmn_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, operatorName:Ljava/lang/String;
    const-string v4, "plmn_priority"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 104
    .local v3, priority:I
    const-string v4, "plmn_max_priority"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/NetworkEditor;->mMaxPriority:I

    .line 105
    const-string v4, "plmn_service"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, act:I
    new-instance v4, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {v4, v2, v1, v0, v3}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v4, p0, Lcom/android/phone/NetworkEditor;->mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    .line 107
    iput v3, p0, Lcom/android/phone/NetworkEditor;->mPriority:I

    .line 108
    iput v0, p0, Lcom/android/phone/NetworkEditor;->mService:I

    .line 109
    return-void
.end method

.method private genNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V
    .locals 2
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 175
    const-string v0, "plmn_code"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v0, "plmn_name"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorAlphaName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v0, "plmn_priority"

    iget v1, p0, Lcom/android/phone/NetworkEditor;->mPriority:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-string v0, "plmn_service"

    iget v1, p0, Lcom/android/phone/NetworkEditor;->mService:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method static getNWString(I)Ljava/lang/String;
    .locals 2
    .parameter "rilNW"

    .prologue
    .line 218
    invoke-static {p0}, Lcom/android/phone/NetworkEditor;->covertRilNW2Ap(I)I

    move-result v0

    .line 219
    .local v0, apNW:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 220
    const-string v1, "Dual mode"

    .line 226
    :goto_0
    return-object v1

    .line 221
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 222
    const-string v1, "TD-SCDMA"

    goto :goto_0

    .line 223
    :cond_1
    if-nez v0, :cond_2

    .line 224
    const-string v1, "GSM"

    goto :goto_0

    .line 226
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method private initListPreference()V
    .locals 3

    .prologue
    .line 84
    iget v1, p0, Lcom/android/phone/NetworkEditor;->mMaxPriority:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NetworkEditor;->mEntries:[Ljava/lang/String;

    .line 85
    iget v1, p0, Lcom/android/phone/NetworkEditor;->mMaxPriority:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/NetworkEditor;->mEntriesValue:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/phone/NetworkEditor;->mMaxPriority:I

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mEntries:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 88
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mEntriesValue:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/NetworkEditor;->mEntries:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/NetworkEditor;->mEntriesValue:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/NetworkEditor;->mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/NetworkEditor;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mListPreferenceService:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/NetworkEditor;->mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/NetworkEditor;->covertRilNW2Ap(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mListPreferenceService:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/NetworkEditor;->mListPreferenceService:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method private setRemovedNetworkAndFinish()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PLMNListPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/NetworkEditor;->setResult(ILandroid/content/Intent;)V

    .line 184
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->setPriority(I)V

    .line 185
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkEditor;->genNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/NetworkEditor;->finish()V

    .line 188
    return-void
.end method

.method private validateAndSetResult()V
    .locals 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getPriority()I

    move-result v1

    iget v2, p0, Lcom/android/phone/NetworkEditor;->mPriority:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getAccessTechnology()I

    move-result v1

    iget v2, p0, Lcom/android/phone/NetworkEditor;->mService:I

    if-ne v1, v2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/phone/NetworkEditor;->finish()V

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PLMNListPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/NetworkEditor;->setResult(ILandroid/content/Intent;)V

    .line 170
    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/NetworkEditor;->genNetworkInfo(Landroid/content/Intent;Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/NetworkEditor;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkEditor;->setContentView(I)V

    .line 58
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkEditor;->addPreferencesFromResource(I)V

    .line 59
    const-string v0, "network_priority_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/NetworkEditor;->mListPreference:Landroid/preference/ListPreference;

    .line 60
    iget-object v0, p0, Lcom/android/phone/NetworkEditor;->mListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v0, "button_plmn_name_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkEditor;->mButtonName:Landroid/preference/Preference;

    .line 62
    const-string v0, "network_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/NetworkEditor;->mListPreferenceService:Landroid/preference/ListPreference;

    .line 63
    iget-object v0, p0, Lcom/android/phone/NetworkEditor;->mListPreferenceService:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const v0, 0x7f0700f5

    invoke-virtual {p0, v0}, Lcom/android/phone/NetworkEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/NetworkEditor;->mRemoveButton:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/android/phone/NetworkEditor;->mRemoveButton:Landroid/widget/Button;

    const v1, 0x7f0b0298

    invoke-virtual {p0, v1}, Lcom/android/phone/NetworkEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/android/phone/NetworkEditor;->mRemoveButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/NetworkEditor$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NetworkEditor$1;-><init>(Lcom/android/phone/NetworkEditor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 132
    const v0, 0x7f0b0228

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 134
    const/4 v0, 0x2

    const v1, 0x7f0b0229

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 136
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 160
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 157
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/NetworkEditor;->validateAndSetResult()V

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 150
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 143
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/NetworkEditor;->validateAndSetResult()V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/NetworkEditor;->finish()V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/phone/NetworkEditor;->mListPreference:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 113
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 114
    .local v1, select:I
    iget v2, p0, Lcom/android/phone/NetworkEditor;->mPriority:I

    if-eq v1, v2, :cond_0

    .line 115
    iput v1, p0, Lcom/android/phone/NetworkEditor;->mPriority:I

    .line 116
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    .end local v1           #select:I
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/android/phone/NetworkEditor;->mListPreferenceService:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 120
    .restart local v1       #select:I
    invoke-static {v1}, Lcom/android/phone/NetworkEditor;->covertApNW2Ril(I)I

    move-result v0

    .line 121
    .local v0, rilNW:I
    iget v2, p0, Lcom/android/phone/NetworkEditor;->mService:I

    if-eq v0, v2, :cond_2

    .line 122
    iput v0, p0, Lcom/android/phone/NetworkEditor;->mService:I

    .line 124
    :cond_2
    invoke-static {v1}, Lcom/android/phone/NetworkEditor;->covertApNW2Ril(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/NetworkEditor;->getNWString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/NetworkEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NetworkEditor;->createNetworkInfo(Landroid/content/Intent;)V

    .line 79
    invoke-direct {p0}, Lcom/android/phone/NetworkEditor;->initListPreference()V

    .line 80
    iget-object v0, p0, Lcom/android/phone/NetworkEditor;->mButtonName:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/NetworkEditor;->mNetwork:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method
