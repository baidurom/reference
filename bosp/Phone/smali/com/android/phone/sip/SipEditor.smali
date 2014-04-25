.class public Lcom/android/phone/sip/SipEditor;
.super Landroid/preference/PreferenceActivity;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/sip/SipEditor$4;,
        Lcom/android/phone/sip/SipEditor$AdvancedSettings;,
        Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;,
        Lcom/android/phone/sip/SipEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static final GET_METHOD_PREFIX:Ljava/lang/String; = "get"

.field private static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field private static final MENU_DISCARD:I = 0x2

.field private static final MENU_REMOVE:I = 0x3

.field private static final MENU_SAVE:I = 0x1

.field private static final NA:I = 0x0

.field private static final SCRAMBLED:C = '*'

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mDisplayNameSet:Z

.field private mHomeButtonClicked:Z

.field private mOldProfile:Landroid/net/sip/SipProfile;

.field private mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

.field private mProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mUpdateRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 600
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/sip/SipEditor;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/sip/SipEditor;)Landroid/net/sip/SipManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/sip/SipEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->unregisterOldPrimaryAccount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/sip/SipEditor;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method private checkIfDisplayNameSet()V
    .locals 4

    .prologue
    .line 539
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, displayName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    .line 542
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName set? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    if-eqz v1, :cond_1

    .line 544
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 548
    :goto_1
    return-void

    .line 540
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 546
    :cond_1
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createSipProfile()Landroid/net/sip/SipProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->isAlwaysSendKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 269
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDefaultDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .locals 6
    .parameter "pref"

    .prologue
    .line 468
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 469
    .local v2, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v4, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_0

    return-object v2

    .line 468
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .end local v2           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlwaysSendKeepAlive()Z
    .locals 3

    .prologue
    .line 516
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v0, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 518
    .local v0, pref:Landroid/preference/ListPreference;
    const v1, 0x7f0b025f

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 318
    iget-object v0, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 319
    .local v0, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p0, v2}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V
    .locals 11
    .parameter "p"

    .prologue
    .line 475
    if-eqz p1, :cond_4

    .line 476
    sget-object v8, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Edit the existing profile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :try_start_0
    const-class v6, Landroid/net/sip/SipProfile;

    .line 479
    .local v6, profileClass:Ljava/lang/Class;
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 480
    .local v3, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v9}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 482
    .local v5, meth:Ljava/lang/reflect/Method;
    sget-object v8, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v3, v8, :cond_1

    .line 483
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 485
    .local v7, value:Z
    if-eqz v7, :cond_0

    const v8, 0x7f0b025f

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 479
    .end local v7           #value:Z
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    .restart local v7       #value:Z
    :cond_0
    const v8, 0x7f0b025e

    goto :goto_1

    .line 489
    .end local v7           #value:Z
    :cond_1
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 490
    .local v7, value:Ljava/lang/Object;
    if-nez v7, :cond_2

    const-string v8, ""

    :goto_3
    invoke-virtual {v3, v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 494
    .end local v0           #arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v2           #i$:I
    .end local v3           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v4           #len$:I
    .end local v5           #meth:Ljava/lang/reflect/Method;
    .end local v6           #profileClass:Ljava/lang/Class;
    .end local v7           #value:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 495
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v9, "Can not load pref from profile"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v1           #e:Ljava/lang/Exception;
    :goto_4
    return-void

    .line 490
    .restart local v0       #arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v2       #i$:I
    .restart local v3       #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v4       #len$:I
    .restart local v5       #meth:Ljava/lang/reflect/Method;
    .restart local v6       #profileClass:Ljava/lang/Class;
    .restart local v7       #value:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 493
    .end local v3           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v5           #meth:Ljava/lang/reflect/Method;
    .end local v7           #value:Ljava/lang/Object;
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 498
    .end local v0           #arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v6           #profileClass:Ljava/lang/Class;
    :cond_4
    sget-object v8, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v9, "Edit a new profile"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .restart local v0       #arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_5
    if-ge v2, v4, :cond_6

    aget-object v3, v0, v2

    .line 500
    .restart local v3       #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v8, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 507
    iget v8, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->initValue:I

    if-eqz v8, :cond_5

    .line 508
    iget v8, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->initValue:I

    invoke-virtual {p0, v8}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 499
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 511
    .end local v3           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    goto :goto_4
.end method

.method private replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "oldProfile"
    .parameter "newProfile"

    .prologue
    .line 401
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipEditor$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/phone/sip/SipEditor$3;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    const-string v2, "SipEditor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 419
    return-void
.end method

.method private saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v1, p1}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V

    .line 255
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static scramble(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 555
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 556
    .local v0, cc:[C
    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 557
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private setCheckBox(Lcom/android/phone/sip/SipEditor$PreferenceKey;Z)V
    .locals 1
    .parameter "key"
    .parameter "checked"

    .prologue
    .line 523
    iget-object v0, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 524
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 525
    return-void
.end method

.method private setRemovedProfileAndFinish()V
    .locals 3

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 288
    const v1, 0x7f0b0227

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 290
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    .line 292
    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .locals 6
    .parameter "pref"

    .prologue
    .line 528
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 529
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 530
    .local v2, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget v5, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 532
    iput-object p1, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 536
    .end local v2           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    return-void

    .line 529
    .restart local v2       #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v4       #name:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home button clicked, don\'t show dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 305
    :cond_0
    new-instance v0, Lcom/android/phone/sip/SipEditor$2;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/sip/SipEditor$2;-><init>(Lcom/android/phone/sip/SipEditor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 295
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method private unregisterOldPrimaryAccount()V
    .locals 4

    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, primaryAccountUri:Ljava/lang/String;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method private unregisterProfile(Ljava/lang/String;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 273
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipEditor$1;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/sip/SipEditor$1;-><init>(Lcom/android/phone/sip/SipEditor;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 283
    return-void
.end method

.method private validateAndSetResult()V
    .locals 17

    .prologue
    .line 324
    const/4 v1, 0x1

    .line 325
    .local v1, allEmpty:Z
    const/4 v5, 0x0

    .line 326
    .local v5, firstEmptyFieldTitle:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v2

    .local v2, arr$:[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v9, v2

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v9, :cond_4

    aget-object v8, v2, v6

    .line 327
    .local v8, key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v10, v8, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .line 328
    .local v10, p:Landroid/preference/Preference;
    instance-of v14, v10, Landroid/preference/EditTextPreference;

    if-eqz v14, :cond_1

    move-object v12, v10

    .line 329
    check-cast v12, Landroid/preference/EditTextPreference;

    .line 330
    .local v12, pref:Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/sip/SipEditor;->isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z

    move-result v4

    .line 331
    .local v4, fieldEmpty:Z
    if-eqz v1, :cond_0

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 334
    :cond_0
    if-eqz v4, :cond_2

    .line 335
    sget-object v14, Lcom/android/phone/sip/SipEditor$4;->$SwitchMap$com$android$phone$sip$SipEditor$PreferenceKey:[I

    invoke-virtual {v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 347
    if-nez v5, :cond_1

    .line 348
    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 326
    .end local v4           #fieldEmpty:Z
    .end local v12           #pref:Landroid/preference/EditTextPreference;
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 337
    .restart local v4       #fieldEmpty:Z
    .restart local v12       #pref:Landroid/preference/EditTextPreference;
    :pswitch_1
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 344
    :pswitch_2
    const v14, 0x7f0b0253

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 351
    :cond_2
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v8, v14, :cond_1

    .line 352
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v14}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 353
    .local v11, port:I
    const/16 v14, 0x3e8

    if-lt v11, v14, :cond_3

    const v14, 0xfffe

    if-le v11, v14, :cond_1

    .line 354
    :cond_3
    const v14, 0x7f0b0258

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 383
    .end local v4           #fieldEmpty:Z
    .end local v8           #key:Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v10           #p:Landroid/preference/Preference;
    .end local v11           #port:I
    .end local v12           #pref:Landroid/preference/EditTextPreference;
    :goto_2
    return-void

    .line 361
    :cond_4
    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v14, :cond_6

    .line 362
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_2

    .line 364
    :cond_6
    if-eqz v5, :cond_7

    .line 365
    const v14, 0x7f0b0257

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/phone/sip/SipEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 370
    :cond_7
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/sip/SipEditor;->createSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v13

    .line 371
    .local v13, profile:Landroid/net/sip/SipProfile;
    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcom/android/phone/sip/SipSettings;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    .local v7, intent:Landroid/content/Intent;
    const-string v14, "sip_profile"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 373
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/phone/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 374
    const v14, 0x7f0b0226

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 379
    .end local v7           #intent:Landroid/content/Intent;
    .end local v13           #profile:Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v3

    .line 380
    .local v3, e:Ljava/lang/Exception;
    sget-object v14, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v15, "Can not create new SipProfile"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 158
    sget-object v5, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v6, "start profile editor"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    .line 162
    new-instance v5, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 163
    new-instance v5, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 166
    const v5, 0x7f040043

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->setContentView(I)V

    .line 167
    const v5, 0x7f050020

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->addPreferencesFromResource(I)V

    .line 169
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "sip_profile"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    :goto_0
    check-cast v3, Landroid/net/sip/SipProfile;

    iput-object v3, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    .line 173
    .local v3, p:Landroid/net/sip/SipProfile;
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 174
    .local v4, screen:Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .local v2, n:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 175
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #p:Landroid/net/sip/SipProfile;
    .end local v4           #screen:Landroid/preference/PreferenceGroup;
    :cond_0
    const-string v5, "profile"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    goto :goto_0

    .line 178
    .restart local v1       #i:I
    .restart local v2       #n:I
    .restart local v3       #p:Landroid/net/sip/SipProfile;
    .restart local v4       #screen:Landroid/preference/PreferenceGroup;
    :cond_1
    if-nez v3, :cond_2

    .line 179
    const v5, 0x7f0b023f

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 181
    :cond_2
    new-instance v5, Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;-><init>(Lcom/android/phone/sip/SipEditor;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    .line 182
    new-instance v5, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    .line 184
    invoke-direct {p0, v3}, Lcom/android/phone/sip/SipEditor;->loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 186
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 188
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 190
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 205
    const v0, 0x7f0b0228

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 207
    const/4 v0, 0x2

    const v1, 0x7f0b0229

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 209
    const/4 v0, 0x3

    const v1, 0x7f0b0224

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 211
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 244
    packed-switch p1, :pswitch_data_0

    .line 249
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 246
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 247
    const/4 v0, 0x1

    goto :goto_0

    .line 244
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

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 239
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 227
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    goto :goto_0

    .line 231
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_0

    .line 235
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->setRemovedProfileAndFinish()V

    goto :goto_0

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 194
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipEditor onPause(): finishing? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 197
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 199
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 200
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 444
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v1, :cond_0

    .line 445
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    .line 446
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 450
    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 464
    .end local p1
    :cond_1
    :goto_0
    return v2

    .line 451
    .restart local p1
    :cond_2
    if-nez p2, :cond_3

    const-string v0, ""

    .line 452
    .local v0, value:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 460
    :goto_2
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 461
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V

    goto :goto_0

    .line 451
    .end local v0           #value:Ljava/lang/String;
    .restart local p1
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 454
    .restart local v0       #value:Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 455
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 457
    :cond_5
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 216
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 217
    .local v0, removeMenu:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 218
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 217
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 145
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 146
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->show()V

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
