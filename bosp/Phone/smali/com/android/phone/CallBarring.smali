.class public Lcom/android/phone/CallBarring;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CallBarring.java"

# interfaces
.implements Lcom/android/phone/CallBarringInterface;


# static fields
.field private static final BUTTON_ALL_INCOMING_EXCEPT:Ljava/lang/String; = "all_incoming_except_key"

.field private static final BUTTON_ALL_INCOMING_KEY:Ljava/lang/String; = "all_incoming_key"

.field private static final BUTTON_ALL_OUTING_KEY:Ljava/lang/String; = "all_outing_international_key"

.field private static final BUTTON_CALL_BARRING_KEY:Ljava/lang/String; = "all_outing_key"

.field private static final BUTTON_CHANGE_PASSWORD_KEY:Ljava/lang/String; = "change_password_key"

.field private static final BUTTON_DEACTIVATE_KEY:Ljava/lang/String; = "deactivate_all_key"

.field private static final BUTTON_OUT_INTERNATIONAL_EXCEPT:Ljava/lang/String; = "all_outing_except_key"

.field private static final DBG:Z = false

.field public static final DEFAULT_SIM:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallBarring"


# instance fields
.field private bFirstResume:Z

.field private isVtSetting:Z

.field private mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

.field private mCallCancel:Lcom/android/phone/CallBarringResetPreference;

.field private mCallChangePassword:Lcom/android/phone/CallBarringChangePassword;

.field private mCallInButton:Lcom/android/phone/CallBarringBasePreference;

.field private mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

.field private mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

.field private mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

.field private mCheckedPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorState:I

.field private mInitIndex:I

.field private mPassword:Ljava/lang/String;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mResetIndex:I

.field private mSimId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallBarring;->mCheckedPreferences:Ljava/util/ArrayList;

    .line 43
    iput v1, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    .line 44
    iput v1, p0, Lcom/android/phone/CallBarring;->mResetIndex:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallBarring;->mPassword:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/android/phone/CallBarring;->mErrorState:I

    .line 47
    iput-boolean v1, p0, Lcom/android/phone/CallBarring;->bFirstResume:Z

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallBarring;->mSimId:I

    .line 55
    iput-boolean v1, p0, Lcom/android/phone/CallBarring;->isVtSetting:Z

    return-void
.end method

.method private doGetCallState(Landroid/preference/Preference;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 192
    instance-of v0, p1, Lcom/android/phone/CallBarringBasePreference;

    if-eqz v0, :cond_0

    .line 194
    check-cast p1, Lcom/android/phone/CallBarringBasePreference;

    .end local p1
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/phone/CallBarring;->mSimId:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/phone/CallBarringBasePreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 197
    :cond_0
    return-void
.end method

.method private doSetCallState(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 2
    .parameter "p"
    .parameter "password"

    .prologue
    .line 227
    instance-of v1, p1, Lcom/android/phone/CallBarringBasePreference;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 228
    check-cast v0, Lcom/android/phone/CallBarringBasePreference;

    .line 231
    .local v0, cp:Lcom/android/phone/CallBarringBasePreference;
    invoke-virtual {v0, p2}, Lcom/android/phone/CallBarringBasePreference;->setCallState(Ljava/lang/String;)V

    .line 233
    .end local v0           #cp:Lcom/android/phone/CallBarringBasePreference;
    :cond_0
    return-void
.end method

.method private initial()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    const-string v1, "AO"

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    const v1, 0x7f0b0271

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmTitle(I)V

    .line 168
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    const-string v1, "OI"

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    const v1, 0x7f0b0272

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmTitle(I)V

    .line 172
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    const-string v1, "OX"

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    const v1, 0x7f0b0273

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmTitle(I)V

    .line 177
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    const-string v1, "AI"

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    const v1, 0x7f0b0274

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmTitle(I)V

    .line 180
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    const-string v1, "IR"

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    const v1, 0x7f0b0275

    invoke-virtual {v0, v1}, Lcom/android/phone/CallBarringBasePreference;->setmTitle(I)V

    .line 182
    iget-object v0, p0, Lcom/android/phone/CallBarring;->mCallCancel:Lcom/android/phone/CallBarringResetPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallBarringResetPreference;->setListener(Lcom/android/phone/TimeConsumingPreferenceListener;)V

    .line 183
    return-void
.end method

.method private startUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    iput v3, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    .line 151
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 152
    .local v0, p:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, v0}, Lcom/android/phone/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 154
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMmiFinished(Z)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public doCallBarringRefresh(Ljava/lang/String;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1}, Lcom/android/phone/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0281

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, summary:Ljava/lang/String;
    const-string v1, "AO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 255
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 259
    :cond_0
    const-string v1, "OI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 266
    :cond_1
    const-string v1, "OX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 273
    :cond_2
    const-string v1, "AI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 278
    :cond_3
    const-string v1, "IR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 279
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 282
    :cond_4
    return-void
.end method

.method public doCancelAllState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1}, Lcom/android/phone/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0281

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, summary:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 242
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 244
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/CallBarringBasePreference;->setChecked(Z)V

    .line 248
    return-void
