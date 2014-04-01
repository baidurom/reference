.class public Lcom/android/internal/telephony/gemini/GeminiPhone;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiPhone$a;
    }
.end annotation


# static fields
.field public static EVENT_3G_SWITCH_DONE:Ljava/lang/String; = null

.field public static EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String; = null

.field protected static final EVENT_3G_SWITCH_SET_PREFERRED_NETWORK_MODE:I = 0x9

.field public static EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String; = null

.field protected static final EVENT_DUAL_SIM_SWITCH_DONE:I = 0x1

.field protected static final EVENT_FLIGHT_MODE_BOOT_UP_DONE:I = 0x5

.field protected static final EVENT_GET_ALL_ICCID_DONE:I = 0x6

.field protected static final EVENT_GET_ICCID1_DONE:I = 0x3

.field protected static final EVENT_GET_ICCID2_DONE:I = 0x4

.field public static EVENT_PRE_3G_SWITCH:Ljava/lang/String; = null

.field protected static final EVENT_RADIO_STATUS_INITIALIZATION:I = 0x7

.field protected static final EVENT_SIM_INSERTED_STATUS:I = 0x2

.field public static EXTRA_3G_SIM:Ljava/lang/String; = null

.field public static EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String; = null

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final PREFERENCE_3G_SWITCH:Ljava/lang/String; = "com.mtk.3G_SWITCH"

.field public static final PREF_3G_SIM_ID:Ljava/lang/String; = "3G_SIM_ID"

.field public static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field protected static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field protected static final STATUS_NO_SIM_INSERTED:I = 0x0

.field protected static final STATUS_SIM1_INSERTED:I = 0x1

.field protected static final STATUS_SIM2_INSERTED:I = 0x2

.field private static q:Landroid/content/SharedPreferences;


# instance fields
.field private a:Lcom/android/internal/telephony/Phone;

.field private b:Lcom/android/internal/telephony/Phone;

.field private c:Lcom/android/internal/telephony/Phone;

.field private d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/os/RegistrantList;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private r:I

.field private s:Landroid/os/PowerManager$WakeLock;

.field private t:Ljava/lang/Runnable;

