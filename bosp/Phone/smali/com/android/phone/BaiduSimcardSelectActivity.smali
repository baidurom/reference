.class public Lcom/android/phone/BaiduSimcardSelectActivity;
.super Landroid/app/Activity;
.source "BaiduSimcardSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static BLUE:I = 0x0

.field private static GRAY:I = 0x0

.field private static GREEN:I = 0x0

.field static final IS_VT_CALL:Ljava/lang/String; = "is_vt_call"


# instance fields
.field protected btn1:Landroid/widget/Button;

.field protected btn2:Landroid/widget/Button;

.field final cellConn:Lcom/mediatek/CellConnService/CellConnMgr;

.field private ipPrefix1:Ljava/lang/String;

.field private ipPrefix2:Ljava/lang/String;

.field private isIpCallChooseCard:Z

.field private mIntent:Landroid/content/Intent;

.field private mNumber:Ljava/lang/String;

.field private mPin1Process:Ljava/lang/Runnable;

.field private mPin2Process:Ljava/lang/Runnable;

.field private mSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const v0, -0x68349f

    sput v0, Lcom/android/phone/BaiduSimcardSelectActivity;->GREEN:I

    .line 50
    const v0, -0xb17839

    sput v0, Lcom/android/phone/BaiduSimcardSelectActivity;->BLUE:I

    .line 51
    const v0, -0x555556

    sput v0, Lcom/android/phone/BaiduSimcardSelectActivity;->GRAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    .line 43
    iput-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn2:Landroid/widget/Button;

    .line 44
    iput-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mNumber:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->isIpCallChooseCard:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mSlot:I

    .line 47
    iput-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->ipPrefix1:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->ipPrefix2:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v0}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->cellConn:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 53
    iput-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mIntent:Landroid/content/Intent;

    .line 66
    new-instance v0, Lcom/android/phone/BaiduSimcardSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BaiduSimcardSelectActivity$1;-><init>(Lcom/android/phone/BaiduSimcardSelectActivity;)V

    iput-object v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mPin1Process:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Lcom/android/phone/BaiduSimcardSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BaiduSimcardSelectActivity$2;-><init>(Lcom/android/phone/BaiduSimcardSelectActivity;)V

    iput-object v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mPin2Process:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/BaiduSimcardSelectActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->isIpCallChooseCard:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/BaiduSimcardSelectActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->ipPrefix1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/BaiduSimcardSelectActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BaiduSimcardSelectActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/BaiduSimcardSelectActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mSlot:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/BaiduSimcardSelectActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->ipPrefix2:Ljava/lang/String;

    return-object v0
.end method

