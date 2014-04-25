.class public Lcom/android/phone/SetupUnlockPIN2Lock;
.super Landroid/app/Activity;
.source "SetupUnlockPIN2Lock.java"


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field public static LOCKCATEGORY:Ljava/lang/String; = null

.field public static final LOGTAG:Ljava/lang/String; = "SetupUnlockPIN2Lock "

.field public static final START_TYPE:Ljava/lang/String; = "start_type"

.field public static final START_TYPE_REQ:Ljava/lang/String; = "request"

.field public static final START_TYPE_RSP:Ljava/lang/String; = "response"

.field static final VERIFY_RESULT:Ljava/lang/String; = "verfiy_result"

.field static final VERIFY_TYPE:Ljava/lang/String; = "verfiy_type"

.field static final VERIFY_TYPE_PIN:I = 0x1f5

.field static final VERIFY_TYPE_PIN2:I = 0x1f8

.field static final VERIFY_TYPE_PUK:I = 0x1f6

.field static final VERIFY_TYPE_PUK2:I = 0x1f9

.field static final VERIFY_TYPE_SIMMELOCK:I = 0x1f7

.field public static iSIMMEUnlockNo:I

.field private static lockCategory:I

.field private static result:Z


# instance fields
.field public PwdLength:I

.field public mPwdLeftChances:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const-string v0, "LockCategory"

    sput-object v0, Lcom/android/phone/SetupUnlockPIN2Lock;->LOCKCATEGORY:Ljava/lang/String;

    .line 62
    const/4 v0, -0x1

    sput v0, Lcom/android/phone/SetupUnlockPIN2Lock;->lockCategory:I

    .line 64
    sput v1, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    .line 67
    sput-boolean v1, Lcom/android/phone/SetupUnlockPIN2Lock;->result:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    iput v0, p0, Lcom/android/phone/SetupUnlockPIN2Lock;->PwdLength:I

    .line 71
    iput v0, p0, Lcom/android/phone/SetupUnlockPIN2Lock;->mPwdLeftChances:I

    .line 269
    new-instance v0, Lcom/android/phone/SetupUnlockPIN2Lock$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SetupUnlockPIN2Lock$1;-><init>(Lcom/android/phone/SetupUnlockPIN2Lock;)V

    iput-object v0, p0, Lcom/android/phone/SetupUnlockPIN2Lock;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getRetryPin2Count(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 263
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 264
    const-string v0, "gsm.sim.retry.pin2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.pin2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getRetryPuk2Count(I)I
    .locals 2
    .parameter "simId"

    .prologue
    const/4 v1, -0x1

    .line 257
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 258
    const-string v0, "gsm.sim.retry.puk2.2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 80
    const-string v1, "SetupUnlockPIN2Lock "

    const-string v2, "[onCreate]+"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "SetupUnlockPIN2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate][iSIMMEUnlockNo]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "PhoneConstants.GEMINI_SIM_ID_KEY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    .line 91
    :cond_0
    const-string v1, "SetupUnlockPIN2Lock "

    const-string v2, "[unlock][onCreate]-"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 115
    const-string v4, "SetupUnlockPIN2Lock "

    const-string v5, "[onResume]+"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    const-string v4, "SetupUnlockPIN2Lock "

    const-string v5, "[onResume][GEMINI Card]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget v4, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    if-nez v4, :cond_1

    .line 153
    const-string v4, "SetupUnlockPIN2Lock "

    const-string v5, "[onResume][GEMINI Card][SIM1]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, v7}, Lcom/android/phone/SetupUnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v2

    .line 156
    .local v2, retryCount:I
    const-string v4, "SetupUnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResume][GEMINI Card][SIM1][PIN Retries Left] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-lez v2, :cond_0

    .line 159
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "PINLEFTRETRIES"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->finish()V

    .line 211
    :goto_0
    return-void

    .line 171
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .restart local v0       #bundle:Landroid/os/Bundle;
    invoke-direct {p0, v7}, Lcom/android/phone/SetupUnlockPIN2Lock;->getRetryPuk2Count(I)I

    move-result v3

    .line 174
    .local v3, retryPUKCount:I
    const-string v4, "PUKPHASE"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v4, "PUKLEFTRETRIES"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->finish()V

    goto :goto_0

    .line 185
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #retryCount:I
    .end local v3           #retryPUKCount:I
    :cond_1
    const-string v4, "SetupUnlockPIN2Lock "

    const-string v5, "[onResume][GEMINI Card][SIM2]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, v8}, Lcom/android/phone/SetupUnlockPIN2Lock;->getRetryPin2Count(I)I

    move-result v2

    .line 187
    .restart local v2       #retryCount:I
    const-string v4, "SetupUnlockPIN2Lock "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResume][GEMINI Card][SIM2][PIN Retries Left] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-lez v2, :cond_2

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/UnlockPIN2Lock;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "PINLEFTRETRIES"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 194
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->finish()V

    goto :goto_0

    .line 202
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/UnlockPUK2Lock;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    .restart local v0       #bundle:Landroid/os/Bundle;
    invoke-direct {p0, v8}, Lcom/android/phone/SetupUnlockPIN2Lock;->getRetryPuk2Count(I)I

    move-result v3

    .line 205
    .restart local v3       #retryPUKCount:I
    const-string v4, "PUKPHASE"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v4, "PUKLEFTRETRIES"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v4, "PhoneConstants.GEMINI_SIM_ID_KEY"

    sget v5, Lcom/android/phone/SetupUnlockPIN2Lock;->iSIMMEUnlockNo:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/phone/SetupUnlockPIN2Lock;->startActivity(Landroid/content/Intent;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/phone/SetupUnlockPIN2Lock;->finish()V

    goto/16 :goto_0
.end method

.method public sendVerifyResult(IZ)V
    .locals 4
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 238
    const-string v1, "SetupUnlockPIN2Lock "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVerifyResult verifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 244
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 245
    const-string v1, "SetupUnlockPIN2Lock "

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 248
    :cond_0
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/phone/SetupUnlockPIN2Lock;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
