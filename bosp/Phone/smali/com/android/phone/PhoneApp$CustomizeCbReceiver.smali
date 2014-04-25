.class Lcom/android/phone/PhoneApp$CustomizeCbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomizeCbReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2929
    iput-object p1, p0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2929
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2933
    const-string v23, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2934
    .local v12, iccState:Ljava/lang/String;
    const-string v23, "PhoneApp"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "iccState->"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    const-string v23, "LOADED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 2941
    const-string v23, "com.android.phone_preferences"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 2943
    .local v21, settings:Landroid/content/SharedPreferences;
    const-string v23, "config_reset_cbnv_value"

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2944
    .local v7, bResetCbNvValue:Z
    if-eqz v7, :cond_c

    .line 2945
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 2946
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090012

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 2948
    .local v5, bActiveCB_sim1:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f090013

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 2950
    .local v6, bActiveCB_sim2:Z
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 2951
    if-eqz v5, :cond_0

    .line 2952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3e9

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v14

    .line 2953
    .local v14, msg1:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->activateCellBroadcastSmsGemini(ILandroid/os/Message;I)V

    .line 2956
    .end local v14           #msg1:Landroid/os/Message;
    :cond_0
    if-eqz v6, :cond_1

    .line 2957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3ea

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v15

    .line 2958
    .local v15, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->activateCellBroadcastSmsGemini(ILandroid/os/Message;I)V

    .line 2966
    .end local v15           #msg2:Landroid/os/Message;
    :cond_1
    :goto_0
    const-string v24, "startup"

    if-nez v5, :cond_2

    if-eqz v6, :cond_7

    :cond_2
    const/16 v23, 0x1

    :goto_1
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2967
    const-string v23, "config_reset_cbnv_value"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2968
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2971
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    .line 2977
    .local v19, numberRes:[I
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    .line 2984
    .local v17, nameRes:[I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_b

    .line 2985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    aget v24, v19, v11

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .line 2986
    .local v18, number:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    aget v24, v17, v11

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2987
    .local v16, name:Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 2988
    if-nez v16, :cond_3

    .line 2989
    const-string v16, ""

    .line 2992
    :cond_3
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2993
    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    const-string v23, "number"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2996
    :try_start_0
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 2997
    if-eqz v11, :cond_4

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_8

    .line 2998
    :cond_4
    const-string v23, "enable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1900()Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3000
    new-instance v8, Lcom/android/phone/CellBroadcastChannel;

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v1, v5}, Lcom/android/phone/CellBroadcastChannel;-><init>(ILjava/lang/String;Z)V

    .line 3003
    .local v8, channel:Lcom/android/phone/CellBroadcastChannel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/phone/PhoneApp;->makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v0, v8}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v20

    .line 3004
    .local v20, objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v24, Landroid/os/Handler;

    invoke-direct/range {v24 .. v24}, Landroid/os/Handler;-><init>()V

    invoke-static/range {v24 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2984
    .end local v8           #channel:Lcom/android/phone/CellBroadcastChannel;
    .end local v20           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 2961
    .end local v11           #i:I
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #nameRes:[I
    .end local v18           #number:I
    .end local v19           #numberRes:[I
    :cond_6
    if-eqz v5, :cond_1

    .line 2962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3e8

    const/16 v25, 0x0

    const/16 v26, -0x1

    invoke-static/range {v23 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v13

    .line 2963
    .local v13, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v0, v1, v13}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2966
    .end local v13           #msg:Landroid/os/Message;
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 3007
    .restart local v11       #i:I
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #nameRes:[I
    .restart local v18       #number:I
    .restart local v19       #numberRes:[I
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_8
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v11, v0, :cond_9

    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v11, v0, :cond_5

    .line 3008
    :cond_9
    :try_start_1
    const-string v23, "enable"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$2100()Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3010
    new-instance v8, Lcom/android/phone/CellBroadcastChannel;

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v1, v6}, Lcom/android/phone/CellBroadcastChannel;-><init>(ILjava/lang/String;Z)V

    .line 3013
    .restart local v8       #channel:Lcom/android/phone/CellBroadcastChannel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/phone/PhoneApp;->makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v0, v8}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v20

    .line 3014
    .restart local v20       #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v24, Landroid/os/Handler;

    invoke-direct/range {v24 .. v24}, Landroid/os/Handler;-><init>()V

    invoke-static/range {v24 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 3027
    .end local v8           #channel:Lcom/android/phone/CellBroadcastChannel;
    .end local v20           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :catch_0
    move-exception v9

    .line 3028
    .local v9, e:Ljava/lang/Exception;
    const-string v23, "PhoneApp"

    const-string v24, "insert into channel error or set cell broadcast config error!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3019
    .end local v9           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_2
    const-string v23, "enable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    invoke-static {}, Lcom/android/phone/PhoneApp;->access$1900()Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3021
    new-instance v8, Lcom/android/phone/CellBroadcastChannel;

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v1, v5}, Lcom/android/phone/CellBroadcastChannel;-><init>(ILjava/lang/String;Z)V

    .line 3023
    .restart local v8       #channel:Lcom/android/phone/CellBroadcastChannel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/phone/PhoneApp;->makeChannelConfigArray(Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    invoke-static {v0, v8}, Lcom/android/phone/PhoneApp;->access$2000(Lcom/android/phone/PhoneApp;Lcom/android/phone/CellBroadcastChannel;)[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v20

    .line 3024
    .restart local v20       #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    new-instance v24, Landroid/os/Handler;

    invoke-direct/range {v24 .. v24}, Landroid/os/Handler;-><init>()V

    invoke-static/range {v24 .. v24}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 3033
    .end local v8           #channel:Lcom/android/phone/CellBroadcastChannel;
    .end local v16           #name:Ljava/lang/String;
    .end local v18           #number:I
    .end local v20           #objectList:[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$CustomizeCbReceiver;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v23, v0

    #getter for: Lcom/android/phone/PhoneApp;->mCustomizeCbReceiver:Landroid/content/BroadcastReceiver;
    invoke-static/range {v23 .. v23}, Lcom/android/phone/PhoneApp;->access$2200(Lcom/android/phone/PhoneApp;)Landroid/content/BroadcastReceiver;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3036
    .end local v5           #bActiveCB_sim1:Z
    .end local v6           #bActiveCB_sim2:Z
    .end local v7           #bResetCbNvValue:Z
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v11           #i:I
    .end local v17           #nameRes:[I
    .end local v19           #numberRes:[I
    .end local v21           #settings:Landroid/content/SharedPreferences;
    :cond_c
    return-void

    .line 2971
    :array_0
    .array-data 0x4
        0x9t 0x0t 0xat 0x7ft
        0xat 0x0t 0xat 0x7ft
        0xbt 0x0t 0xat 0x7ft
        0xct 0x0t 0xat 0x7ft
    .end array-data

    .line 2977
    :array_1
    .array-data 0x4
        0x1t 0x0t 0xbt 0x7ft
        0x2t 0x0t 0xbt 0x7ft
        0x3t 0x0t 0xbt 0x7ft
        0x4t 0x0t 0xbt 0x7ft
    .end array-data
.end method