.end method

.method public getErrorState()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/phone/CallBarring;->mErrorState:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    const/16 v0, 0x12c

    invoke-virtual {p0}, Lcom/android/phone/CallBarring;->getErrorState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/CallBarring;->finish()V

    .line 163
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/16 v5, 0x200

    .line 59
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 65
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/phone/CallBarring;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/CallBarring;->mSimId:I

    .line 67
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/CallBarring;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ISVT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/CallBarring;->isVtSetting:Z

    .line 68
    const-string v2, "CallBarring"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/CallBarring;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ISVT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/CallBarring;->isVtSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const v2, 0x7f050003

    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarring;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/CallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 74
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "all_outing_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringBasePreference;

    iput-object v2, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    .line 76
    const-string v2, "all_outing_international_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringBasePreference;

    iput-object v2, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    .line 78
    const-string v2, "all_outing_except_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringBasePreference;

    iput-object v2, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    .line 80
    const-string v2, "all_incoming_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringBasePreference;

    iput-object v2, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    .line 82
    const-string v2, "all_incoming_except_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringBasePreference;

    iput-object v2, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    .line 85
    const-string v2, "deactivate_all_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringResetPreference;

    iput-object v2, p0, Lcom/android/phone/CallBarring;->mCallCancel:Lcom/android/phone/CallBarringResetPreference;

    .line 87
    const-string v2, "change_password_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallBarringChangePassword;

    iput-object v2, p0, Lcom/android/phone/CallBarring;->mCallChangePassword:Lcom/android/phone/CallBarringChangePassword;

    .line 90
    invoke-direct {p0}, Lcom/android/phone/CallBarring;->initial()V

    .line 91
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/CallBarringInterface;)V

    .line 98
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/CallBarringInterface;)V

    .line 99
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/CallBarringInterface;)V

    .line 100
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/CallBarringInterface;)V

    .line 101
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/CallBarringInterface;)V

    .line 103
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallCancel:Lcom/android/phone/CallBarringResetPreference;

    iget v3, p0, Lcom/android/phone/CallBarring;->mSimId:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallBarringResetPreference;->setCallBarringInterface(Lcom/android/phone/CallBarringInterface;I)V

    .line 104
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallChangePassword:Lcom/android/phone/CallBarringChangePassword;

    iget v3, p0, Lcom/android/phone/CallBarring;->mSimId:I

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/CallBarringChangePassword;->setTimeConsumingListener(Lcom/android/phone/TimeConsumingPreferenceListener;I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/CallBarring;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/CallBarring;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/phone/MultipleSimActivity;->SUB_TITLE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarring;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/CallBarring;->isVtSetting:Z

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallAllOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/CallBarringBasePreference;->setServiceClass(I)V

    .line 124
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/CallBarringBasePreference;->setServiceClass(I)V

    .line 125
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/CallBarringBasePreference;->setServiceClass(I)V

    .line 126
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallInButton:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/CallBarringBasePreference;->setServiceClass(I)V

    .line 127
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallInButton2:Lcom/android/phone/CallBarringBasePreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/CallBarringBasePreference;->setServiceClass(I)V

    .line 128
    iget-object v2, p0, Lcom/android/phone/CallBarring;->mCallCancel:Lcom/android/phone/CallBarringResetPreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/CallBarringResetPreference;->setServiceClass(I)V

    .line 131
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/CallBarring;->bFirstResume:Z

    .line 132
    invoke-static {p0}, Lyi/support/v1/YiLaf;->enable(Landroid/app/Activity;)V

    .line 133
    invoke-static {p0}, Lyi/support/v1/YiLaf;->removePreferencePadding(Landroid/app/Activity;)V

    .line 134
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 5
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 202
    iget v3, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    iget-object v4, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallBarring;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallBarringBasePreference;

    .line 204
    .local v0, cb:Lcom/android/phone/CallBarringBasePreference;
    invoke-virtual {v0}, Lcom/android/phone/CallBarringBasePreference;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget v3, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    .line 210
    iget-object v3, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 211
    .local v2, p:Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/android/phone/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 222
    .end local v0           #cb:Lcom/android/phone/CallBarringBasePreference;
    .end local v2           #p:Landroid/preference/Preference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 223
    return-void

    .line 215
    .restart local v0       #cb:Lcom/android/phone/CallBarringBasePreference;
    :cond_1
    iget v1, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 217
    iget-object v3, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 140
    iget-boolean v0, p0, Lcom/android/phone/CallBarring;->bFirstResume:Z

    if-ne v0, v1, :cond_1

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallBarring;->bFirstResume:Z

    .line 143
    invoke-direct {p0}, Lcom/android/phone/CallBarring;->startUpdate()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMmiFinished()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/phone/CallBarring;->startUpdate()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public resetIndex(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 294
    iput p1, p0, Lcom/android/phone/CallBarring;->mInitIndex:I

    .line 295
    return-void
.end method

.method public setErrorState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 289
    iput p1, p0, Lcom/android/phone/CallBarring;->mErrorState:I

    .line 290
    return-void
.end method