.method public static generateDialIntent(ZILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "sip"
    .parameter "slot"
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 308
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "out_going_call_to_phone_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    if-eqz p0, :cond_0

    .line 310
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "launch_from_dialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    const-string v1, "is_sip_call"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    :goto_0
    return-object v0

    .line 314
    :cond_0
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v1, "simId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v1, "launch_from_dialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    const-string v1, "is_sip_call"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getSimState()I
    .locals 20

    .prologue
    .line 251
    const/4 v4, 0x0

    .line 253
    .local v4, ret:I
    :try_start_0
    const-string v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 261
    .local v3, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v6, 0x1

    .line 262
    .local v6, sim1Idle:Z
    const/4 v12, 0x1

    .line 264
    .local v12, sim2Idle:Z
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v9

    .line 266
    .local v9, sim1RadioOn:Z
    const/16 v17, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/4 v10, 0x1

    .line 269
    .local v10, sim1Ready:Z
    :goto_0
    const/16 v17, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/4 v7, 0x1

    .line 272
    .local v7, sim1Locked:Z
    :goto_1
    const/16 v17, 0x3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/4 v8, 0x1

    .line 276
    .local v8, sim1PUKLocked:Z
    :goto_2
    if-eqz v9, :cond_a

    if-eqz v10, :cond_a

    if-eqz v6, :cond_9

    if-eqz v12, :cond_9

    :cond_0
    const/4 v5, 0x1

    .line 279
    .local v5, sim1Enable:Z
    :goto_3
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z

    move-result v15

    .line 281
    .local v15, sim2RadioOn:Z
    const/16 v17, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/16 v16, 0x1

    .line 284
    .local v16, sim2Ready:Z
    :goto_4
    const/16 v17, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/4 v13, 0x1

    .line 287
    .local v13, sim2Locked:Z
    :goto_5
    const/16 v17, 0x3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    .line 291
    .local v14, sim2PUKLocked:Z
    :goto_6
    if-eqz v15, :cond_f

    if-eqz v16, :cond_f

    if-eqz v6, :cond_e

    if-eqz v12, :cond_e

    :cond_1
    const/4 v11, 0x1

    .line 294
    .local v11, sim2Enable:Z
    :goto_7
    if-nez v5, :cond_2

    if-nez v7, :cond_2

    if-eqz v8, :cond_3

    .line 295
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 297
    :cond_3
    if-nez v11, :cond_4

    if-nez v13, :cond_4

    if-eqz v14, :cond_5

    .line 298
    :cond_4
    add-int/lit8 v4, v4, 0x2

    .line 302
    .end local v3           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v5           #sim1Enable:Z
    .end local v6           #sim1Idle:Z
    .end local v7           #sim1Locked:Z
    .end local v8           #sim1PUKLocked:Z
    .end local v9           #sim1RadioOn:Z
    .end local v10           #sim1Ready:Z
    .end local v11           #sim2Enable:Z
    .end local v12           #sim2Idle:Z
    .end local v13           #sim2Locked:Z
    .end local v14           #sim2PUKLocked:Z
    .end local v15           #sim2RadioOn:Z
    .end local v16           #sim2Ready:Z
    :cond_5
    :goto_8
    return v4

    .line 266
    .restart local v3       #iTel:Lcom/android/internal/telephony/ITelephony;
    .restart local v6       #sim1Idle:Z
    .restart local v9       #sim1RadioOn:Z
    .restart local v12       #sim2Idle:Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 269
    .restart local v10       #sim1Ready:Z
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 272
    .restart local v7       #sim1Locked:Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 276
    .restart local v8       #sim1PUKLocked:Z
    :cond_9
    if-nez v12, :cond_0

    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 281
    .restart local v5       #sim1Enable:Z
    .restart local v15       #sim2RadioOn:Z
    :cond_b
    const/16 v16, 0x0

    goto :goto_4

    .line 284
    .restart local v16       #sim2Ready:Z
    :cond_c
    const/4 v13, 0x0

    goto :goto_5

    .line 287
    .restart local v13       #sim2Locked:Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_6

    .line 291
    .restart local v14       #sim2PUKLocked:Z
    :cond_e
    if-nez v6, :cond_1

    :cond_f
    const/4 v11, 0x0

    goto :goto_7

    .line 299
    .end local v3           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v5           #sim1Enable:Z
    .end local v6           #sim1Idle:Z
    .end local v7           #sim1Locked:Z
    .end local v8           #sim1PUKLocked:Z
    .end local v9           #sim1RadioOn:Z
    .end local v10           #sim1Ready:Z
    .end local v12           #sim2Idle:Z
    .end local v13           #sim2Locked:Z
    .end local v14           #sim2PUKLocked:Z
    .end local v15           #sim2RadioOn:Z
    .end local v16           #sim2Ready:Z
    :catch_0
    move-exception v2

    .line 300
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8
.end method

.method public static isSim1Absent(Landroid/content/Context;)Z
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 214
    .local v0, simInfo1:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSim1Locked()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 225
    const/4 v1, 0x1

    .line 226
    .local v1, isLock:Z
    const/4 v2, -0x1

    .line 227
    .local v2, state:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v2

    .line 229
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 231
    .local v0, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v4, 0x2

    if-eq v4, v2, :cond_0

    const/4 v4, 0x3

    if-ne v4, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 234
    :goto_0
    return v1

    :cond_1
    move v1, v3

    .line 231
    goto :goto_0
.end method

.method public static isSim1RadioOn(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 191
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 194
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 196
    .end local v1           #iTel:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isSim2Absent(Landroid/content/Context;)Z
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    .line 218
    invoke-static {p0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 220
    .local v0, simInfo1:Landroid/provider/Telephony$SIMInfo;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSim2Locked()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 238
    const/4 v1, 0x1

    .line 239
    .local v1, isLock:Z
    const/4 v2, -0x1

    .line 240
    .local v2, state:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v2

    .line 242
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 244
    .local v0, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v4, 0x2

    if-eq v4, v2, :cond_0

    const/4 v4, 0x3

    if-ne v4, v2, :cond_1

    :cond_0
    move v1, v3

    .line 247
    :goto_0
    return v1

    .line 244
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSim2RadioOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "ctx"

    .prologue
    .line 202
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 205
    .local v1, iTel:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 207
    .end local v1           #iTel:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private queryIPPrefix(I)Ljava/lang/String;
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-static {p0, p1}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v1

    .line 58
    .local v1, simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-eqz v1, :cond_0

    .line 59
    iget v0, v1, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpEnable:I

    .line 60
    .local v0, ipEnable:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v2, v1, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpPrefix:Ljava/lang/String;

    .line 62
    .end local v0           #ipEnable:I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v6, 0x12e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 340
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/phone/BaiduSimcardSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mIntent:Landroid/content/Intent;

    .line 341
    iget-object v2, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "com.android.phone.extra.ip"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->isIpCallChooseCard:Z

    .line 343
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/phone/CallController;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 361
    :goto_1
    :pswitch_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BaiduSimcardSelectActivity"

    const-string v3, "getInitialNumber error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    iput v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mSlot:I

    .line 351
    iget-object v2, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->cellConn:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v3, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mPin1Process:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v6, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    goto :goto_1

    .line 354
    :pswitch_2
    iput v5, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mSlot:I

    .line 355
    iget-object v2, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->cellConn:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v3, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->mPin2Process:Ljava/lang/Runnable;

    invoke-virtual {v2, v5, v6, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    goto :goto_1

    .line 358
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/phone/BaiduSimcardSelectActivity;->finish()V

    goto :goto_1

    .line 348
    :pswitch_data_0
    .packed-switch 0x7f070080
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    if-eqz p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 108
    :cond_0
    const v4, 0x7f040010

    invoke-virtual {p0, v4}, Lcom/android/phone/BaiduSimcardSelectActivity;->setContentView(I)V

    .line 109
    const v4, 0x7f070084

    invoke-virtual {p0, v4}, Lcom/android/phone/BaiduSimcardSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    .line 110
    const v4, 0x7f070085

    invoke-virtual {p0, v4}, Lcom/android/phone/BaiduSimcardSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn2:Landroid/widget/Button;

    .line 111
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->cellConn:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Lcom/android/phone/BaiduSimcardSelectActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 115
    invoke-static {p0, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v1

    .line 116
    .local v1, simInfo1:Landroid/provider/Telephony$SIMInfo;
    invoke-direct {p0, v6}, Lcom/android/phone/BaiduSimcardSelectActivity;->queryIPPrefix(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->ipPrefix1:Ljava/lang/String;

    .line 117
    if-eqz v1, :cond_1

    .line 119
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    iget-object v5, v1, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_1
    invoke-static {p0, v7}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v2

    .line 123
    .local v2, simInfo2:Landroid/provider/Telephony$SIMInfo;
    invoke-direct {p0, v7}, Lcom/android/phone/BaiduSimcardSelectActivity;->queryIPPrefix(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->ipPrefix2:Ljava/lang/String;

    .line 124
    if-eqz v2, :cond_2

    .line 126
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn2:Landroid/widget/Button;

    iget-object v5, v2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :cond_2
    invoke-static {}, Lcom/android/phone/BaiduSimcardSelectActivity;->getSimState()I

    move-result v3

    .line 130
    .local v3, st:I
    packed-switch v3, :pswitch_data_0

    .line 143
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/android/phone/BaiduSimcardSelectActivity;->isSim1Locked()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    if-eqz v4, :cond_5

    .line 144
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    const v5, 0x7f02003f

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 148
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/phone/BaiduSimcardSelectActivity;->isSim2Locked()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn2:Landroid/widget/Button;

    if-eqz v4, :cond_6

    .line 149
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn2:Landroid/widget/Button;

    const v5, 0x7f02003e

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 153
    :cond_4
    :goto_3
    const v4, 0x7f070080

    invoke-virtual {p0, v4}, Lcom/android/phone/BaiduSimcardSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, main:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 137
    .end local v0           #main:Landroid/view/View;
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 145
    :cond_5
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    if-eqz v4, :cond_3

    .line 146
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    const v5, 0x7f02003c

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_2

    .line 150
    :cond_6
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn1:Landroid/widget/Button;

    if-eqz v4, :cond_4

    .line 151
    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->btn2:Landroid/widget/Button;

    const v5, 0x7f02003d

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/phone/BaiduSimcardSelectActivity;->cellConn:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 162
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 372
    invoke-virtual {p0}, Lcom/android/phone/BaiduSimcardSelectActivity;->finish()V

    .line 373
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/phone/BaiduSimcardSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 185
    .local v0, it:Landroid/content/Intent;
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 366
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 367
    return-void
.end method
