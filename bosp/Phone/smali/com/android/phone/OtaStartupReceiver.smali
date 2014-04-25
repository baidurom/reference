.class public Lcom/android/phone/OtaStartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtaStartupReceiver.java"


# static fields
.field public static final CONFIG_READ_DEFAULT:Ljava/lang/String; = "config_read_def_value"

.field private static final DBG:Z = true

.field private static final MIN_READY:I = 0xa

.field public static final PREFS_NAME:Ljava/lang/String; = "com.android.phone_preferences"

.field private static final SERVICE_STATE_CHANGED:I = 0xb

.field private static final TAG:Ljava/lang/String; = "OtaStartupReceiver"

.field private static final VM_NUMBER_SIM1:Ljava/lang/String; = "1#VMNumber"

.field private static final VM_NUMBER_SIM2:Ljava/lang/String; = "2#VMNumber"

.field private static final VM_SIM1_PREFS_NAME:Ljava/lang/String; = "vm_numbers"

.field private static final VM_SIM2_PREFS_NAME:Ljava/lang/String; = "vm_numbers_sim2"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOtaspMode:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    .line 69
    new-instance v0, Lcom/android/phone/OtaStartupReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$1;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 78
    new-instance v0, Lcom/android/phone/OtaStartupReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/phone/OtaStartupReceiver$2;-><init>(Lcom/android/phone/OtaStartupReceiver;)V

    iput-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/OtaStartupReceiver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/OtaStartupReceiver;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/OtaStartupReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/OtaStartupReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private shouldPostpone(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x1

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 217
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v2, v5

    .line 219
    .local v2, provisioned:Z
    :goto_0
    const-string v7, "ro.setupwizard.mode"

    const-string v8, "REQUIRED"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, mode:Ljava/lang/String;
    const-string v7, "REQUIRED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "OPTIONAL"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v4, v5

    .line 222
    .local v4, runningSetupWizard:Z
    :goto_1
    const-string v7, "OtaStartupReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolvInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", provisioned = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", runningSetupWizard = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    return v5

    .end local v1           #mode:Ljava/lang/String;
    .end local v2           #provisioned:Z
    .end local v4           #runningSetupWizard:Z
    :cond_1
    move v2, v6

    .line 217
    goto :goto_0

    .restart local v1       #mode:Ljava/lang/String;
    .restart local v2       #provisioned:Z
    :cond_2
    move v4, v6

    .line 220
    goto :goto_1

    .restart local v4       #runningSetupWizard:Z
    :cond_3
    move v5, v6

    .line 225
    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 114
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/OtaStartupReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 119
    const-string v14, "com.android.phone_preferences"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 120
    .local v10, settings:Landroid/content/SharedPreferences;
    const-string v14, "config_read_def_value"

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 121
    .local v6, isReadDefValue:Z
    if-eqz v6, :cond_4

    .line 122
    const/4 v6, 0x0

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0005

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, number1:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0006

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, number2:Ljava/lang/String;
    const-string v14, "0"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "0"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 126
    :cond_0
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/OtaStartupReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 129
    .local v5, geminiphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const-string v14, "0"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 131
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailAlphaTagGemini(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v14, v7, v15, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setVoiceMailNumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 133
    :cond_1
    const-string v14, "0"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 135
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getVoiceMailAlphaTagGemini(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v14, v8, v15, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setVoiceMailNumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 142
    .end local v5           #geminiphone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_2
    :goto_0
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 143
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v14, "config_read_def_value"

    const/4 v15, 0x0

    invoke-interface {v4, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    const-string v14, "0"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 147
    const-string v14, "vm_numbers"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 148
    .local v12, vm_sim1:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "1#VMNumber"

    invoke-interface {v14, v15, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    .end local v12           #vm_sim1:Landroid/content/SharedPreferences;
    :cond_3
    const-string v14, "0"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 152
    const-string v14, "vm_numbers_sim2"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 153
    .local v13, vm_sim2:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v15, "2#VMNumber"

    invoke-interface {v14, v15, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #isReadDefValue:Z
    .end local v7           #number1:Ljava/lang/String;
    .end local v8           #number2:Ljava/lang/String;
    .end local v10           #settings:Landroid/content/SharedPreferences;
    .end local v13           #vm_sim2:Landroid/content/SharedPreferences;
    :cond_4
    const-string v14, "OtaStartupReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive: intent action="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  mOtaspMode="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/OtaStartupReceiver;->mOtaspMode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 165
    const-string v14, "OtaStartupReceiver"

    const-string v15, "OTASP not supported, nothing to do."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_1
    return-void

    .line 138
    .restart local v6       #isReadDefValue:Z
    .restart local v7       #number1:Ljava/lang/String;
    .restart local v8       #number2:Ljava/lang/String;
    .restart local v10       #settings:Landroid/content/SharedPreferences;
    :cond_5
    const-string v14, "0"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/OtaStartupReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/OtaStartupReceiver;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v14, v15, v7, v0}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 169
    .end local v6           #isReadDefValue:Z
    .end local v7           #number1:Ljava/lang/String;
    .end local v8           #number2:Ljava/lang/String;
    .end local v10           #settings:Landroid/content/SharedPreferences;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    if-nez v14, :cond_7

    .line 170
    const-string v14, "OtaStartupReceiver"

    const-string v15, "Register our PhoneStateListener"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v14, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 173
    .local v11, telephonyManager:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v15, 0x200

    invoke-virtual {v11, v14, v15}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 174
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/OtaStartupReceiver;->mPhoneStateListenerRegistered:Z

    .line 179
    .end local v11           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/OtaStartupReceiver;->shouldPostpone(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 180
    const-string v14, "OtaStartupReceiver"

    const-string v15, "Postponing OTASP until wizard runs"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :cond_7
    const-string v14, "OtaStartupReceiver"

    const-string v15, "PhoneStateListener already registered"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 185
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 186
    .local v3, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 187
    .local v9, phone:Lcom/android/internal/telephony/Phone;
    iget-object v14, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v14

    if-eqz v14, :cond_9

    .line 188
    const-string v14, "OtaStartupReceiver"

    const-string v15, "Network is not ready. Registering to receive notification."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    const/16 v15, 0xb

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v9, v14, v15, v0}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    .line 196
    :cond_9
    const-string v14, "OtaStartupReceiver"

    const-string v15, "call OtaUtils.maybeDoOtaCall"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/OtaStartupReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/OtaStartupReceiver;->mHandler:Landroid/os/Handler;

    const/16 v16, 0xa

    invoke-static/range {v14 .. v16}, Lcom/android/phone/OtaUtils;->maybeDoOtaCall(Landroid/content/Context;Landroid/os/Handler;I)Z

    goto/16 :goto_1
.end method