.field private u:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const-string v0, "com.mtk.PRE_3G_SWITCH"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    .line 169
    const-string v0, "com.mtk.3G_SWITCH_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    .line 170
    const-string v0, "com.mtk.EVENT_3G_SWITCH_START_MD_RESET"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    .line 171
    const-string v0, "com.mtk.EVENT_3G_SWITCH_LOCK_CHANGED"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    .line 173
    const-string v0, "3G_SIM"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    .line 174
    const-string v0, "com.mtk.EXTRA_3G_SWITCH_LOCKED"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    .line 137
    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    .line 140
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Landroid/os/RegistrantList;

    .line 176
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:I

    .line 434
    new-instance v0, Lcom/android/internal/telephony/gemini/d;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/d;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:Ljava/lang/Runnable;

    .line 2920
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3068
    new-instance v0, Lcom/android/internal/telephony/gemini/b;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/b;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Ljava/lang/Runnable;

    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 190
    iput-object p2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    .line 192
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    .line 193
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 194
    const-string v0, "GeminiPhone initizlization to do flight mode boot up"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 195
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 198
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 199
    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVoiceCall,mSimInsertedStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-eq v0, v1, :cond_0

    .line 248
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_internet_call_value"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoiceCall,defaultSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 234
    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_call_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceCall,simid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 245
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVoiceCall,defaultSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_call_sim_setting"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_2
    const-string/jumbo v0, "setVoiceCall else"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEFAULT_SIM_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_DEFAULT_SIM_REMOVED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NEW_SIM_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "simCount"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "newSIMSlot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadCast intent ACTION_NEW_SIM_DETECTED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new SIMs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-static {p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const-wide/16 v10, 0x1

    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    iget v2, v4, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v2, :cond_0

    const/4 v5, 0x3

    if-le v2, v5, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    const-string v5, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorForNewSIM SimInfo sim1Color is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v2

    move v2, v0

    move v0, v12

    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-static {v5, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    iget v3, v5, Landroid/provider/Telephony$SIMInfo;->mColor:I

    if-ltz v3, :cond_2

    const/4 v6, 0x3

    if-le v3, v6, :cond_3

    :cond_2
    or-int/lit8 v2, v2, 0x2

    :cond_3
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setColorForNewSIM SimInfo sim2Color is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "simToSet is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    const-string v0, "PHONE"

    const-string v1, "No need to set color"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-wide v2, v4, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    sub-long/2addr v2, v10

    long-to-int v2, v2

    rem-int/lit8 v2, v2, 0x4

    const-string v3, "color"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v6, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v4, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "case3: setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-wide v1, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    sub-long/2addr v1, v10

    long-to-int v1, v1

    rem-int/lit8 v1, v1, 0x4

    const-string v2, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case3: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-wide v3, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    sub-long/2addr v3, v10

    long-to-int v1, v3

    rem-int/lit8 v1, v1, 0x4

    if-ne v1, v0, :cond_6

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    :goto_2
    const-string v1, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case2: setColorForNewSIM SimInfo set color SIM in slot1 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-wide v0, v4, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    sub-long/2addr v0, v10

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_5

    add-int/lit8 v0, v3, 0x1

    rem-int/lit8 v0, v0, 0x4

    :cond_5
    const-string v1, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v4, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "case1:setColorForNewSIM SimInfo set color SIM in slot0 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v2, v0

    move v0, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 816
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    cmp-long v0, p1, p5

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 120
    if-nez p1, :cond_1

    move v1, v0

    :goto_0
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameForAll nSIMCount  is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    iget-object v3, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultNameForAll set default name for slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    iget-wide v4, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    const/4 v0, 0x0

    invoke-static {v3, v4, v5, v0}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2872
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2966
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:Z

    .line 2967
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b()Z

    move-result v0

    .line 2970
    if-eqz v0, :cond_0

    .line 2971
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->set3GCapabilitySIM(I)Z

    move-result v0

    move v1, v0

    .line 2975
    :goto_0
    if-eqz v1, :cond_5

    .line 2976
    if-nez p1, :cond_2

    .line 2977
    const-string v0, "PHONE"

    const-string v2, "force3GSwitch:setPreferredNetworkType: Auto, GSM only"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2979
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 2982
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 2995
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2996
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(I)V

    .line 3001
    :goto_3
    return v1

    .line 2973
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->set3GCapabilitySIM(I)Z

    move-result v0

    move v1, v0

    goto :goto_0

    .line 2981
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_1

    .line 2983
    :cond_2
    if-ne p1, v3, :cond_4

    .line 2984
    const-string v0, "PHONE"

    const-string v2, "force3GSwitch:setPreferredNetworkType: GSM only, Auto"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 2986
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2987
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_2

    .line 2989
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_2

    .line 2991
    :cond_4
    const-string v0, "PHONE"

    const-string v2, "force3GSwitch:setPreferredNetworkType: GSM only, GSM only"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 2993
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_2

    .line 2998
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:Z

    .line 2999
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    goto :goto_3
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 3063
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    .line 3064
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3065
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3066
    return-void
.end method

.method private c(I)V
    .locals 4
    .parameter

    .prologue
    .line 3042
    const/4 v0, 0x0

    .line 3043
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v2, "com.mtk.3G_SWITCH"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3044
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3046
    if-nez p1, :cond_1

    .line 3047
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    .line 3051
    :cond_0
    :goto_0
    const-string v2, "3G_SIM_ID"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3053
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-eqz v2, :cond_2

    .line 3054
    const-string v2, "3G_SIM_ICCID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3055
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3056
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current 3G SIM ICCID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    :goto_1
    return-void

    .line 3048
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 3049
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    goto :goto_0

    .line 3058
    :cond_2
    const-string v0, "PHONE"

    const-string v1, "No SIM inserted, not to store ICCID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 120
    if-nez p1, :cond_2

    move v1, v0

    :goto_0
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultNameIfImsiReadyOrLocked nSIMCount  is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Telephony$SIMInfo;

    iget-object v4, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDefaultNameIfImsiReadyOrLocked the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "th mDisplayName is null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v4, :cond_3

    const-string v2, "gsm.sim.operator.default-name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_2
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDefaultNameIfImsiReadyOrLocked operatorName  is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    iget-wide v5, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v4, v5, v6, v2}, Landroid/provider/Telephony$SIMInfo;->setDefaultName(Landroid/content/Context;JLjava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x1

    iget v5, v0, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v4, v5, :cond_0

    const-string v2, "gsm.sim.operator.default-name.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static d()Z
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/jpe/NativeCheck;

    invoke-direct {v0}, Lcom/mediatek/jpe/NativeCheck;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/jpe/NativeCheck;->checkMtk()V

    .line 3144
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGPRSDefaultOn()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    return v0
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:I

    return v0
.end method

.method static synthetic l(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method final a(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 931
    if-nez p1, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 934
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 2112
    return-void
.end method

.method public acceptCallGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1166
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 2524
    return-void
.end method

.method public activateCellBroadcastSmsGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1584
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1585
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canConferenceGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1177
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public canTransferGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1193
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2666
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2670
    return-void
.end method

.method public changeBarringPasswordGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1723
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1724
    return-void
.end method

.method public changeBarringPasswordGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1727
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1728
    return-void
.end method

.method public cleanupApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1501
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2148
    return-void
.end method

.method public clearDisconnectedGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1202
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2127
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 2128
    return-void
.end method

.method public conferenceGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1181
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 1182
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1221
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialGemini(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1225
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDataConnectivityGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheck(Z)V

    .line 1915
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheckGemini(ZI)V

    .line 969
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 2383
    return-void
.end method

.method public disableLocationUpdatesGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1433
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1434
    return-void
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2864
    return-void
.end method

.method public doSimAuthenticationGemini(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1875
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 1876
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2867
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2868
    return-void
.end method

.method public doUSimAuthenticationGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1879
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1880
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 2435
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()Z

    .line 2436
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1490
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()Z

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDataConnectivityGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 2132
    return-void
.end method

.method public enableEnhancedVoicePrivacyGemini(ZLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1185
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 1186
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 2379
    return-void
.end method

.method public enableLocationUpdatesGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1429
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1430
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 2578
    return-void
.end method

.method public exitEmergencyCallbackModeGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1635
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1636
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 2144
    return-void
.end method

.method public explicitCallTransferGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1197
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1198
    return-void
.end method

.method public get3GCapabilitySIM()I
    .locals 1

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v0

    return v0
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2690
    return-void
.end method

.method public getAccumulatedCallMeterGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1747
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 1748
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2694
    return-void
.end method

.method public getAccumulatedCallMeterMaximumGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1751
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 1752
    return-void
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3195
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypeGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypesGemini(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 2287
    return-void
.end method

.method public getAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1344
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1345
    return-void
.end method

.method public getBackgroundCalGeminil(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1209
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 4

    .prologue
    .line 2155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getBackgroundCallGemini(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBtConnectedSimId()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    return v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingIndicatorGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1267
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2258
    return-void
.end method

.method public getCallForwardingOptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1314
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1316
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 2279
    return-void
.end method

.method public getCallWaitingGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1336
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1337
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1619
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1627
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1623
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMinGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1275
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersionGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1283
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 2528
    return-void
.end method

.method public getCellBroadcastSmsConfigGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1588
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1589
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationGemini(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter

    .prologue
    .line 943
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextGemini(I)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 963
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2686
    return-void
.end method

.method public getCurrentCallMeterGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1743
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 1744
    return-void
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionListGemini(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallList(Landroid/os/Message;)V

    .line 2367
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallListGemini(Landroid/os/Message;I)V

    .line 1417
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1540
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1544
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1536
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 2136
    return-void
.end method

.method public getEnhancedVoicePrivacyGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1189
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 1190
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1556
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2658
    return-void
.end method

.method public getFacilityLockGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1715
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1716
    return-void
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 4

    .prologue
    .line 2151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1205
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getGatewayGeminin(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
    .locals 1

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter

    .prologue
    .line 1161
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccFileHandlerGemini(I)Lcom/android/internal/telephony/IccFileHandler;
    .locals 1
    .parameter

    .prologue
    .line 1855
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1
    .parameter

    .prologue
    .line 1572
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccRecordsLoadedGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1552
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatusGemini(Lcom/android/internal/telephony/Phone$IccService;I)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1859
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 2507
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .parameter

    .prologue
    .line 1568
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 3163
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallFailCause()I
    .locals 1

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLastCallFailCauseGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1771
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1287
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter

    .prologue
    .line 3187
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 3171
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2499
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1560
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicatorGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1263
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2553
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V

    .line 2554
    return-void
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMuteGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1395
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2335
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 2336
    return-void
.end method

.method public getNeighboringCidsGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1383
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1384
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 2269
    return-void
.end method

.method public getOutgoingCallerIdDisplayGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1326
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1327
    return-void
.end method

.method public getPOLCapability(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPOLCapability(Landroid/os/Message;)V

    .line 3114
    return-void
.end method

.method public getPOLCapabilityGemini(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3126
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->getPOLCapability(Landroid/os/Message;)V

    .line 3127
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextList(Landroid/os/Message;)V

    .line 2363
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextListGemini(Landroid/os/Message;I)V

    .line 1412
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMmiCodesGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNameGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 981
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfoGemini(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1
    .parameter

    .prologue
    .line 1564
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 985
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2698
    return-void
.end method

.method public getPpuAndCurrencyGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1755
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 1756
    return-void
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 3118
    return-void
.end method

.method public getPreferedOperatorListGemini(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3130
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 3131
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2328
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2329
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 2332
    :goto_0
    return-void

    .line 2331
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPreferredNetworkTypeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1379
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1380
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 4

    .prologue
    .line 2159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getRingingCallGemini(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1217
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2480
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateGemini(I)Landroid/telephony/ServiceState;
    .locals 1
    .parameter

    .prologue
    .line 939
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter

    .prologue
    .line 1009
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicateState()I
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicateState()I

    move-result v0

    return v0
.end method

.method public getSimIndicateStateGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1871
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicateState()I

    move-result v0

    return v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatedRadioControlGemini(I)Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1
    .parameter

    .prologue
    .line 1475
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDefaultSim()I
    .locals 7

    .prologue
    const-wide/16 v5, -0x5

    .line 2837
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_sim_setting"

    invoke-static {v0, v1, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2841
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS default SIM index in db is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, v5

    if-nez v2, :cond_2

    .line 2845
    :cond_0
    const-string v0, "gsm.sim.inserted"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2846
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2847
    const/4 v0, 0x1

    .line 2855
    :goto_0
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final SMS default SIM is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2856
    return v0

    .line 2849
    :cond_1
    const/4 v0, 0x0

    .line 2851
    goto :goto_0

    .line 2852
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    goto :goto_0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 2550
    return-void
.end method

.method public getSmscAddressGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1611
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1612
    return-void
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 1923
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateGemini(I)Lcom/android/internal/telephony/Phone$State;
    .locals 1
    .parameter

    .prologue
    .line 977
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1548
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUnitTestModeGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1441
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 3150
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1304
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1295
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1300
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVtCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 2773
    return-void
.end method

.method public getVtCallForwardingOptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1825
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 1827
    return-void
.end method

.method public getVtCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 2784
    return-void
.end method

.method public getVtCallWaitingGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1837
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 1838
    return-void
.end method

.method public getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2792
    return-void
.end method

.method public getVtFacilityLockGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1845
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1846
    return-void
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleInCallMmiCommandsGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1247
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 401
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 256
    :pswitch_1
    const-string/jumbo v0, "receive EVENT_SIM_INSERTED_STATUS to do flight mode boot up"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 257
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()Z

    .line 262
    const-string/jumbo v0, "receive EVENT_FLIGHT_MODE_BOOT_UP_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 263
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    .line 264
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    .line 266
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getSimInsertedStatus()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    .line 271
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_1

    .line 274
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->getIccId(Landroid/os/Message;)V

    .line 275
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    .line 276
    const-string v0, "Load IccId for sim1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 280
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_2

    .line 283
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->getIccId(Landroid/os/Message;)V

    .line 284
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    .line 285
    const-string v0, "Load IccId for sim2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 289
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    if-nez v0, :cond_3

    iput-object v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    .line 290
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    if-nez v0, :cond_4

    iput-object v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    .line 292
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getSimInsertedStatus()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    goto :goto_1

    .line 297
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive EVENT_GET_ICCID_DONE ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 298
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 299
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_7

    .line 300
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    .line 301
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_6

    .line 302
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    .line 306
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setSIMIccId(ILjava/lang/String;)V

    .line 307
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIccId1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    if-nez v0, :cond_0

    .line 320
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 304
    :cond_6
    iput-object v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    goto :goto_2

    .line 309
    :cond_7
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    .line 310
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    .line 311
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    .line 315
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setSIMIccId(ILjava/lang/String;)V

    .line 316
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIccId2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 313
    :cond_8
    iput-object v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    goto :goto_4

    .line 324
    :pswitch_4
    const-string v0, "Receive EVENT_GET_ALL_ICCID_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 325
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Z

    .line 326
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Z

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 329
    const/4 v0, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v4, "com.mtk.3G_SWITCH"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "3G_SIM_ICCID"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v4

    const-string v5, "PHONE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check if need to do bootup 3G Switch ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    if-nez v5, :cond_a

    if-eqz v3, :cond_10

    if-eqz v4, :cond_9

    if-ne v4, v2, :cond_10

    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v4, :cond_c

    const-string v0, "PHONE"

    const-string v3, "Need to switch 3G capability to SIM1"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 330
    :cond_a
    :goto_5
    if-eqz v0, :cond_b

    if-ne v0, v2, :cond_14

    .line 331
    :cond_b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 332
    if-eqz v0, :cond_13

    .line 333
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v9, v8}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v9, v8}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 329
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eq v4, v2, :cond_d

    const-string v0, "PHONE"

    const-string v1, "Need to switch 3G capability to SIM2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_5

    :cond_d
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-eq v3, v2, :cond_e

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-ne v3, v9, :cond_a

    :cond_e
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-ne v3, v2, :cond_f

    if-eqz v4, :cond_f

    const-string v0, "PHONE"

    const-string v3, "Need to switch 3G capability to the only SIM1"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_5

    :cond_f
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-ne v1, v9, :cond_a

    if-eq v4, v2, :cond_a

    const-string v0, "PHONE"

    const-string v1, "Need to switch 3G capability to the only SIM2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_5

    :cond_10
    if-nez v3, :cond_a

    if-eqz v4, :cond_11

    if-ne v4, v2, :cond_a

    :cond_11
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-ne v3, v2, :cond_12

    if-eqz v4, :cond_12

    const-string v0, "PHONE"

    const-string v3, "Need to switch 3G capability to the only SIM1"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_5

    :cond_12
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-ne v1, v9, :cond_a

    if-eq v4, v2, :cond_a

    const-string v0, "PHONE"

    const-string v1, "Need to switch 3G capability to the only SIM2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_5

    .line 339
    :cond_13
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 342
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 343
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(I)V

    .line 344
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 349
    :cond_15
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 353
    :pswitch_5
    const-string v0, "Radio status initialized, start radio on"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 354
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIM_INSERTED_STATUS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "simCount"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadCast intent ACTION_SIM_INSERTED_STATUS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v0}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->finishRadioStatusInitialization(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:Z

    .line 357
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    goto/16 :goto_0

    .line 360
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:Z

    if-nez v0, :cond_16

    .line 361
    const-string v0, "Not boot up but want to do dual sim switch done, skip"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    if-eqz v0, :cond_18

    .line 365
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_17

    .line 366
    const-string v0, "Handle EVENT_DUAL_SIM_SWITCH_DONE and finish 3G Switch"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()V

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 369
    const-string v0, "gsm.siminfo.ready"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 370
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 372
    :cond_17
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 381
    :goto_6
    const-string v0, "To re-register SIM inserted status notification"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v9, v8}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v9, v8}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 374
    :cond_18
    const-string v0, "Handle EVENT_DUAL_SIM_SWITCH_DONE"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 377
    const-string v0, "gsm.siminfo.ready"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 378
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6

    .line 388
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 389
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_19

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 391
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    .line 392
    const-string v0, "PHONE"

    const-string v1, "3G switch done (set preferred network mode)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    :cond_19
    const-string v0, "PHONE"

    const-string v1, "Set preferred network mode failed, to use +ES3G and reset modem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 396
    const/16 v1, 0x63

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 397
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(I)Z

    goto/16 :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handlePinMmiGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1243
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hangupActiveCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 2682
    return-void
.end method

.method public hangupActiveCallGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1739
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1740
    return-void
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 2674
    return-void
.end method

.method public hangupAllEx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 2678
    return-void
.end method

.method public hangupAllExGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1735
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 1736
    return-void
.end method

.method public hangupAllGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1731
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 1732
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2352
    return-void
.end method

.method public invokeOemRilRequestRawGemini([BLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1399
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1400
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2356
    return-void
.end method

.method public invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1403
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1404
    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReadyGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1279
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumberGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1639
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 847
    if-nez p1, :cond_2

    .line 848
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    .line 850
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSimInsert()Z
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    return v0
.end method

.method public isSimInsert(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 840
    if-nez p1, :cond_2

    .line 841
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 841
    goto :goto_0

    .line 843
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 2545
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivity()V

    .line 2546
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivityGemini(I)V

    .line 1608
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 2399
    return-void
.end method

.method public queryAvailableBandModeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1449
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1450
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 2411
    return-void
.end method

.method public queryCdmaRoamingPreferenceGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1463
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1464
    return-void
.end method

.method public queryCellBroadcastSmsActivation(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 2542
    return-void
.end method

.method public queryCellBroadcastSmsActivationGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1602
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 1603
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2520
    return-void
.end method

.method public queryTTYModeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1580
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1581
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 918
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 919
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2634
    return-void
.end method

.method public registerFoT53ClirlInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1691
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1692
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2586
    return-void
.end method

.method public registerForCallWaitingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1643
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1644
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2072
    return-void
.end method

.method public registerForCdmaOtaStatusChangeGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1125
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1126
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2040
    return-void
.end method

.method public registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1093
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1094
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1991
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1992
    return-void
.end method

.method public registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1045
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1046
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2602
    return-void
.end method

.method public registerForDisplayInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1659
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1660
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2088
    return-void
.end method

.method public registerForEcmTimerResetGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1141
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1142
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2064
    return-void
.end method

.method public registerForInCallVoicePrivacyOffGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1117
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1118
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2056
    return-void
.end method

.method public registerForInCallVoicePrivacyOnGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1109
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1110
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1983
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1984
    return-void
.end method

.method public registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1037
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1038
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2625
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2626
    return-void
.end method

.method public registerForLineControlInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1683
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1684
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2008
    return-void
.end method

.method public registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1061
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1062
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2000
    return-void
.end method

.method public registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1053
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1054
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2718
    return-void
.end method

.method public registerForNeighboringInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1775
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1776
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2726
    return-void
.end method

.method public registerForNetworkInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1783
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1784
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1975
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1976
    return-void
.end method

.method public registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1029
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1030
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2610
    return-void
.end method

.method public registerForNumberInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1667
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1668
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1968
    return-void
.end method

.method public registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1021
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1022
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2618
    return-void
.end method

.method public registerForRedirectedNumberInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1675
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1676
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2801
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2096
    return-void
.end method

.method public registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1149
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1150
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2024
    return-void
.end method

.method public registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1077
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1078
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2594
    return-void
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1651
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1652
    return-void
.end method

.method public registerForSimModeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 828
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 829
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 830
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2737
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2738
    return-void
.end method

.method public registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1791
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1792
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2080
    return-void
.end method

.method public registerForSubscriptionInfoReadyGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1133
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1134
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2048
    return-void
.end method

.method public registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1101
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1102
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2032
    return-void
.end method

.method public registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1085
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1086
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2642
    return-void
.end method

.method public registerForT53AudioControlInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1699
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1700
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1959
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1960
    return-void
.end method

.method public registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1013
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1014
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2763
    return-void
.end method

.method public registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1816
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1817
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2755
    return-void
.end method

.method public registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1808
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1809
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2747
    return-void
.end method

.method public registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1800
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1801
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 2116
    return-void
.end method

.method public rejectCallGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1169
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1170
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 3160
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2706
    return-void
.end method

.method public resetAccumulatedCallMeterGemini(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1763
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 1764
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 2295
    return-void
.end method

.method public selectNetworkManuallyGemini(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1352
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1353
    return-void
.end method

.method public sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 2813
    return-void
.end method

.method public sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1863
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 1864
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2574
    return-void
.end method

.method public sendBurstDtmfGemini(Ljava/lang/String;IILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1631
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1632
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .parameter

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 2194
    return-void
.end method

.method public sendDtmfGemini(CI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1251
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1252
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 2020
    return-void
.end method

.method public sendUssdResponseGemini(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1073
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1074
    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2923
    .line 2924
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    if-eqz v0, :cond_0

    .line 2925
    const-string v0, "PHONE"

    const-string v1, "Switch 3G capability now, not to do it repeatedly"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :goto_0
    return v5

    .line 2927
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2930
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone set3GCapabilitySIM ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v1, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2932
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2933
    const-string v1, "3G_SIM_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2934
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2935
    iput-boolean v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    .line 2937
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 2938
    const-string v0, "PHONE"

    const-string v1, "Create 3G Switch wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2940
    const-string v1, "3G_SWITCH"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/os/PowerManager$WakeLock;

    .line 2941
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2943
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 2944
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2945
    const-string v0, "PHONE"

    const-string v3, "Acquire 3G Switch wakelock"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2948
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2951
    if-eqz p1, :cond_3

    if-eq v8, p1, :cond_3

    const/4 v0, -0x1

    if-ne v0, p1, :cond_4

    .line 2952
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2954
    :cond_4
    const-string v0, "PHONE"

    const-string v3, "GeminiPhone is sending ordered pre 3G switch event"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a(I)V

    .line 2956
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move v5, v8

    .line 2958
    goto/16 :goto_0

    .line 2948
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2959
    :cond_5
    const-string v0, "PHONE"

    const-string v1, "Radio unavailable and cannot do 3G Switch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2702
    return-void
.end method

.method public setAccumulatedCallMeterMaximumGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1759
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1760
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 2395
    return-void
.end method

.method public setBandModeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1445
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1446
    return-void
.end method

.method public setBtConnectedSimId(I)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    .line 221
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2265
    return-void
.end method

.method public setCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1321
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1323
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 2283
    return-void
.end method

.method public setCallWaitingGemini(ZLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1340
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1341
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2415
    return-void
.end method

.method public setCdmaRoamingPreferenceGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1467
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1468
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 2419
    return-void
.end method

.method public setCdmaSubscriptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1471
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1472
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 2532
    return-void
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 2537
    return-void
.end method

.method public setCellBroadcastSmsConfigGemini([ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1592
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 1593
    return-void
.end method

.method public setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1597
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 1598
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 0

    .prologue
    .line 3202
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabled(Z)V

    .line 2407
    return-void
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabledGemini(ZI)V

    .line 1460
    return-void
.end method

.method public setDefaultPhone(I)V
    .locals 1
    .parameter

    .prologue
    .line 208
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    .line 209
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public setDefaultPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    .line 204
    return-void
.end method

.method public setDualSimMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 855
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 856
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 2809
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2662
    return-void
.end method

.method public setFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1719
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 1720
    return-void
.end method

.method public setGprsConnType(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 905
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 906
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 910
    return-void
.end method

.method public setGprsTransferTypeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 913
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 914
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2234
    return-void
.end method

.method public setLine1NumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1291
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1292
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 2344
    return-void
.end method

.method public setMuteGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1391
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1392
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2291
    return-void
.end method

.method public setNetworkSelectionModeAutomaticGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1348
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1349
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2650
    return-void
.end method

.method public setOnEcbModeExitResponseGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1707
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1708
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2340
    return-void
.end method

.method public setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1387
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1388
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 2275
    return-void
.end method

.method public setOutgoingCallerIdDisplayGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1331
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1333
    return-void
.end method

.method public setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 3122
    return-void
.end method

.method public setPOLEntryGemini(ILcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 3135
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2710
    return-void
.end method

.method public setPpuAndCurrencyGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1767
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1768
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xff

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2298
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeminiPhone:setPreferredNetworkType  networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v1, "RATMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Landroid/content/SharedPreferences;

    .line 2301
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Landroid/content/SharedPreferences;

    const-string v1, "ModeType"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    .line 2302
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferredNetworkType() mEmNetworkMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2305
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    if-eq v0, v5, :cond_0

    .line 2306
    iget p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    .line 2307
    const-string v0, "PHONE"

    const-string v1, "Notice, the network mode is set from Engineering Mode, using EM settings "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2311
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    if-ne v0, v3, :cond_1

    .line 2312
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2313
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2325
    :goto_0
    return-void

    .line 2315
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 2318
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    if-ne v0, v3, :cond_3

    .line 2319
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2320
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 2322
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1356
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeminiPhone:networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v1, "RATMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Landroid/content/SharedPreferences;

    .line 1358
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Landroid/content/SharedPreferences;

    const-string v1, "ModeType"

    const/16 v2, 0xff

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    .line 1359
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEmNetworkMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1361
    if-ne p3, v3, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    if-ne v0, v3, :cond_0

    .line 1363
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1364
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1376
    :goto_0
    return-void

    .line 1366
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:I

    if-ne v0, v3, :cond_2

    .line 1370
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1371
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1373
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkTypeRIL(I)V
    .locals 0
    .parameter

    .prologue
    .line 3199
    return-void
.end method

.method public setRadioMode(I)V
    .locals 4
    .parameter

    .prologue
    .line 860
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->isRadioStatusInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setRadioSIMMode(Landroid/content/Context;I)V

    .line 863
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Z

    if-eqz v0, :cond_2

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G switch now, setRadioMode later ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GeminiPhone] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:I

    .line 872
    :goto_0
    if-nez p1, :cond_1

    .line 877
    const-string v0, "Set to flight mode and reset Gemini gprs related context"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V

    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetGprsRelatedContext(I)V

    .line 881
    :cond_1
    return-void

    .line 868
    :cond_2
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:I

    .line 869
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;II)V

    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter

    .prologue
    .line 884
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 885
    return-void

    .line 884
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRadioPower(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 888
    if-eqz p2, :cond_0

    .line 889
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 893
    :goto_0
    return-void

    .line 891
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method public setRadioPowerOn()V
    .locals 1

    .prologue
    .line 896
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b()Z

    move-result v0

    .line 897
    if-eqz v0, :cond_0

    .line 898
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 901
    :goto_0
    return-void

    .line 900
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2558
    return-void
.end method

.method public setSmscAddressGemini(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1615
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1616
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2516
    return-void
.end method

.method public setTTYModeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1577
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 2387
    return-void
.end method

.method public setUnitTestModeGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1437
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1438
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2252
    return-void
.end method

.method public setVoiceMailNumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1309
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1310
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3155
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 3156
    return-void
.end method

.method public setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2780
    return-void
.end method

.method public setVtCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1832
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1834
    return-void
.end method

.method public setVtCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 2788
    return-void
.end method

.method public setVtCallWaitingGemini(ZLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1841
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 1842
    return-void
.end method

.method public setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2796
    return-void
.end method

.method public setVtFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1849
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 1850
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .parameter

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 2198
    return-void
.end method

.method public startDtmfGemini(CI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1255
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1256
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 2202
    return-void
.end method

.method public stopDtmfGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1259
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1260
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 2120
    return-void
.end method

.method public switchHoldingAndActiveGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1173
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1174
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2590
    return-void
.end method

.method public unregisterForCallWaitingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1647
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1648
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 2076
    return-void
.end method

.method public unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1129
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1130
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 2044
    return-void
.end method

.method public unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1097
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1098
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 1995
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1996
    return-void
.end method

.method public unregisterForDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1049
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1050
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2605
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 2606
    return-void
.end method

.method public unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1663
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1664
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 2092
    return-void
.end method

.method public unregisterForEcmTimerResetGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1145
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1146
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 2068
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1121
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1122
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 2060
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1113
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1114
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 1987
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1988
    return-void
.end method

.method public unregisterForIncomingRingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1041
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1042
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 2630
    return-void
.end method

.method public unregisterForLineControlInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1687
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1688
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2012
    return-void
.end method

.method public unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1065
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1066
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2004
    return-void
.end method

.method public unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1057
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1058
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 2722
    return-void
.end method

.method public unregisterForNeighboringInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1779
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 1780
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2730
    return-void
.end method

.method public unregisterForNetworkInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1787
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 1788
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 1979
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1980
    return-void
.end method

.method public unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1033
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1034
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 2614
    return-void
.end method

.method public unregisterForNumberInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1671
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1672
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1972
    return-void
.end method

.method public unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1025
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1026
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 2622
    return-void
.end method

.method public unregisterForRedirectedNumberInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1679
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1680
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 2805
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 2100
    return-void
.end method

.method public unregisterForRingbackToneGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1153
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1154
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 2028
    return-void
.end method

.method public unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1081
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1082
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 2598
    return-void
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1655
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1656
    return-void
.end method

.method public unregisterForSimModeChange(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 834
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 2741
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 2742
    return-void
.end method

.method public unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1795
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 1796
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 2084
    return-void
.end method

.method public unregisterForSubscriptionInfoReadyGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1137
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1138
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 2052
    return-void
.end method

.method public unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1105
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1106
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 2036
    return-void
.end method

.method public unregisterForSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1089
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1090
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 2646
    return-void
.end method

.method public unregisterForT53AudioControlInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1703
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1704
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 2638
    return-void
.end method

.method public unregisterForT53ClirInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1695
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1696
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    .line 1963
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1964
    return-void
.end method

.method public unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1017
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1018
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 2767
    return-void
.end method

.method public unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1820
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 1821
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 2759
    return-void
.end method

.method public unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1812
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 1813
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 2751
    return-void
.end method

.method public unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1804
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 1805
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 2654
    return-void
.end method

.method public unsetOnEcbModeExitResponseGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1711
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1712
    return-void
.end method

.method public updateMobileData(I)V
    .locals 1
    .parameter

    .prologue
    .line 2820
    packed-switch p1, :pswitch_data_0

    .line 2828
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2829
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 2832
    :goto_0
    return-void

    .line 2822
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    goto :goto_0

    .line 2825
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    goto :goto_0

    .line 2820
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 2375
    return-void
.end method

.method public updateServiceLocationGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1425
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1426
    return-void
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 923
    return-void
.end method

.method public updateSimIndicateStateGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1867
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1868
    return-void
.end method

.method public voiceAccept()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->voiceAccept()V

    .line 2181
    return-void
.end method

.method public voiceAcceptGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1238
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->voiceAccept()V

    .line 1239
    return-void
.end method

.method public vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDialGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDialGemini(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1234
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
