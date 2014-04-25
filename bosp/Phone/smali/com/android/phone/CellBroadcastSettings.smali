.class public Lcom/android/phone/CellBroadcastSettings;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CellBroadcastSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CellBroadcastSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final CHANNEL_NAME_LENGTH:I = 0x14

.field private static final CHANNEL_URI:Landroid/net/Uri; = null

.field private static final CHANNEL_URI1:Landroid/net/Uri; = null

.field private static final DBG:Z = false

.field public static final DEFAULT_SIM:I = 0x2

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final KEYID:Ljava/lang/String; = "_id"

.field private static final KEY_ADD_CHANNEL:Ljava/lang/String; = "button_add_channel"

.field private static final KEY_CHANNEL_LIST:Ljava/lang/String; = "menu_channel_list"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "button_language"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CellBroadcastSettings"

.field private static final MENU_CHANNEL_DELETE:I = 0xc

.field private static final MENU_CHANNEL_EDIT:I = 0xb

.field private static final MENU_CHANNEL_ENABLE_DISABLE:I = 0xa

.field private static final MESSAGE_GET_CONFIG:I = 0x64

.field private static final MESSAGE_SET_CONFIG:I = 0x65

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final mLanguageNum:I = 0x16


# instance fields
.field private mAddChannelPreference:Landroid/preference/PreferenceScreen;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mChannelArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelListPreference:Landroid/preference/PreferenceCategory;

.field private mChannelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CellBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/phone/CellBroadcastSettings$MyHandler;

