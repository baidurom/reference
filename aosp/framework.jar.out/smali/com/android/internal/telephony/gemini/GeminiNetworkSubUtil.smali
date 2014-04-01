.class public Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONN_TYPE_ALWAYS:I = 0x1

.field public static final CONN_TYPE_WHEN_NEEDED:I = 0x0

.field public static final MODE_DUAL_SIM:I = 0x3

.field public static final MODE_FLIGHT_MODE:I = 0x0

.field public static final MODE_GPRS_AUTO_ATTACH:I = 0x1

.field public static final MODE_GPRS_NOT_ATTACH:I = 0x0

.field public static final MODE_GPRS_USER_SELECT:I = 0x2

.field public static final MODE_POWER_OFF:I = -0x1

.field public static final MODE_SIM1_ONLY:I = 0x1

.field public static final MODE_SIM2_ONLY:I = 0x2

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 147
    const-string v0, "entering flight mode bootup process"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 150
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 151
    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 152
    const-string v4, "gsm.3gswitch"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 153
    :goto_0
    if-eqz v2, :cond_1

    .line 154
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 157
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 152
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 156
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 89
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "boot_up_select_mode"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 93
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dual_sim_mode_setting"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bootUp]airplaneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectByUser:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dualSimModeSetting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SIM status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 107
    const-string v2, "gsm.sim.inserted"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-lez v1, :cond_0

    .line 110
    invoke-static {p0, v4, p1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;II)V

    .line 144
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v1

    .line 136
    if-eq v1, v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sim mode from ICCID is different than dual sim mode, to sync with insert status ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v0, p1

    .line 140
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;II)V

    goto :goto_0
.end method

.method static a(Lcom/android/internal/telephony/gemini/GeminiPhone;II)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, -0x1

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 160
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 161
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 162
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->getSIMMode()I

    move-result v9

    .line 163
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_2

    move v7, v4

    .line 165
    :goto_0
    and-int/lit8 v0, v9, 0x2

    if-eqz v0, :cond_3

    move v0, v4

    .line 166
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setRadioMode:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 168
    if-eq p1, v4, :cond_0

    if-ne p1, v6, :cond_14

    .line 169
    :cond_0
    if-eq p2, v4, :cond_1

    if-ne p2, v6, :cond_14

    .line 170
    :cond_1
    if-eq p1, p2, :cond_14

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dual sim mode is "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " and inserted status is "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", sync two values"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v1, p2

    .line 177
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal! Wrong mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 278
    :goto_3
    return-void

    :cond_2
    move v7, v5

    .line 163
    goto/16 :goto_0

    :cond_3
    move v0, v5

    .line 165
    goto/16 :goto_1

    .line 179
    :pswitch_0
    invoke-interface {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 180
    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 181
    if-nez v7, :cond_13

    move v7, v5

    .line 236
    :goto_4
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 240
    if-ne v7, v11, :cond_f

    .line 241
    const-string v0, "Power-off, not to refresh dual SIM mode setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 260
    :goto_5
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/PhoneProxy;->setAutoGprsAttach(I)V

    .line 261
    const-string v0, "gsm.3gswitch"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_4

    move v5, v4

    .line 262
    :cond_4
    if-eqz v5, :cond_12

    move-object v0, v2

    .line 263
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    .line 267
    :goto_6
    if-eq v7, v11, :cond_6

    .line 268
    sget v0, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a:I

    if-ne v0, v7, :cond_5

    .line 269
    const-string v0, "Last radio power status is the same with current radio power status, force notify service state changed"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 270
    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->forceNotifyServiceStateChange()V

    .line 271
    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->forceNotifyServiceStateChange()V

    .line 274
    :cond_5
    sput v7, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a:I

    .line 277
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setDualSimMode(I)V

    goto :goto_3

    .line 185
    :pswitch_1
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 186
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 187
    if-nez v0, :cond_13

    move v7, v5

    .line 188
    goto :goto_4

    .line 191
    :pswitch_2
    if-ne p2, v8, :cond_a

    .line 192
    invoke-interface {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 193
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 194
    if-eqz v7, :cond_7

    if-eqz v0, :cond_7

    move v7, v8

    .line 195
    goto :goto_4

    .line 196
    :cond_7
    if-nez v7, :cond_8

    if-nez v0, :cond_8

    move v7, v5

    .line 197
    goto :goto_4

    .line 198
    :cond_8
    if-eqz v7, :cond_9

    move v7, v4

    .line 199
    goto :goto_4

    .line 200
    :cond_9
    if-eqz v0, :cond_13

    move v7, v6

    .line 201
    goto :goto_4

    .line 203
    :cond_a
    if-ne p2, v4, :cond_c

    .line 204
    invoke-interface {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 205
    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 206
    if-eqz v7, :cond_b

    move v0, v4

    .line 223
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Warning! Request Dual mode but not enough SIM, status:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " mode:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    move v7, v0

    .line 225
    goto/16 :goto_4

    :cond_b
    move v0, v5

    .line 209
    goto :goto_7

    .line 210
    :cond_c
    if-ne p2, v6, :cond_e

    .line 211
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 212
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 213
    if-eqz v0, :cond_d

    move v0, v6

    .line 214
    goto :goto_7

    :cond_d
    move v0, v5

    .line 216
    goto :goto_7

    .line 219
    :cond_e
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 220
    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    move v0, v5

    .line 221
    goto :goto_7

    .line 228
    :pswitch_3
    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 229
    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    move v7, v1

    .line 230
    goto/16 :goto_4

    .line 243
    :cond_f
    if-nez p2, :cond_10

    .line 244
    const-string v0, "No SIM inserted, refresh dual SIM  mode to MODE_DUAL_SIM"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 248
    :cond_10
    if-ne v0, v4, :cond_11

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refresh dual SIM mode setting under air plane mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 253
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refresh dual SIM mode setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    :cond_12
    move-object v0, v3

    .line 265
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/PhoneProxy;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_6

    :cond_13
    move v7, v1

    goto/16 :goto_4

    :cond_14
    move v1, p1

    goto/16 :goto_2

    .line 177
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 368
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiNetworkSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method
