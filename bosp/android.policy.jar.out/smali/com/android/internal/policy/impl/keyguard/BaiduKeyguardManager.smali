.class public Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;
.super Ljava/lang/Object;
.source "BaiduKeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager$1;
    }
.end annotation


# static fields
.field public static final BAIDU_KEYGUARD_DEFAULT_TYPE_KEY:Ljava/lang/String; = "sys.product_default_lock_mode"

.field public static final BAIDU_KEYGUARD_DISABLE_TYPE_KEY:Ljava/lang/String; = "sys.product_disable_lock_mode"

.field public static final BAIDU_KEYGUARD_TYPE_KEY:Ljava/lang/String; = "lockscreen.lockmode_type"

.field public static final LOCK_ACCOUNT:I = 0x7

.field public static final LOCK_BIOMETRIC:I = 0x6

.field public static final LOCK_HOTWORD:I = 0x0

.field public static final LOCK_INVALID:I = -0x1

.field public static final LOCK_MULTITHEME:I = 0x2

.field public static final LOCK_PASSWORD:I = 0x5

.field public static final LOCK_PATTERN:I = 0x3

.field public static final LOCK_PIN:I = 0x4

.field public static final LOCK_SIMPIN:I = 0x8

.field public static final LOCK_SIMPUK:I = 0x9

.field public static final LOCK_SLIDE:I = 0x1

.field public static final LOCK_SPACE:I = 0xa

.field public static final LOCK_WATER:I = 0xb

.field private static MEMORY_THRESHOLD:I

.field private static TAG:Ljava/lang/String;

.field private static final sGPULockType:[I

.field private static sPrimaryDefaultType:I

.field private static sSecondaryDefaultType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "BaiduKeyguardManager"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sGPULockType:[I

    .line 58
    const/16 v0, 0x300

    sput v0, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->MEMORY_THRESHOLD:I

    return-void

    .line 52
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method

.method private static aboveCertainMemory()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 142
    const-string v3, "/proc/meminfo"

    .line 143
    .local v3, path:Ljava/lang/String;
    const/4 v5, 0x0

    .line 145
    .local v5, totalMem:I
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, localFileReader:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 147
    .local v1, localBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, str:Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, arrayOfString:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v5, v7, 0x400

    .line 150
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0           #arrayOfString:[Ljava/lang/String;
    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v2           #localFileReader:Ljava/io/FileReader;
    .end local v4           #str:Ljava/lang/String;
    :goto_0
    const-string v7, "BaiduKeyguardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "total memory:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    sget v7, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->MEMORY_THRESHOLD:I

    if-le v5, v7, :cond_0

    :goto_1
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 151
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static createBaiduLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "securityMode"

    .prologue
    const v9, #dimen@status_bar_height#t

    const/4 v8, 0x0

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, view:Landroid/view/View;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager$1;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object v1, v0

    .line 251
    :goto_1
    return-object v1

    .line 162
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .line 164
    :pswitch_2
    invoke-static {p0, p3}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)I

    move-result v7

    .line 165
    .local v7, mode:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 166
    new-instance v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 168
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 169
    :cond_1
    if-nez v7, :cond_2

    .line 170
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p0, p4, p2}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 171
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 172
    :cond_2
    const/4 v1, 0x1

    if-ne v1, v7, :cond_3

    .line 173
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 174
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 175
    :cond_3
    const/16 v1, 0xa

    if-ne v1, v7, :cond_4

    .line 176
    new-instance v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 177
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 178
    :cond_4
    const/16 v1, 0xb

    if-ne v1, v7, :cond_0

    .line 179
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 180
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 184
    .end local v7           #mode:I
    :pswitch_3
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;I)V

    .line 187
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 192
    :pswitch_4
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/AccountUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 194
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 200
    :pswitch_5
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 202
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultLockMode()J
    .locals 2

    .prologue
    .line 125
    const-string v0, "sys.product_default_lock_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getDisableLockMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    const-string v0, "sys.product_disable_lock_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)I
    .locals 8
    .parameter "context"
    .parameter "updateMonitor"

    .prologue
    .line 95
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->initDefaultLockMode()J

    move-result-wide v0

    .line 97
    .local v0, defaultmode:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen.lockmode_type"

    invoke-static {v5, v6, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 99
    .local v3, mode:J
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->aboveCertainMemory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sGPULockType:[I

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 101
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sGPULockType:[I

    aget v5, v5, v2

    int-to-long v5, v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_1

    .line 102
    sget v5, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sSecondaryDefaultType:I

    int-to-long v3, v5

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lockscreen.lockmode_type"

    invoke-static {v5, v6, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 108
    .end local v2           #i:I
    :cond_0
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lockscreen.lockmode_type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-wide/16 v5, 0x2

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    .line 111
    const/4 v5, 0x2

    .line 121
    :goto_1
    return v5

    .line 100
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v2           #i:I
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, v5, v3

    if-nez v5, :cond_3

    .line 113
    const/4 v5, 0x0

    goto :goto_1

    .line 114
    :cond_3
    const-wide/16 v5, 0x1

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    .line 115
    const/4 v5, 0x1

    goto :goto_1

    .line 116
    :cond_4
    const-wide/16 v5, 0xa

    cmp-long v5, v5, v3

    if-nez v5, :cond_5

    .line 117
    const/16 v5, 0xa

    goto :goto_1

    .line 118
    :cond_5
    const-wide/16 v5, 0xb

    cmp-long v5, v5, v3

    if-nez v5, :cond_6

    .line 119
    const/16 v5, 0xb

    goto :goto_1

    .line 121
    :cond_6
    sget v5, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sSecondaryDefaultType:I

    goto :goto_1
.end method

.method public static initDefaultLockMode()J
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 71
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->getDefaultLockMode()J

    move-result-wide v0

    .line 72
    .local v0, mode:J
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sys.product_default_lock_mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->getDisableLockMode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->aboveCertainMemory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    :cond_1
    sput v5, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sPrimaryDefaultType:I

    .line 76
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sGPULockType:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[\\[\\]\\ ]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->setDisableLockMode(Ljava/lang/String;)V

    .line 80
    :goto_0
    sput v5, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sSecondaryDefaultType:I

    .line 81
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->aboveCertainMemory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    sget v2, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sPrimaryDefaultType:I

    int-to-long v0, v2

    .line 83
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sys.product_default_lock_mode aboveCertainMemory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_1
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->setDefaultLockMode(J)V

    .line 90
    :cond_2
    return-wide v0

    .line 78
    :cond_3
    const/16 v2, 0xa

    sput v2, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sPrimaryDefaultType:I

    goto :goto_0

    .line 85
    :cond_4
    sget v2, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sSecondaryDefaultType:I

    int-to-long v0, v2

    .line 86
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sys.product_default_lock_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setDefaultLockMode(J)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 129
    const-string v0, "sys.product_default_lock_mode"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static setDisableLockMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 137
    const-string v0, "sys.product_disable_lock_mode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method
