.class public Lcom/android/phone/RespondViaSmsManager$Settings;
.super Landroid/preference/PreferenceActivity;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private initThePreference(Landroid/preference/EditTextPreference;)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 437
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 438
    .local v2, editText:Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 439
    .local v1, dialog:Landroid/app/Dialog;
    if-nez v2, :cond_1

    instance-of v3, v1, Landroid/app/AlertDialog;

    if-nez v3, :cond_1

    .line 462
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 444
    .restart local v1       #dialog:Landroid/app/Dialog;
    :cond_1
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #dialog:Landroid/app/Dialog;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 445
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 449
    new-instance v3, Lcom/android/phone/RespondViaSmsManager$Settings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/RespondViaSmsManager$Settings$1;-><init>(Lcom/android/phone/RespondViaSmsManager$Settings;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 393
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Settings: onCreate()..."

    #calls: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager$Settings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "respond_via_sms_prefs"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 408
    const v2, 0x7f05001b

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->addPreferencesFromResource(I)V

    .line 411
    const-string v2, "canned_response_pref_1"

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    .line 412
    .local v1, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 415
    const-string v2, "canned_response_pref_2"

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #pref:Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 416
    .restart local v1       #pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 419
    const-string v2, "canned_response_pref_3"

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #pref:Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 420
    .restart local v1       #pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 423
    const-string v2, "canned_response_pref_4"

    invoke-virtual {p0, v2}, Lcom/android/phone/RespondViaSmsManager$Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #pref:Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 424
    .restart local v1       #pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/phone/RespondViaSmsManager$Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 428
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 430
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 432
    :cond_1
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 433
    invoke-static {p0}, Lyi/support/v1/YiLaf;->removePreferencePadding(Landroid/app/Activity;)V

    .line 434
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 492
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 493
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 494
    invoke-static {p0}, Lcom/android/phone/OthersSettings;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 495
    const/4 v1, 0x1

    .line 497
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 475
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    .line 479
    check-cast v0, Landroid/preference/EditTextPreference;

    .line 485
    .local v0, pref:Landroid/preference/EditTextPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 466
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 467
    instance-of v0, p2, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 468
    check-cast p2, Landroid/preference/EditTextPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/phone/RespondViaSmsManager$Settings;->initThePreference(Landroid/preference/EditTextPreference;)V

    .line 470
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
