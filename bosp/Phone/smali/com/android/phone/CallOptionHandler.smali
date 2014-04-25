.class public Lcom/android/phone/CallOptionHandler;
.super Ljava/lang/Object;
.source "CallOptionHandler.java"

# interfaces
.implements Lcom/android/phone/CallOptionHelper$Callback;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallOptionHandler$OnHandleCallOption;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallOptionHandler"


# instance fields
.field protected mApp:Lcom/android/phone/PhoneApp;

.field protected mAssociateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;

.field protected mAssociateSimMissingClicked:Z

.field protected mCallOptionHelper:Lcom/android/phone/CallOptionHelper;

.field protected mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field protected mClicked:Z

.field protected mContext:Landroid/content/Context;

.field protected mDialogs:[Landroid/app/Dialog;

.field protected mIntent:Landroid/content/Intent;

.field protected mNumber:Ljava/lang/String;

.field protected mOnHandleCallOption:Lcom/android/phone/CallOptionHandler$OnHandleCallOption;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field protected mReason:I

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .line 46
    iput v1, p0, Lcom/android/phone/CallOptionHandler;->mReason:I

    .line 53
    iput-boolean v1, p0, Lcom/android/phone/CallOptionHandler;->mClicked:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingClicked:Z

    .line 618
    new-instance v0, Lcom/android/phone/CallOptionHandler$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CallOptionHandler$5;-><init>(Lcom/android/phone/CallOptionHandler;)V

    iput-object v0, p0, Lcom/android/phone/CallOptionHandler;->mRunnable:Ljava/lang/Runnable;

    .line 58
    iput-object p1, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/CallOptionHelper;->getInstance(Landroid/content/Context;)Lcom/android/phone/CallOptionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallOptionHandler;->mCallOptionHelper:Lcom/android/phone/CallOptionHelper;

    .line 61
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mCallOptionHelper:Lcom/android/phone/CallOptionHelper;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallOptionHelper;->setCallback(Lcom/android/phone/CallOptionHelper$Callback;)V

    .line 63
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallOptionHandler;->mApp:Lcom/android/phone/PhoneApp;

    .line 64
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iput-object v0, p0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallOptionHandler;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallOptionHandler;->afterCheckSIMStatus(II)Z

    move-result v0

    return v0
.end method

.method private afterCheckSIMStatus(II)Z
    .locals 12
    .parameter "result"
    .parameter "slot"

    .prologue
    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "afterCheckSIMStatus, result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " slot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 563
    const/4 v8, 0x4

    if-eq p1, v8, :cond_0

    .line 564
    const/4 v8, 0x1

    .line 615
    :goto_0
    return v8

    .line 568
    :cond_0
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v3, 0x1

    .line 569
    .local v3, noSim:Z
    :goto_1
    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v9, "com.android.phone.extra.video"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v9, "com.android.phone.extra.ip"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v3, :cond_3

    .line 570
    invoke-direct {p0, p2}, Lcom/android/phone/CallOptionHandler;->queryIPPrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, ipPrefix:Ljava/lang/String;
    const-string v8, "asdfas"

    const-string v9, "actual call ip"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 573
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.android.phone.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v1, intent:Landroid/content/Intent;
    const-string v8, "com.android.phone"

    const-string v9, "com.android.phone.CallSettings"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v5

    .line 576
    .local v5, simInfo:Landroid/provider/Telephony$SIMInfo;
    const-string v8, "simId"

    iget-wide v9, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 578
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    const v9, 0x7f0b03da

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 581
    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 582
    const/4 v8, 0x1

    goto :goto_0

    .line 568
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #ipPrefix:Ljava/lang/String;
    .end local v3           #noSim:Z
    .end local v5           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 584
    .restart local v2       #ipPrefix:Ljava/lang/String;
    .restart local v3       #noSim:Z
    :cond_2
    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 585
    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v9, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/CallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    .end local v2           #ipPrefix:Ljava/lang/String;
    :cond_3
    const-string v8, "asdfas"

    const-string v9, "actual call ip 2"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v8, "voicemail:"

    iget-object v9, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 591
    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 593
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6, p2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 594
    new-instance v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;

    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mCallOptionHelper:Lcom/android/phone/CallOptionHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v8}, Lcom/android/phone/CallOptionHelper$CallbackArgs;-><init>(Lcom/android/phone/CallOptionHelper;)V

    .line 595
    .local v0, callbackArgs:Lcom/android/phone/CallOptionHelper$CallbackArgs;
    const/4 v8, 0x7

    iput v8, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 596
    const/4 v8, 0x2

    iput v8, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->type:I

    .line 597
    int-to-long v8, p2

    iput-wide v8, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/phone/CallOptionHandler;->onMakeCall(Lcom/android/phone/CallOptionHelper$CallbackArgs;)V

    .line 599
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 602
    .end local v0           #callbackArgs:Lcom/android/phone/CallOptionHelper$CallbackArgs;
    :cond_4
    invoke-virtual {v6, p2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumberGemini(I)Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, voicemailNumber:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v9, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v7           #voicemailNumber:Ljava/lang/String;
    :cond_5
    const-string v8, "asdfas"

    const-string v9, "actual call ip 3"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v9, "com.android.phone.extra.slot"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 608
    .local v4, oldSolt:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "afterCheckSIMStatus, oldSolt = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 609
    const/4 v8, -0x1

    if-eq v4, v8, :cond_6

    if-eq p2, v4, :cond_6

    .line 610
    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v9, "com.android.phone.extra.slot"

    invoke-virtual {v8, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    :cond_6
    const-string v8, "asdfas"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "actual call ip 4 oldslot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " slot="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    iget-object v9, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v8, v9}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 615
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private isRoamingNeeded(I)Z
    .locals 3
    .parameter "slot"

    .prologue
    const/4 v2, 0x0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRoamingNeeded slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 642
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRoamingNeeded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.roaming.indicator.needed.2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 644
    const-string v0, "gsm.roaming.indicator.needed.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 647
    :goto_0
    return v0

    .line 646
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRoamingNeeded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.roaming.indicator.needed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 647
    const-string v0, "gsm.roaming.indicator.needed"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private needToCheckSIMStatus(I)Z
    .locals 5
    .parameter "slot"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 685
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 686
    .local v0, phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    if-ltz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 687
    :cond_0
    const-string v2, "the sim not insert, bail out!"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 695
    :cond_1
    :goto_0
    return v1

    .line 691
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnGemini(I)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 692
    goto :goto_0

    .line 695
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    invoke-direct {p0, p1}, Lcom/android/phone/CallOptionHandler;->roamingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private newSipCallOptionHandlerIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter "original"

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.SIP_SELECT_PHONE"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 517
    .local v0, selectPhoneIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 518
    const-string v1, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 520
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    return-object v0
.end method

.method private queryIPPrefix(I)Ljava/lang/String;
    .locals 7
    .parameter "slot"

    .prologue
    const/4 v3, 0x0

    .line 536
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 537
    iget-object v4, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v2

    .line 539
    .local v2, simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-eqz v2, :cond_0

    .line 540
    iget v1, v2, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpEnable:I

    .line 541
    .local v1, ipEnable:I
    const-string v4, "asdfs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v3, v2, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mIpPrefix:Ljava/lang/String;

    .line 548
    .end local v1           #ipEnable:I
    .end local v2           #simInfo:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 547
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "ipprefix"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private roamingRequest(I)Z
    .locals 6
    .parameter "slot"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingRequest slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 653
    const/4 v0, 0x0

    .line 655
    .local v0, bRoaming:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 660
    if-eqz v0, :cond_0

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roamingRequest slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is roaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 667
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_reminder_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/phone/CallOptionHandler;->isRoamingNeeded(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    const-string v2, "roamingRequest reminder once and need to indicate"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 681
    :goto_0
    return v1

    .line 663
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roamingRequest slot = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not roaming"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    move v1, v2

    .line 664
    goto :goto_0

    .line 674
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_reminder_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 676
    const-string v2, "roamingRequest reminder always"

    invoke-virtual {p0, v2}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_2
    const-string v1, "roamingRequest result = false"

    invoke-virtual {p0, v1}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    move v1, v2

    .line 681
    goto :goto_0
.end method

.method private showProgressIndication()V
    .locals 3

    .prologue
    .line 707
    const-string v0, "showProgressIndication(searching network message )"

    invoke-virtual {p0, v0}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->dismissProgressIndication()V

    .line 714
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 716
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 719
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 720
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 721
    return-void
.end method


# virtual methods
.method public dismissProgressIndication()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallOptionHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 731
    :cond_0
    return-void
.end method

.method protected handleCallOptionComplete()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mOnHandleCallOption:Lcom/android/phone/CallOptionHandler$OnHandleCallOption;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mOnHandleCallOption:Lcom/android/phone/CallOptionHandler$OnHandleCallOption;

    iget v1, p0, Lcom/android/phone/CallOptionHandler;->mReason:I

    invoke-interface {v0, v1}, Lcom/android/phone/CallOptionHandler$OnHandleCallOption;->onHandleCallOption(I)V

    .line 96
    :cond_0
    return-void
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 182
    const-string v0, "CallOptionHandler"

    invoke-static {v0, p1}, Lcom/android/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v8, -0x2

    const/4 v9, 0x1

    .line 99
    const-string v6, "+CallOptionHandler.onClick"

    invoke-static {v6}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick, dialog = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " which = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 101
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aget-object v6, v6, v12

    if-ne p1, v6, :cond_6

    move-object v0, p1

    .line 102
    check-cast v0, Landroid/app/AlertDialog;

    .line 103
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 104
    .local v3, listAdapter:Landroid/widget/ListAdapter;
    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 106
    .local v5, slot:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick, slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 107
    if-ne v5, v8, :cond_3

    .line 108
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v7, "com.android.phone.extra.ip"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    const v7, 0x7f0b03db

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 111
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    .line 134
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 135
    iput-boolean v9, p0, Lcom/android/phone/CallOptionHandler;->mClicked:Z

    .line 178
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v3           #listAdapter:Landroid/widget/ListAdapter;
    .end local v5           #slot:I
    :cond_1
    :goto_1
    const-string v6, "-CallOptionHandler.onClick"

    invoke-static {v6}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 179
    return-void

    .line 113
    .restart local v0       #alert:Landroid/app/AlertDialog;
    .restart local v3       #listAdapter:Landroid/widget/ListAdapter;
    .restart local v5       #slot:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->startSipCallOptionHandler()V

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v7, "com.android.phone.extra.slot"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    invoke-direct {p0, v5}, Lcom/android/phone/CallOptionHandler;->needToCheckSIMStatus(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 120
    if-ltz v5, :cond_4

    .line 121
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/16 v7, 0x132

    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v5, v7, v8}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    move-result v4

    .line 122
    .local v4, result:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 123
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    if-ne v4, v9, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/phone/CallOptionHandler;->showProgressIndication()V

    goto :goto_0

    .line 127
    .end local v4           #result:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_0

    .line 129
    :cond_5
    invoke-direct {p0, v11, v5}, Lcom/android/phone/CallOptionHandler;->afterCheckSIMStatus(II)Z

    move-result v1

    .line 130
    .local v1, bailout:Z
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_0

    .line 136
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #bailout:Z
    .end local v3           #listAdapter:Landroid/widget/ListAdapter;
    .end local v5           #slot:I
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    if-ne p1, v6, :cond_1

    move-object v0, p1

    .line 137
    check-cast v0, Landroid/app/AlertDialog;

    .line 138
    .restart local v0       #alert:Landroid/app/AlertDialog;
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;

    if-eqz v6, :cond_8

    .line 139
    const/4 v6, -0x1

    if-ne p2, v6, :cond_c

    .line 140
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;

    iget-object v6, v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->viaSimInfo:Landroid/provider/Telephony$SIMInfo;

    if-eqz v6, :cond_b

    .line 142
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;

    iget-object v6, v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->viaSimInfo:Landroid/provider/Telephony$SIMInfo;

    iget v5, v6, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    .line 143
    .restart local v5       #slot:I
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    const-string v7, "com.android.phone.extra.slot"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-direct {p0, v5}, Lcom/android/phone/CallOptionHandler;->needToCheckSIMStatus(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 147
    if-ltz v5, :cond_9

    .line 148
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/16 v7, 0x132

    iget-object v8, p0, Lcom/android/phone/CallOptionHandler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v5, v7, v8}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    move-result v4

    .line 149
    .restart local v4       #result:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    if-ne v4, v9, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/android/phone/CallOptionHandler;->showProgressIndication()V

    .line 173
    .end local v4           #result:I
    .end local v5           #slot:I
    :cond_7
    :goto_2
    iput-boolean v9, p0, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingClicked:Z

    .line 174
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;

    .line 176
    :cond_8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_1

    .line 154
    .restart local v5       #slot:I
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_2

    .line 156
    :cond_a
    invoke-direct {p0, v11, v5}, Lcom/android/phone/CallOptionHandler;->afterCheckSIMStatus(II)Z

    move-result v1

    .line 157
    .restart local v1       #bailout:Z
    if-eqz v1, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_2

    .line 162
    .end local v1           #bailout:Z
    .end local v5           #slot:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->startSipCallOptionHandler()V

    .line 163
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_2

    .line 165
    :cond_c
    if-ne p2, v8, :cond_7

    .line 168
    new-instance v2, Lcom/android/phone/CallOptionHelper$CallbackArgs;

    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mCallOptionHelper:Lcom/android/phone/CallOptionHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v6}, Lcom/android/phone/CallOptionHelper$CallbackArgs;-><init>(Lcom/android/phone/CallOptionHelper;)V

    .line 169
    .local v2, callbackArgs:Lcom/android/phone/CallOptionHelper$CallbackArgs;
    iget-object v6, p0, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;

    iget-wide v6, v6, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->suggested:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v2, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    .line 170
    iput v12, v2, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    .line 171
    invoke-virtual {p0, v2}, Lcom/android/phone/CallOptionHandler;->onMakeCall(Lcom/android/phone/CallOptionHelper$CallbackArgs;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 69
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDismiss, mClicked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallOptionHandler;->mClicked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_1

    .line 84
    iget-boolean v0, p0, Lcom/android/phone/CallOptionHandler;->mClicked:Z

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_2

    .line 87
    iget-boolean v0, p0, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingClicked:Z

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_0
.end method

.method public onMakeCall(Lcom/android/phone/CallOptionHelper$CallbackArgs;)V
    .locals 35
    .parameter "args"

    .prologue
    .line 217
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "onMakeCall, reason = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " args = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/CallOptionHandler;->mReason:I

    .line 221
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 512
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 223
    :pswitch_1
    const/16 v28, -0x1

    .line 224
    .local v28, slot:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->type:I

    move/from16 v31, v0

    if-nez v31, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone.extra.ip"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 227
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v31

    const v32, 0x7f0b03db

    const/16 v33, 0x0

    invoke-static/range {v31 .. v33}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    .line 236
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_0

    .line 231
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/phone/CallOptionHandler;->newSipCallOptionHandlerIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v26

    .line 232
    .local v26, selectPhoneIntent:Landroid/content/Intent;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "startSipCallOptionHandler(): calling startActivity: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 238
    .end local v26           #selectPhoneIntent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->type:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 240
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v28, v0

    .line 262
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone.extra.slot"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    .line 265
    .local v23, phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v27

    .line 266
    .local v27, simInserted:Z
    if-nez v27, :cond_4

    .line 267
    if-nez v28, :cond_a

    .line 268
    const/16 v31, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v27

    .line 269
    if-eqz v27, :cond_9

    const/16 v28, 0x1

    .line 276
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallOptionHandler;->needToCheckSIMStatus(I)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 277
    if-ltz v28, :cond_c

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    move-object/from16 v31, v0

    const/16 v32, 0x132

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mRunnable:Ljava/lang/Runnable;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    move-result v25

    .line 279
    .local v25, result:I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "result = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    move-object/from16 v31, v0

    const/16 v31, 0x1

    move/from16 v0, v25

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 281
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->showProgressIndication()V

    goto/16 :goto_0

    .line 242
    .end local v23           #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    .end local v25           #result:I
    .end local v27           #simInserted:Z
    :cond_5
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v31

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v28

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone.extra.ip"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 245
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    .line 246
    .restart local v23       #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnGemini(I)Z

    move-result v18

    .line 247
    .local v18, isOn:Z
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallOptionHandler;->queryIPPrefix(I)Ljava/lang/String;

    move-result-object v17

    .line 248
    .local v17, ipprefix:Ljava/lang/String;
    const-string v31, "ipcall"

    const-string v32, "is ip call"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v18, :cond_6

    if-nez v17, :cond_7

    .line 250
    :cond_6
    if-nez v28, :cond_8

    const/16 v22, 0x1

    .line 251
    .local v22, otherSlot:I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/phone/CallOptionHandler;->queryIPPrefix(I)Ljava/lang/String;

    move-result-object v16

    .line 252
    .local v16, ipPrefix:Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 253
    move/from16 v28, v22

    .line 258
    .end local v16           #ipPrefix:Ljava/lang/String;
    .end local v17           #ipprefix:Ljava/lang/String;
    .end local v18           #isOn:Z
    .end local v22           #otherSlot:I
    .end local v23           #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    :cond_7
    const/16 v31, -0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 259
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 250
    .restart local v17       #ipprefix:Ljava/lang/String;
    .restart local v18       #isOn:Z
    .restart local v23       #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    :cond_8
    const/16 v22, 0x0

    goto :goto_4

    .line 269
    .end local v17           #ipprefix:Ljava/lang/String;
    .end local v18           #isOn:Z
    .restart local v27       #simInserted:Z
    :cond_9
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 270
    :cond_a
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 271
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v27

    .line 272
    if-eqz v27, :cond_b

    const/16 v28, 0x0

    :goto_5
    goto/16 :goto_3

    :cond_b
    const/16 v28, 0x1

    goto :goto_5

    .line 284
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto/16 :goto_0

    .line 286
    :cond_d
    const/16 v31, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallOptionHandler;->afterCheckSIMStatus(II)Z

    move-result v10

    .line 287
    .local v10, bialout:Z
    if-eqz v10, :cond_0

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto/16 :goto_0

    .line 294
    .end local v10           #bialout:Z
    .end local v23           #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    .end local v27           #simInserted:Z
    .end local v28           #slot:I
    :pswitch_2
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v11, builder:Landroid/app/AlertDialog$Builder;
    const/4 v9, 0x1

    .line 298
    .local v9, bIsInsertSim:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v31, v0

    if-eqz v31, :cond_e

    .line 299
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v31

    if-nez v31, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/android/phone/PhoneInterfaceManager;->isSimInsert(I)Z

    move-result v31

    if-nez v31, :cond_e

    .line 301
    const/4 v9, 0x0

    .line 304
    :cond_e
    if-nez v9, :cond_f

    .line 305
    const v31, 0x7f0b0410

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0b001f

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x104000a

    const/16 v31, 0x0

    check-cast v31, Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    :goto_6
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 341
    .local v12, dialog:Landroid/app/Dialog;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    move/from16 v32, v0

    aput-object v12, v31, v32

    .line 343
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 309
    .end local v12           #dialog:Landroid/app/Dialog;
    :cond_f
    const v31, 0x7f0b0410

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0b0372

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x1040009

    const/16 v31, 0x0

    check-cast v31, Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x1040013

    new-instance v33, Lcom/android/phone/CallOptionHandler$1;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallOptionHandler$1;-><init>(Lcom/android/phone/CallOptionHandler;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    .line 348
    .end local v9           #bIsInsertSim:Z
    .end local v11           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    .restart local v11       #builder:Landroid/app/AlertDialog$Builder;
    const v31, 0x7f0b0410

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0b03d5

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x1040009

    const/16 v31, 0x0

    check-cast v31, Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x1040013

    new-instance v33, Lcom/android/phone/CallOptionHandler$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/CallOptionHandler$3;-><init>(Lcom/android/phone/CallOptionHandler;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 359
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 360
    .restart local v12       #dialog:Landroid/app/Dialog;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    move/from16 v32, v0

    aput-object v12, v31, v32

    .line 362
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 378
    .end local v11           #builder:Landroid/app/AlertDialog$Builder;
    .end local v12           #dialog:Landroid/app/Dialog;
    :pswitch_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone.extra.ip"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    if-eqz v31, :cond_19

    .line 379
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/phone/CallOptionHandler;->queryIPPrefix(I)Ljava/lang/String;

    move-result-object v14

    .line 380
    .local v14, ip1prefix:Ljava/lang/String;
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/phone/CallOptionHandler;->queryIPPrefix(I)Ljava/lang/String;

    move-result-object v15

    .line 382
    .local v15, ip2prefix:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    .line 383
    .restart local v23       #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnGemini(I)Z

    move-result v19

    .line 384
    .local v19, isOn1:Z
    const/16 v31, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnGemini(I)Z

    move-result v20

    .line 385
    .local v20, isOn2:Z
    const/16 v30, -0x1

    .line 387
    .local v30, whichCase:I
    if-eqz v14, :cond_11

    if-eqz v15, :cond_11

    .line 388
    if-eqz v19, :cond_10

    if-nez v20, :cond_10

    const/16 v30, 0x0

    .line 389
    :cond_10
    if-eqz v20, :cond_11

    if-nez v19, :cond_11

    const/16 v30, 0x1

    .line 392
    :cond_11
    if-nez v14, :cond_13

    if-nez v15, :cond_13

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone.extra.ip"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    .end local v14           #ip1prefix:Ljava/lang/String;
    .end local v15           #ip2prefix:Ljava/lang/String;
    .end local v30           #whichCase:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-class v33, Lcom/android/phone/BaiduSimcardSelectActivity;

    invoke-virtual/range {v31 .. v33}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 446
    .end local v19           #isOn1:Z
    .end local v20           #isOn2:Z
    .end local v23           #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    :catch_0
    move-exception v13

    .line 447
    .local v13, e:Ljava/lang/Exception;
    const-string v31, "Unable to add window -- Is your activity running?"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto/16 :goto_0

    .line 395
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v14       #ip1prefix:Ljava/lang/String;
    .restart local v15       #ip2prefix:Ljava/lang/String;
    .restart local v19       #isOn1:Z
    .restart local v20       #isOn2:Z
    .restart local v23       #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    .restart local v30       #whichCase:I
    :cond_13
    if-eqz v14, :cond_14

    if-eqz v15, :cond_14

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_12

    .line 396
    :cond_14
    if-eqz v14, :cond_15

    const/16 v28, 0x0

    .line 397
    .restart local v28       #slot:I
    :goto_7
    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    .line 398
    :goto_8
    :try_start_1
    const-string v31, "asdasdf"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "slot "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/phone/CallOptionHandler;->needToCheckSIMStatus(I)Z

    move-result v31

    if-eqz v31, :cond_18

    .line 400
    const-string v31, "adfas"

    const-string v32, "in nned to check status"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    if-ltz v28, :cond_17

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    move-object/from16 v31, v0

    const/16 v32, 0x132

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mRunnable:Ljava/lang/Runnable;

    move-object/from16 v33, v0

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    move-result v25

    .line 403
    .restart local v25       #result:I
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "result = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    move-object/from16 v31, v0

    const/16 v31, 0x1

    move/from16 v0, v25

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 405
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->showProgressIndication()V

    goto/16 :goto_0

    .line 396
    .end local v25           #result:I
    .end local v28           #slot:I
    :cond_15
    const/16 v28, 0x1

    goto/16 :goto_7

    .restart local v28       #slot:I
    :cond_16
    move/from16 v28, v30

    .line 397
    goto/16 :goto_8

    .line 408
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto/16 :goto_0

    .line 410
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone.extra.slot"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const/16 v31, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallOptionHandler;->afterCheckSIMStatus(II)Z

    move-result v10

    .line 412
    .restart local v10       #bialout:Z
    if-eqz v10, :cond_0

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto/16 :goto_0

    .line 420
    .end local v10           #bialout:Z
    .end local v14           #ip1prefix:Ljava/lang/String;
    .end local v15           #ip2prefix:Ljava/lang/String;
    .end local v19           #isOn1:Z
    .end local v20           #isOn2:Z
    .end local v23           #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    .end local v28           #slot:I
    .end local v30           #whichCase:I
    :cond_19
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v23, v0

    .line 421
    .restart local v23       #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnGemini(I)Z

    move-result v19

    .line 422
    .restart local v19       #isOn1:Z
    const/16 v31, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnGemini(I)Z

    move-result v20

    .line 423
    .restart local v20       #isOn2:Z
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1b

    .line 424
    if-eqz v19, :cond_1a

    const/16 v28, 0x0

    .line 425
    .restart local v28       #slot:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone.extra.slot"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const/16 v31, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallOptionHandler;->afterCheckSIMStatus(II)Z

    move-result v10

    .line 427
    .restart local v10       #bialout:Z
    if-eqz v10, :cond_0

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto/16 :goto_0

    .line 424
    .end local v10           #bialout:Z
    .end local v28           #slot:I
    :cond_1a
    const/16 v28, 0x1

    goto :goto_9

    .line 431
    :cond_1b
    if-nez v19, :cond_12

    if-nez v20, :cond_12

    .line 432
    const/16 v28, 0x0

    .line 433
    .restart local v28       #slot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone.extra.slot"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const/16 v31, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallOptionHandler;->afterCheckSIMStatus(II)Z

    move-result v10

    .line 436
    .restart local v10       #bialout:Z
    if-eqz v10, :cond_0

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 454
    .end local v10           #bialout:Z
    .end local v19           #isOn1:Z
    .end local v20           #isOn2:Z
    .end local v23           #phoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    .end local v28           #slot:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 455
    .local v24, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->args:Ljava/lang/Object;

    check-cast v7, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;

    .line 457
    .local v7, associateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    .restart local v11       #builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    .line 460
    .local v4, associateSim:J
    invoke-static {}, Lcom/android/phone/SIMInfoWrapper;->getDefault()Lcom/android/phone/SIMInfoWrapper;

    move-result-object v31

    long-to-int v0, v4

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/phone/SIMInfoWrapper;->getSimInfoById(I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v6

    .line 461
    .local v6, associateSimInfo:Landroid/provider/Telephony$SIMInfo;
    const-string v8, ""

    .line 462
    .local v8, associateSimName:Ljava/lang/String;
    if-eqz v6, :cond_1c

    .line 463
    iget-object v8, v6, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 466
    :cond_1c
    iget-object v0, v7, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->viaSimInfo:Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1e

    .line 467
    iget-object v0, v7, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->viaSimInfo:Landroid/provider/Telephony$SIMInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 472
    .local v29, viaSimName:Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0b0373

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v8, v33, v34

    const/16 v34, 0x1

    aput-object v29, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 474
    .local v21, message:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->number:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x1040013

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    iget v0, v7, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->type:I

    move/from16 v31, v0

    if-nez v31, :cond_1f

    .line 478
    const/high16 v31, 0x104

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    :cond_1d
    :goto_b
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 483
    .restart local v12       #dialog:Landroid/app/Dialog;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    move/from16 v32, v0

    aput-object v12, v31, v32

    .line 485
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    .line 486
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;

    .line 487
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/CallOptionHandler;->mAssociateSimMissingClicked:Z

    goto/16 :goto_0

    .line 469
    .end local v12           #dialog:Landroid/app/Dialog;
    .end local v21           #message:Ljava/lang/String;
    .end local v29           #viaSimName:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0b01b8

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #viaSimName:Ljava/lang/String;
    goto/16 :goto_a

    .line 479
    .restart local v21       #message:Ljava/lang/String;
    :cond_1f
    iget v0, v7, Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;->type:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    .line 480
    const v31, 0x7f0b0374

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_b

    .line 492
    .end local v4           #associateSim:J
    .end local v6           #associateSimInfo:Landroid/provider/Telephony$SIMInfo;
    .end local v7           #associateSimMissingArgs:Lcom/android/phone/CallOptionHelper$AssociateSimMissingArgs;
    .end local v8           #associateSimName:Ljava/lang/String;
    .end local v11           #builder:Landroid/app/AlertDialog$Builder;
    .end local v21           #message:Ljava/lang/String;
    .end local v24           #resources:Landroid/content/res/Resources;
    .end local v29           #viaSimName:Ljava/lang/String;
    :pswitch_6
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .restart local v11       #builder:Landroid/app/AlertDialog$Builder;
    const v31, 0x7f0b0045

    move/from16 v0, v31

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0b0046

    invoke-virtual/range {v31 .. v32}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x1040009

    const/16 v31, 0x0

    check-cast v31, Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v31

    const v32, 0x7f0b0047

    new-instance v33, Lcom/android/phone/CallOptionHandler$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallOptionHandler$4;-><init>(Lcom/android/phone/CallOptionHandler;Lcom/android/phone/CallOptionHelper$CallbackArgs;)V

    invoke-virtual/range {v31 .. v33}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 505
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 506
    .restart local v12       #dialog:Landroid/app/Dialog;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/phone/CallOptionHelper$CallbackArgs;->reason:I

    move/from16 v32, v0

    aput-object v12, v31, v32

    .line 508
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .local v0, arr$:[Landroid/app/Dialog;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 73
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 72
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_1
    return-void
.end method

.method public setOnHandleCallOption(Lcom/android/phone/CallOptionHandler$OnHandleCallOption;)V
    .locals 0
    .parameter "onHandleCallOption"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/phone/CallOptionHandler;->mOnHandleCallOption:Lcom/android/phone/CallOptionHandler$OnHandleCallOption;

    .line 79
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 186
    const-string v3, "+CallOptionHandler.StartActivity"

    invoke-static {v3}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity, intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    .line 190
    :try_start_0
    invoke-static {p1}, Lcom/android/phone/CallController;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallOptionHandler;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    const-string v3, "com.android.phone.extra.slot"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 197
    .local v2, slot:I
    if-eq v2, v5, :cond_2

    .line 198
    invoke-direct {p0, v2}, Lcom/android/phone/CallOptionHandler;->needToCheckSIMStatus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/16 v4, 0x132

    iget-object v5, p0, Lcom/android/phone/CallOptionHandler;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v2, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    move-result v1

    .line 200
    .local v1, result:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/phone/CallOptionHandler;->showProgressIndication()V

    .line 213
    .end local v1           #result:I
    :cond_0
    :goto_1
    return-void

    .line 191
    .end local v2           #slot:I
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #slot:I
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/phone/CallOptionHandler;->handleCallOptionComplete()V

    goto :goto_1

    .line 211
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mCallOptionHelper:Lcom/android/phone/CallOptionHelper;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallOptionHelper;->makeCall(Landroid/content/Intent;)V

    .line 212
    const-string v3, "-CallOptionHandler.StartActivity"

    invoke-static {v3}, Lcom/android/phone/Profiler;->trace(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected startSipCallOptionHandler()V
    .locals 5

    .prologue
    .line 633
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/CallOptionHandler;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {v3, v4}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, number:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 635
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 636
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/phone/CallOptionHandler;->newSipCallOptionHandlerIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 637
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 638
    return-void
.end method
