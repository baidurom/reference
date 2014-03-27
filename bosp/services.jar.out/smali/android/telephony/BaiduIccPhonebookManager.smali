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

.field public static final SIM_EMAIL_COLUMN:I = 0x2

.field public static final SIM_INDEX_COLUMN:I = 0x3

.field public static final SIM_NAME_COLUMN:I = 0x0

.field public static final SIM_NUMBER_COLUMN:I = 0x1

.field public static final STR_ANRS:Ljava/lang/String; = "anrs"

.field public static final STR_EMAILS:Ljava/lang/String; = "emails"

.field public static final STR_INDEX:Ljava/lang/String; = "index"

.field public static final STR_NEW_ANRS:Ljava/lang/String; = "newAnrs"

.field public static final STR_NEW_EMAILS:Ljava/lang/String; = "newEmails"

.field public static final STR_NEW_NUMBER:Ljava/lang/String; = "newNumber"

.field public static final STR_NEW_TAG:Ljava/lang/String; = "newTag"

.field public static final STR_NUMBER:Ljava/lang/String; = "number"

.field public static final STR_TAG:Ljava/lang/String; = "tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getAdnRecordsSize(II)[I
    .locals 4
    .parameter "efid"
    .parameter "slotId"

    .prologue
    .line 76
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 78
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BaiduIccPhonebookManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getIccCardType(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 94
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 95
    .local v0, tlMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIccCardType()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isPhbReady(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