.field private mLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CellBroadcastLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CellBroadcastLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePreference:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CellBroadcastSettings;->CHANNEL_URI:Landroid/net/Uri;

    .line 94
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CellBroadcastSettings;->CHANNEL_URI1:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 96
    sget-object v0, Lcom/android/phone/CellBroadcastSettings;->CHANNEL_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    .line 102
    new-instance v0, Lcom/android/phone/CellBroadcastSettings$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CellBroadcastSettings$MyHandler;-><init>(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mHandler:Lcom/android/phone/CellBroadcastSettings$MyHandler;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CellBroadcastSettings;->mSimId:I

    .line 624
    return-void
.end method

.method private ClearChannel()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->showEditChannelDialog(Lcom/android/phone/CellBroadcastChannel;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->updateChannelUIList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CellBroadcastSettings;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CellBroadcastSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->displayMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/CellBroadcastSettings;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CellBroadcastSettings;->checkChannelIdExist(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;Lcom/android/phone/CellBroadcastChannel;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CellBroadcastSettings;->updateChannelToDatabase(Lcom/android/phone/CellBroadcastChannel;Lcom/android/phone/CellBroadcastChannel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/CellBroadcastSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/CellBroadcastSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->queryChannelFromDatabase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/CellBroadcastSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->initChannelMap()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/CellBroadcastSettings;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/CellBroadcastSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->updateLanguageSummary()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/CellBroadcastSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->getCellBroadcastConfig(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/CellBroadcastSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/CellBroadcastSettings;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->makeLanguageConfigArray()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->checkChannelName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/CellBroadcastSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->checkChannelNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/CellBroadcastSettings;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->checkChannelIdExist(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->insertChannelToDatabase(Lcom/android/phone/CellBroadcastChannel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/CellBroadcastSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CellBroadcastSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkChannelIdExist(I)Z
    .locals 3
    .parameter "channelId"

    .prologue
    .line 998
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 999
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1000
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v2}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1001
    const/4 v2, 0x1

    .line 1003
    :goto_1
    return v2

    .line 999
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1003
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkChannelIdExist(II)Z
    .locals 6
    .parameter "newChannelId"
    .parameter "keyId"

    .prologue
    .line 1007
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1008
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1009
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CellBroadcastChannel;

    .line 1010
    .local v2, tChannel:Lcom/android/phone/CellBroadcastChannel;
    invoke-virtual {v2}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v3

    .line 1011
    .local v3, tempChannelId:I
    invoke-virtual {v2}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v4

    .line 1012
    .local v4, tempKeyId:I
    if-ne v3, p1, :cond_0

    if-eq v4, p2, :cond_0

    .line 1013
    const/4 v5, 0x1

    .line 1015
    .end local v2           #tChannel:Lcom/android/phone/CellBroadcastChannel;
    .end local v3           #tempChannelId:I
    .end local v4           #tempKeyId:I
    :goto_1
    return v5

    .line 1008
    .restart local v2       #tChannel:Lcom/android/phone/CellBroadcastChannel;
    .restart local v3       #tempChannelId:I
    .restart local v4       #tempKeyId:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    .end local v2           #tChannel:Lcom/android/phone/CellBroadcastChannel;
    .end local v3           #tempChannelId:I
    .end local v4           #tempKeyId:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkChannelName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 980
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 982
    :cond_0
    const-string p1, ""

    .line 983
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    .line 984
    const/4 v0, 0x0

    .line 985
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkChannelNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 989
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v1

    .line 991
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 992
    .local v0, t:I
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 994
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private deleteChannelFromDatabase(Lcom/android/phone/CellBroadcastChannel;)Z
    .locals 5
    .parameter "oldChannel"

    .prologue
    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private final displayMessage(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 914
    invoke-virtual {p0, p1}, Lcom/android/phone/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 915
    return-void
.end method

.method private final displayMessage(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 918
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 919
    return-void
.end method

.method private dumpConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 618
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump start for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromServiceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ToServiceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FromCodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ToCodeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v0, "Settings/CellBroadcastSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump end for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void
.end method

.method private getCellBroadcastConfig(Z)V
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 263
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mHandler:Lcom/android/phone/CellBroadcastSettings$MyHandler;

    invoke-virtual {v1, v3, v4, v3, v5}, Lcom/android/phone/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 269
    .local v0, msg:Landroid/os/Message;
    :goto_0
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/CellBroadcastSettings;->mSimId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getCellBroadcastSmsConfigGemini(Landroid/os/Message;I)V

    .line 279
    :goto_1
    if-eqz p1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, p1}, Lcom/android/phone/CellBroadcastSettings;->onStarted(Landroid/preference/Preference;Z)V

    .line 281
    :cond_0
    return-void

    .line 266
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mHandler:Lcom/android/phone/CellBroadcastSettings$MyHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v3, v4, v2, v5}, Lcom/android/phone/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private getChannelObjectFromKey(Ljava/lang/String;)Lcom/android/phone/CellBroadcastChannel;
    .locals 1
    .parameter "key"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CellBroadcastChannel;

    return-object v0
.end method

.method private getChannelObjectFromMapKey(Ljava/lang/String;)Lcom/android/phone/CellBroadcastChannel;
    .locals 2
    .parameter "key"

    .prologue
    .line 463
    new-instance v0, Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {v0}, Lcom/android/phone/CellBroadcastChannel;-><init>()V

    .line 464
    .local v0, channel:Lcom/android/phone/CellBroadcastChannel;
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #channel:Lcom/android/phone/CellBroadcastChannel;
    check-cast v0, Lcom/android/phone/CellBroadcastChannel;

    .line 469
    .restart local v0       #channel:Lcom/android/phone/CellBroadcastChannel;
    :goto_0
    return-object v0

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLanguageObjectFromKey(Ljava/lang/String;)Lcom/android/phone/CellBroadcastLanguage;
    .locals 1
    .parameter "key"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CellBroadcastLanguage;

    return-object v0
.end method

.method private initChannelMap()V
    .locals 6

    .prologue
    .line 454
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    .line 455
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 456
    .local v2, tSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 457
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v3}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 458
    .local v1, id:I
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v1           #id:I
    :cond_0
    return-void
.end method

.method private initLanguage()V
    .locals 0

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->initLanguageList()V

    .line 733
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->initLanguageMap()V

    .line 734
    return-void
.end method

.method private initLanguageList()V
    .locals 11

    .prologue
    const/16 v10, 0x16

    .line 706
    new-array v4, v10, [Z

    .line 707
    .local v4, languageEnable:[Z
    new-array v5, v10, [Ljava/lang/String;

    .line 708
    .local v5, languageId:[Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    .line 709
    .local v6, languageName:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 710
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 711
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 712
    aget-object v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 713
    .local v2, id:I
    aget-object v7, v6, v1

    .line 714
    .local v7, name:Ljava/lang/String;
    aget-boolean v0, v4, v1

    .line 715
    .local v0, enable:Z
    new-instance v3, Lcom/android/phone/CellBroadcastLanguage;

    invoke-direct {v3, v2, v7, v0}, Lcom/android/phone/CellBroadcastLanguage;-><init>(ILjava/lang/String;Z)V

    .line 716
    .local v3, language:Lcom/android/phone/CellBroadcastLanguage;
    iget-object v8, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    .end local v0           #enable:Z
    .end local v2           #id:I
    .end local v3           #language:Lcom/android/phone/CellBroadcastLanguage;
    .end local v7           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initLanguageMap()V
    .locals 5

    .prologue
    .line 721
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    .line 722
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x16

    if-ge v0, v3, :cond_1

    .line 723
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CellBroadcastLanguage;

    .line 724
    .local v2, language:Lcom/android/phone/CellBroadcastLanguage;
    if-eqz v2, :cond_0

    .line 725
    invoke-virtual {v2}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageId()I

    move-result v1

    .line 726
    .local v1, id:I
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .end local v1           #id:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    .end local v2           #language:Lcom/android/phone/CellBroadcastLanguage;
    :cond_1
    return-void
.end method

.method private initPreference()V
    .locals 1

    .prologue
    .line 156
    const-string v0, "button_language"

    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    .line 157
    const-string v0, "button_add_channel"

    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    .line 158
    const-string v0, "menu_channel_list"

    invoke-virtual {p0, v0}, Lcom/android/phone/CellBroadcastSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    .line 159
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    return-void
.end method

.method private insertChannelToDatabase(Lcom/android/phone/CellBroadcastChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 243
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v2, "number"

    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v2, "enable"

    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 8
    .parameter "channel"

    .prologue
    const/4 v3, -0x1

    .line 364
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 365
    .local v6, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 366
    .local v1, tChannelId:I
    const/4 v7, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v6, v7

    .line 367
    return-object v6
.end method

.method private makeLanguageConfigArray()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 13

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 875
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageState()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 879
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 880
    .local v0, CBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    .end local v0           #CBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    return-object v1

    .line 884
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageId()I

    move-result v3

    .line 885
    .local v3, beginId:I
    move v4, v3

    .line 886
    .local v4, endId:I
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageState()Z

    move-result v5

    .line 887
    .local v5, beginState:Z
    const/4 v6, 0x2

    .line 888
    .local v6, i:I
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 889
    .local v9, tSize:I
    const/4 v6, 0x2

    :goto_1
    if-ge v6, v9, :cond_3

    .line 890
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/CellBroadcastLanguage;

    .line 891
    .local v8, tLanguage:Lcom/android/phone/CellBroadcastLanguage;
    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageId()I

    move-result v10

    .line 892
    .local v10, tempId:I
    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageState()Z

    move-result v11

    .line 893
    .local v11, tempState:Z
    add-int/lit8 v2, v4, 0x1

    if-ne v10, v2, :cond_2

    if-ne v5, v11, :cond_2

    .line 894
    move v4, v10

    .line 889
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 896
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 897
    .restart local v0       #CBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    move v3, v10

    .line 899
    move v4, v10

    .line 900
    move v5, v11

    goto :goto_2

    .line 903
    .end local v0           #CBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v8           #tLanguage:Lcom/android/phone/CellBroadcastLanguage;
    .end local v10           #tempId:I
    .end local v11           #tempState:Z
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 904
    iget-object v2, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CellBroadcastLanguage;

    invoke-virtual {v2}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageId()I

    move-result v4

    .line 905
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 906
    .restart local v0       #CBConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private queryChannelFromDatabase()Z
    .locals 11

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 494
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->ClearChannel()V

    .line 495
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v0, "name"

    aput-object v0, v2, v9

    const-string v0, "number"

    aput-object v0, v2, v1

    const-string v0, "enable"

    aput-object v0, v2, v3

    .line 497
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 498
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 499
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    new-instance v6, Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {v6}, Lcom/android/phone/CellBroadcastChannel;-><init>()V

    .line 501
    .local v6, channel:Lcom/android/phone/CellBroadcastChannel;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/phone/CellBroadcastChannel;->setChannelId(I)V

    .line 502
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/phone/CellBroadcastChannel;->setKeyId(I)V

    .line 503
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/phone/CellBroadcastChannel;->setChannelName(Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_1
    invoke-virtual {v6, v0}, Lcom/android/phone/CellBroadcastChannel;->setChannelState(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 511
    .end local v6           #channel:Lcom/android/phone/CellBroadcastChannel;
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    move v0, v10

    .line 514
    .end local v8           #e:Ljava/lang/Exception;
    :goto_2
    return v0

    .restart local v6       #channel:Lcom/android/phone/CellBroadcastChannel;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    move v0, v10

    .line 505
    goto :goto_1

    .line 509
    .end local v6           #channel:Lcom/android/phone/CellBroadcastChannel;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v9

    .line 514
    goto :goto_2
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 372
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 374
    return-void
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 5
    .parameter "objectList"

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 858
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mHandler:Lcom/android/phone/CellBroadcastSettings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v4, v2}, Lcom/android/phone/CellBroadcastSettings$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 860
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/CellBroadcastSettings;->mSimId:I

    invoke-virtual {v1, p1, p1, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V

    .line 870
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/CellBroadcastSettings;->onStarted(Landroid/preference/Preference;Z)V

    .line 871
    return-void

    .line 866
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1, p1, v0}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private setLanguageSummary([Z)V
    .locals 8
    .parameter "temp"

    .prologue
    const/4 v7, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 240
    :goto_0
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x1

    .line 213
    .local v0, AllLanguagesFlag:Z
    array-length v5, p1

    .line 214
    .local v5, tLength:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 215
    aget-boolean v6, p1, v2

    if-nez v6, :cond_2

    .line 216
    const/4 v0, 0x0

    .line 220
    :cond_1
    aput-boolean v0, p1, v7

    .line 221
    aget-boolean v6, p1, v7

    if-eqz v6, :cond_3

    .line 222
    iget-object v6, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0b029d

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 214
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 225
    :cond_3
    const/4 v1, 0x0

    .line 226
    .local v1, flag:I
    const-string v4, ""

    .line 227
    .local v4, summary:Ljava/lang/String;
    const/4 v3, -0x1

    .line 228
    .local v3, lastIndex:I
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v5, :cond_5

    .line 229
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-ge v1, v6, :cond_4

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/phone/CellBroadcastLanguage;

    invoke-virtual {v6}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 231
    add-int/lit8 v1, v1, 0x1

    .line 232
    move v3, v2

    .line 234
    :cond_4
    aget-boolean v6, p1, v2

    if-eqz v6, :cond_6

    if-le v2, v3, :cond_6

    const/4 v6, -0x1

    if-eq v3, v6, :cond_6

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 239
    :cond_5
    iget-object v6, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private showAddChannelDialog()V
    .locals 7

    .prologue
    .line 295
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 296
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040035

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 297
    .local v4, setView:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f070103

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 299
    .local v3, okButton:Landroid/widget/Button;
    const v5, 0x7f070104

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 300
    .local v1, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 301
    const v5, 0x7f0b0290

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 307
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v5}, Lcom/android/phone/CellBroadcastSettings;->requestInputMethod(Landroid/app/Dialog;)V

    .line 308
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 310
    new-instance v5, Lcom/android/phone/CellBroadcastSettings$2;

    invoke-direct {v5, p0}, Lcom/android/phone/CellBroadcastSettings$2;-><init>(Lcom/android/phone/CellBroadcastSettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    new-instance v5, Lcom/android/phone/CellBroadcastSettings$3;

    invoke-direct {v5, p0, v4}, Lcom/android/phone/CellBroadcastSettings$3;-><init>(Lcom/android/phone/CellBroadcastSettings;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    return-void
.end method

.method private showEditChannelDialog(Lcom/android/phone/CellBroadcastChannel;)V
    .locals 15
    .parameter "oldChannel"

    .prologue
    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v12

    .line 378
    .local v12, keyId:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v9

    .line 379
    .local v9, cid:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v10

    .line 380
    .local v10, cname:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v8

    .line 381
    .local v8, checked:Z
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 382
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040035

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 383
    .local v14, setView:Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 385
    const v0, 0x7f0b0296

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 386
    const v0, 0x7f0700fe

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 388
    .local v2, channelName:Landroid/widget/EditText;
    const v0, 0x7f0700ff

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 390
    .local v3, channelNum:Landroid/widget/EditText;
    const v0, 0x7f070100

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 392
    .local v4, channelState:Landroid/widget/CheckBox;
    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 395
    const v0, 0x7f070103

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 396
    .local v13, okButton:Landroid/widget/Button;
    const v0, 0x7f070104

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 402
    .local v7, cancelButton:Landroid/widget/Button;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 403
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 404
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/phone/CellBroadcastSettings;->requestInputMethod(Landroid/app/Dialog;)V

    .line 407
    new-instance v0, Lcom/android/phone/CellBroadcastSettings$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CellBroadcastSettings$4;-><init>(Lcom/android/phone/CellBroadcastSettings;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    new-instance v0, Lcom/android/phone/CellBroadcastSettings$5;

    move-object v1, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CellBroadcastSettings$5;-><init>(Lcom/android/phone/CellBroadcastSettings;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Lcom/android/phone/CellBroadcastChannel;)V

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    return-void
.end method

.method private showLanguageSelectDialog()V
    .locals 12

    .prologue
    const/16 v8, 0x16

    const/4 v11, 0x0

    .line 761
    new-array v6, v8, [Z

    .line 762
    .local v6, temp:[Z
    new-array v7, v8, [Z

    .line 763
    .local v7, temp2:[Z
    const/4 v0, 0x1

    .line 764
    .local v0, AllLanguagesFlag:Z
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 765
    iget-object v8, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CellBroadcastLanguage;

    .line 766
    .local v5, tLanguage:Lcom/android/phone/CellBroadcastLanguage;
    if-eqz v5, :cond_1

    .line 767
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "language status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageState()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {v5}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageState()Z

    move-result v8

    aput-boolean v8, v6, v2

    .line 769
    invoke-virtual {v5}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageState()Z

    move-result v8

    aput-boolean v8, v7, v2

    .line 773
    :goto_1
    aget-boolean v8, v6, v2

    if-nez v8, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 764
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    :cond_1
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showLanguageSelectDialog() init the language list failed when i="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 777
    .end local v5           #tLanguage:Lcom/android/phone/CellBroadcastLanguage;
    :cond_2
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All language status "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v8, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/CellBroadcastLanguage;

    invoke-virtual {v8, v0}, Lcom/android/phone/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 779
    aput-boolean v0, v7, v11

    aput-boolean v0, v6, v11

    .line 780
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 781
    .local v1, dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b0292

    invoke-virtual {p0, v8}, Lcom/android/phone/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 782
    const v8, 0x7f0b0035

    new-instance v9, Lcom/android/phone/CellBroadcastSettings$6;

    invoke-direct {v9, p0, v6, v7}, Lcom/android/phone/CellBroadcastSettings$6;-><init>(Lcom/android/phone/CellBroadcastSettings;[Z[Z)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 818
    const v8, 0x7f0b0039

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 819
    new-instance v4, Lcom/android/phone/CellBroadcastSettings$7;

    invoke-direct {v4, p0, v6}, Lcom/android/phone/CellBroadcastSettings$7;-><init>(Lcom/android/phone/CellBroadcastSettings;[Z)V

    .line 851
    .local v4, multiChoiceListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    const v8, 0x7f06001c

    invoke-virtual {v1, v8, v6, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 852
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 853
    .local v3, languageDialog:Landroid/app/AlertDialog;
    if-eqz v3, :cond_3

    .line 854
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 855
    :cond_3
    return-void
.end method

.method private showUpdateDBErrorInfoDialog()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CellBroadcastSettings;->onError(Landroid/preference/Preference;I)V

    .line 257
    return-void
.end method

.method private updateChannelEnableState(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 474
    .local v6, number:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 475
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 476
    .local v2, cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v0

    .line 477
    .local v0, ChannelObjectBeginIndex:I
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v1

    .line 478
    .local v1, ChannelObjectEndIndex:I
    move v5, v0

    .local v5, j:I
    :goto_1
    if-gt v5, v1, :cond_1

    .line 479
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CellBroadcastSettings;->getChannelObjectFromMapKey(Ljava/lang/String;)Lcom/android/phone/CellBroadcastChannel;

    move-result-object v3

    .line 480
    .local v3, channel:Lcom/android/phone/CellBroadcastChannel;
    if-eqz v3, :cond_0

    .line 481
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/phone/CellBroadcastChannel;->setChannelState(Z)V

    .line 478
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 483
    :cond_0
    const-string v7, "Settings/CellBroadcastSettings"

    const-string v8, "updateChannelEnableState(): object is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 474
    .end local v3           #channel:Lcom/android/phone/CellBroadcastChannel;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 486
    .end local v0           #ChannelObjectBeginIndex:I
    .end local v1           #ChannelObjectEndIndex:I
    .end local v2           #cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v5           #j:I
    :cond_2
    return-void
.end method

.method private updateChannelToDatabase(Lcom/android/phone/CellBroadcastChannel;Lcom/android/phone/CellBroadcastChannel;)Z
    .locals 13
    .parameter "oldChannel"
    .parameter "newChannel"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 518
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v5, v10

    const-string v8, "name"

    aput-object v8, v5, v9

    const/4 v8, 0x2

    const-string v11, "number"

    aput-object v11, v5, v8

    const/4 v8, 0x3

    const-string v11, "enable"

    aput-object v11, v5, v8

    .line 519
    .local v5, projection:[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v2

    .line 520
    .local v2, id:I
    invoke-virtual {p2}, Lcom/android/phone/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v1

    .line 522
    .local v1, enable:Z
    invoke-virtual {p2}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v4

    .line 523
    .local v4, number:I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 524
    .local v6, values:Landroid/content/ContentValues;
    const-string v8, "_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    const-string v8, "name"

    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v8, "number"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string v11, "enable"

    if-eqz v1, :cond_0

    move v8, v9

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 530
    .local v7, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v11, p0, Lcom/android/phone/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v6, v7, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_1
    return v9

    .end local v7           #where:Ljava/lang/String;
    :cond_0
    move v8, v10

    .line 527
    goto :goto_0

    .line 531
    .restart local v7       #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v9, v10

    .line 532
    goto :goto_1
.end method

.method private updateChannelUIList()V
    .locals 11

    .prologue
    .line 165
    iget-object v9, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 166
    iget-object v9, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 167
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 168
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, channel:Landroid/preference/Preference;
    iget-object v9, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/android/phone/CellBroadcastChannel;->getKeyId()I

    move-result v5

    .line 170
    .local v5, keyId:I
    iget-object v9, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/android/phone/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, channelName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 172
    .local v1, channelId:I
    iget-object v9, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/CellBroadcastChannel;

    invoke-virtual {v9}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v3

    .line 173
    .local v3, channelState:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, title:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v7, Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {v7, v5, v1, v2, v3}, Lcom/android/phone/CellBroadcastChannel;-><init>(IILjava/lang/String;Z)V

    .line 176
    .local v7, oldChannel:Lcom/android/phone/CellBroadcastChannel;
    if-eqz v3, :cond_0

    .line 178
    const v9, 0x7f0b0090

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 190
    :goto_1
    new-instance v9, Lcom/android/phone/CellBroadcastSettings$1;

    invoke-direct {v9, p0, v7}, Lcom/android/phone/CellBroadcastSettings$1;-><init>(Lcom/android/phone/CellBroadcastSettings;Lcom/android/phone/CellBroadcastChannel;)V

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 196
    iget-object v9, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    :cond_0
    const v9, 0x7f0b0091

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 198
    .end local v0           #channel:Landroid/preference/Preference;
    .end local v1           #channelId:I
    .end local v2           #channelName:Ljava/lang/String;
    .end local v3           #channelState:Z
    .end local v5           #keyId:I
    .end local v7           #oldChannel:Lcom/android/phone/CellBroadcastChannel;
    .end local v8           #title:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateChannelsWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v1

    .line 549
    .local v1, channelBeginIndex:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    .line 550
    .local v2, channelEndIndex:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v6

    .line 551
    .local v6, state:Z
    const-string v8, "Settings/CellBroadcastSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateChannelsWithSingleConfig STATE = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2

    .line 554
    move v3, v1

    .local v3, j:I
    :goto_0
    if-gt v3, v2, :cond_2

    .line 555
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, jStr:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/phone/CellBroadcastSettings;->getChannelObjectFromKey(Ljava/lang/String;)Lcom/android/phone/CellBroadcastChannel;

    move-result-object v0

    .line 557
    .local v0, channel:Lcom/android/phone/CellBroadcastChannel;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0, v6}, Lcom/android/phone/CellBroadcastChannel;->setChannelState(Z)V

    .line 554
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0b029e

    invoke-virtual {p0, v9}, Lcom/android/phone/CellBroadcastSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 562
    .local v7, tName:Ljava/lang/String;
    new-instance v5, Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {v5, v3, v7, v6}, Lcom/android/phone/CellBroadcastChannel;-><init>(ILjava/lang/String;Z)V

    .line 563
    .local v5, newChannel:Lcom/android/phone/CellBroadcastChannel;
    invoke-direct {p0, v5}, Lcom/android/phone/CellBroadcastSettings;->insertChannelToDatabase(Lcom/android/phone/CellBroadcastChannel;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    .line 566
    :cond_1
    iget-object v8, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v8, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 571
    .end local v0           #channel:Lcom/android/phone/CellBroadcastChannel;
    .end local v3           #j:I
    .end local v4           #jStr:Ljava/lang/String;
    .end local v5           #newChannel:Lcom/android/phone/CellBroadcastChannel;
    .end local v7           #tName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private updateCurrentChannelAndLanguage(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 614
    :cond_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 608
    .local v2, number:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 609
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 610
    .local v1, info:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v1}, Lcom/android/phone/CellBroadcastSettings;->updateLanguagesWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 611
    invoke-direct {p0, v1}, Lcom/android/phone/CellBroadcastSettings;->dumpConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 612
    invoke-direct {p0, v1}, Lcom/android/phone/CellBroadcastSettings;->updateChannelsWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateLanguageChecked(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 746
    .local v6, number:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 747
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 748
    .local v0, cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    .line 749
    .local v4, languageBeginIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    .line 750
    .local v5, languageEndIndex:I
    move v2, v4

    .local v2, j:I
    :goto_1
    if-gt v2, v5, :cond_1

    .line 751
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/android/phone/CellBroadcastLanguage;

    move-result-object v3

    .line 752
    .local v3, language:Lcom/android/phone/CellBroadcastLanguage;
    if-eqz v3, :cond_0

    .line 754
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v7

    invoke-virtual {v3, v7}, Lcom/android/phone/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 750
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 746
    .end local v3           #language:Lcom/android/phone/CellBroadcastLanguage;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    .end local v0           #cbConfig:Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v2           #j:I
    .end local v4           #languageBeginIndex:I
    .end local v5           #languageEndIndex:I
    :cond_2
    return-void
.end method

.method private updateLanguageSummary()V
    .locals 4

    .prologue
    .line 201
    const/16 v3, 0x16

    new-array v2, v3, [Z

    .line 202
    .local v2, temp:[Z
    array-length v1, v2

    .line 203
    .local v1, tLength:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CellBroadcastLanguage;

    invoke-virtual {v3}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageState()Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/phone/CellBroadcastSettings;->setLanguageSummary([Z)V

    .line 207
    return-void
.end method

.method private updateLanguagesWithSingleConfig(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    const/4 v8, -0x2

    .line 574
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v4

    .line 575
    .local v4, languageBeginIndex:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v5

    .line 576
    .local v5, languageEndIndex:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    if-eq v4, v8, :cond_1

    .line 577
    move v1, v4

    .local v1, j:I
    :goto_0
    if-gt v1, v5, :cond_3

    .line 578
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/android/phone/CellBroadcastLanguage;

    move-result-object v3

    .line 579
    .local v3, language:Lcom/android/phone/CellBroadcastLanguage;
    if-eqz v3, :cond_0

    .line 581
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/phone/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 577
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v1           #j:I
    .end local v3           #language:Lcom/android/phone/CellBroadcastLanguage;
    :cond_1
    const-string v6, "Settings/CellBroadcastSettings"

    const-string v7, "Select all language!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    if-ne v4, v8, :cond_3

    if-ne v5, v8, :cond_3

    .line 590
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 592
    iget-object v6, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CellBroadcastLanguage;

    .line 593
    .restart local v3       #language:Lcom/android/phone/CellBroadcastLanguage;
    invoke-virtual {v3}, Lcom/android/phone/CellBroadcastLanguage;->getLanguageId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CellBroadcastSettings;->getLanguageObjectFromKey(Ljava/lang/String;)Lcom/android/phone/CellBroadcastLanguage;

    move-result-object v2

    .line 594
    .local v2, lang:Lcom/android/phone/CellBroadcastLanguage;
    if-eqz v2, :cond_2

    .line 596
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/phone/CellBroadcastLanguage;->setLanguageState(Z)V

    .line 590
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
    .end local v0           #i:I
    .end local v2           #lang:Lcom/android/phone/CellBroadcastLanguage;
    .end local v3           #language:Lcom/android/phone/CellBroadcastLanguage;
    :cond_3
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v12, 0x0

    .line 923
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v7

    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 924
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v6, v0, -0x3

    .line 925
    .local v6, index:I
    iget-object v0, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/phone/CellBroadcastChannel;

    .line 926
    .local v11, oldChannel:Lcom/android/phone/CellBroadcastChannel;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 953
    :goto_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 928
    :pswitch_0
    new-instance v8, Lcom/android/phone/CellBroadcastChannel;

    invoke-direct {v8}, Lcom/android/phone/CellBroadcastChannel;-><init>()V

    .line 929
    .local v8, newChannel:Lcom/android/phone/CellBroadcastChannel;
    move-object v8, v11

    .line 930
    invoke-virtual {v11}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    invoke-virtual {v8, v0}, Lcom/android/phone/CellBroadcastChannel;->setChannelState(Z)V

    .line 931
    invoke-virtual {v11}, Lcom/android/phone/CellBroadcastChannel;->getChannelId()I

    move-result v1

    .line 932
    .local v1, tempOldChannelId:I
    new-array v9, v2, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 933
    .local v9, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {v8}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    aput-object v0, v9, v12

    .line 934
    invoke-direct {p0, v11, v8}, Lcom/android/phone/CellBroadcastSettings;->updateChannelToDatabase(Lcom/android/phone/CellBroadcastChannel;Lcom/android/phone/CellBroadcastChannel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    invoke-direct {p0, v9}, Lcom/android/phone/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    goto :goto_0

    .end local v1           #tempOldChannelId:I
    .end local v9           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_0
    move v0, v12

    .line 930
    goto :goto_1

    .line 937
    .restart local v1       #tempOldChannelId:I
    .restart local v9       #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    goto :goto_0

    .line 940
    .end local v1           #tempOldChannelId:I
    .end local v8           #newChannel:Lcom/android/phone/CellBroadcastChannel;
    .end local v9           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :pswitch_1
    invoke-direct {p0, v11}, Lcom/android/phone/CellBroadcastSettings;->showEditChannelDialog(Lcom/android/phone/CellBroadcastChannel;)V

    goto :goto_0

    .line 943
    :pswitch_2
    invoke-virtual {v11, v12}, Lcom/android/phone/CellBroadcastChannel;->setChannelState(Z)V

    .line 944
    invoke-direct {p0, v11}, Lcom/android/phone/CellBroadcastSettings;->makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v10

    .line 945
    .local v10, objectList1:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-direct {p0, v11}, Lcom/android/phone/CellBroadcastSettings;->deleteChannelFromDatabase(Lcom/android/phone/CellBroadcastChannel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    invoke-direct {p0, v10}, Lcom/android/phone/CellBroadcastSettings;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    goto :goto_0

    .line 948
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->showUpdateDBErrorInfoDialog()V

    goto :goto_0

    .line 926
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 126
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CellBroadcastSettings;->mSimId:I

    .line 127
    iget v1, p0, Lcom/android/phone/CellBroadcastSettings;->mSimId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    sget-object v1, Lcom/android/phone/CellBroadcastSettings;->CHANNEL_URI1:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mUri:Landroid/net/Uri;

    .line 132
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_0
    const-string v1, "CellBroadcastSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sim Id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/CellBroadcastSettings;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 136
    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/android/phone/CellBroadcastSettings;->addPreferencesFromResource(I)V

    .line 137
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->initPreference()V

    .line 138
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->initLanguage()V

    .line 139
    invoke-virtual {p0}, Lcom/android/phone/CellBroadcastSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CellBroadcastSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/16 v6, 0xa

    const/4 v8, 0x0

    .line 958
    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object v3, p3

    .line 959
    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 960
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v3, :cond_1

    .line 961
    const-string v5, "Settings/CellBroadcastSettings"

    const-string v6, "onCreateContextMenu,menuInfo is null"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    iget v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 965
    .local v4, position:I
    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 966
    add-int/lit8 v2, v4, -0x3

    .line 967
    .local v2, index:I
    iget-object v5, p0, Lcom/android/phone/CellBroadcastSettings;->mChannelArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CellBroadcastChannel;

    .line 968
    .local v0, channel:Lcom/android/phone/CellBroadcastChannel;
    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastChannel;->getChannelName()Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, channelName:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 970
    invoke-virtual {v0}, Lcom/android/phone/CellBroadcastChannel;->getChannelState()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 971
    const v5, 0x7f0b0091

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 974
    :goto_1
    const/4 v5, 0x1

    const/16 v6, 0xb

    const v7, 0x7f0b0297

    invoke-interface {p1, v5, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 975
    const/4 v5, 0x2

    const/16 v6, 0xc

    const v7, 0x7f0b0298

    invoke-interface {p1, v5, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 973
    :cond_2
    const v5, 0x7f0b0090

    invoke-interface {p1, v8, v6, v8, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 284
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mLanguagePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->showLanguageSelectDialog()V

    .line 291
    :goto_0
    return v0

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mAddChannelPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/android/phone/CellBroadcastSettings;->showAddChannelDialog()V

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 144
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/CellBroadcastSettings;->getCellBroadcastConfig(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/phone/CellBroadcastSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 149
    .local v0, dialogWindow:Landroid/view/Window;
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 153
    .end local v0           #dialogWindow:Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1020
    iput p1, p0, Lcom/android/phone/CellBroadcastSettings;->mSimId:I

    .line 1021
    return-void
.end method
