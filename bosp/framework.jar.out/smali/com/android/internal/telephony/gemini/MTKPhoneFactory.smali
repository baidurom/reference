.class public Lcom/android/internal/telephony/gemini/MTKPhoneFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/android/internal/telephony/Phone;

.field private static b:Lcom/android/internal/telephony/CommandsInterface;

.field private static c:Lcom/android/internal/telephony/CommandsInterface;

.field private static d:Z

.field private static e:Lcom/android/internal/telephony/PhoneNotifier;

.field private static f:Landroid/os/Looper;

.field private static g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    .line 87
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 88
    sput-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 261
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 263
    monitor-exit v1

    return-object v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Z

    if-nez v0, :cond_1

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 268
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 270
    monitor-exit v1

    return-object v0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPhoneType(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 226
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 243
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 236
    goto :goto_0

    .line 241
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 3
    .parameter

    .prologue
    .line 275
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v2}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    const-class v5, Lcom/android/internal/telephony/Phone;

    monitor-enter v5

    .line 101
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Z

    if-nez v1, :cond_6

    .line 102
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f:Landroid/os/Looper;

    .line 103
    sput-object p0, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->g:Landroid/content/Context;

    .line 105
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->f:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 110
    :cond_0
    :try_start_1
    const-string/jumbo v1, "persist.service.conn.looper"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v4, Landroid/util/LogPrinter;

    const/4 v6, 0x3

    const-string v7, "PHONE"

    invoke-direct {v4, v6, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move v1, v2

    .line 118
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 123
    :try_start_2
    new-instance v4, Landroid/net/LocalServerSocket;

    const-string v6, "com.android.internal.telephony"

    invoke-direct {v4, v6}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v4, v2

    .line 128
    :goto_1
    if-eqz v4, :cond_3

    .line 129
    if-le v1, v8, :cond_2

    .line 131
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PhoneFactory probably already running"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :catch_0
    move-exception v4

    move v4, v3

    goto :goto_1

    .line 134
    :cond_2
    const-wide/16 v6, 0x7d0

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 138
    :catch_1
    move-exception v4

    goto :goto_0

    .line 140
    :cond_3
    :try_start_5
    new-instance v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "preferred_network_mode"

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 146
    const-string v1, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network Mode set to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string/jumbo v1, "persist.radio.default_sim_mode"

    const/16 v4, 0xc

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 152
    const-string v1, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gemini Network Mode set to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "preferred_cdma_subscription"

    const/4 v8, 0x1

    invoke-static {v1, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 157
    const-string v1, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cdma Subscription set to "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v1, "persist.radio.default_sim"

    const/4 v4, -0x1

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 162
    if-ne v1, v10, :cond_a

    .line 164
    const-string/jumbo v1, "persist.radio.default_sim"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, "PHONE"

    const-string v4, "Set Default Phone as SIM1 during first boot-up"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 170
    :goto_2
    const-string v1, "com.mtk.3G_SWITCH"

    const/4 v9, 0x0

    invoke-virtual {p0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    const-string v9, "gsm.3gswitch"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_4

    move v2, v3

    .line 172
    :cond_4
    const-string v9, "3G_SIM_ID"

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 173
    const-string v2, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initiate 3G Sim="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {v7}, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->getPhoneType(I)I

    move-result v2

    .line 176
    if-ne v2, v3, :cond_7

    .line 177
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v6, v8, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 178
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    .line 179
    const-string v1, "PHONE"

    const-string v2, "Creating GSMPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_5
    :goto_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->d:Z

    .line 215
    :cond_6
    monitor-exit v5

    return-void

    .line 180
    :cond_7
    if-ne v2, v11, :cond_8

    .line 181
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v6, v8, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 182
    new-instance v1, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v3, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    .line 183
    const-string v1, "PHONE"

    const-string v2, "Creating CDMAPhone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 184
    :cond_8
    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 185
    if-nez v1, :cond_9

    .line 186
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v6, v8, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 187
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v8, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    .line 192
    :goto_4
    new-instance v2, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    .line 193
    new-instance v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v6, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v1, v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 195
    new-instance v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v1, v2, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 199
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    new-instance v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v7, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    new-instance v8, Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {v8, v6}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    invoke-direct {v1, v7, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    .line 202
    const-string v1, "PHONE"

    const-string v7, "Creating GeminiPhone"

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setDefaultPhone(I)V

    .line 204
    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 205
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPeerPhone(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 207
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->a:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    move-result-object v3

    .line 209
    sget-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->e:Lcom/android/internal/telephony/PhoneNotifier;

    check-cast v1, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    .line 210
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object v1, v0

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->registerDataStateChangeCallback(Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;)V

    goto/16 :goto_3

    .line 189
    :cond_9
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v8, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->b:Lcom/android/internal/telephony/CommandsInterface;

    .line 190
    new-instance v1, Lcom/android/internal/telephony/RIL;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v6, v8, v2}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    sput-object v1, Lcom/android/internal/telephony/gemini/MTKPhoneFactory;->c:Lcom/android/internal/telephony/CommandsInterface;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :cond_a
    move v4, v1

    goto/16 :goto_2
.end method
