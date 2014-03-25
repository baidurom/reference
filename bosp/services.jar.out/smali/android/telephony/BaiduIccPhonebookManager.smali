.class public Landroid/telephony/BaiduIccPhonebookManager;
.super Ljava/lang/Object;
.source "BaiduIccPhonebookManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/BaiduIccPhonebookManager$PhoneBookFeatures;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaiduIccPhonebookManager"

.field public static final SIM_ANR_COLUMN:I = 0x4

.field public static final SIM_EMAIL_COLUMN:I = 0x3

.field public static final SIM_INDEX_COLUMN:I = 0x0

.field public static final SIM_NAME_COLUMN:I = 0x1

.field public static final SIM_NUMBER_COLUMN:I = 0x2

.field public static final STR_ANRS:Ljava/lang/String; = "anr"

.field public static final STR_EMAILS:Ljava/lang/String; = "emails"

.field public static final STR_INDEX:Ljava/lang/String; = "index"

.field public static final STR_NEW_ANRS:Ljava/lang/String; = "newAnr"

.field public static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final STR_NUMBER:Ljava/lang/String; = "number"

.field public static final STR_TAG:Ljava/lang/String; = "tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getAdnRecordsSize(II)[I
    .locals 4
    .parameter "efid"
    .parameter "slotId"

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 82
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    if-eqz v1, :cond_1

    .line 84
    :try_start_0
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    :goto_1
    return-object v2

    .line 79
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const-string v2, "simphonebook2"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BaiduIccPhonebookManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getIccCardType(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 93
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 94
    .local v0, tlMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isPhbReady(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 110
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :goto_0
    if-eqz v1, :cond_1

    .line 112
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/IIccPhoneBook;->isPhbReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 119
    :goto_1
    return v2

    .line 107
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    const-string v2, "simphonebook2"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .restart local v1       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BaiduIccPhonebookManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    :catch_1
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "BaiduIccPhonebookManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
