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

.field private static MEMORY_THRESHOLD:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final sGPULockType:[I = null

.field private static final sPrimaryDefaultType:I = 0xa

.field private static final sSecondaryDefaultType:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "BaiduKeyguardManager"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sGPULockType:[I

    .line 56
    const/16 v0, 0x300

    sput v0, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->MEMORY_THRESHOLD:I

    return-void

    .line 50
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
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method

.method private static aboveCertainMemory()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 124
    const-string v3, "/proc/meminfo"

    .line 125
    .local v3, path:Ljava/lang/String;
    const/4 v5, 0x0

    .line 127
    .local v5, totalMem:I
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, localFileReader:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 129
    .local v1, localBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, str:Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, arrayOfString:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v5, v7, 0x400

    .line 132
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
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

    .line 136
    sget v7, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->MEMORY_THRESHOLD:I

    if-le v5, v7, :cond_0

    :goto_1
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 133
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

    .line 141
    const/4 v0, 0x0

    .line 142
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

    .line 233
    :goto_1
    return-object v1

    .line 144
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .line 146
    :pswitch_2
    invoke-static {p0, p3}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)I

    move-result v7

    .line 147
    .local v7, mode:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    new-instance v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 150
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 151
    :cond_1
    if-nez v7, :cond_2

    .line 152
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p0, p4, p2}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 153
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 154
    :cond_2
    const/4 v1, 0x1

    if-ne v1, v7, :cond_3

    .line 155
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 156
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 157
    :cond_3
    const/16 v1, 0xa

    if-ne v1, v7, :cond_4

    .line 158
    new-instance v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 159
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 160
    :cond_4
    const/16 v1, 0xb

    if-ne v1, v7, :cond_0

    .line 161
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 162
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 166
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

    .line 169
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 174
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

    .line 176
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 182
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

    .line 184
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 142
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
    .line 115
    const-string v0, "sys.product_default_lock_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)I
    .locals 9
    .parameter "context"
    .parameter "updateMonitor"

    .prologue
    const/4 v5, 0x1

    .line 85
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->initDefaultLockMode()J

    move-result-wide v0

    .line 87
    .local v0, defaultmode:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.lockmode_type"

    invoke-static {v6, v7, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 89
    .local v3, mode:J
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->aboveCertainMemory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 90
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sGPULockType:[I

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 91
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->sGPULockType:[I

    aget v6, v6, v2

    int-to-long v6, v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_2

    .line 92
    const-wide/16 v3, 0x1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.lockmode_type"

    invoke-static {v6, v7, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 98
    .end local v2           #i:I
    :cond_0
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lockscreen.lockmode_type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-wide/16 v6, 0x2

    cmp-long v6, v6, v3

    if-nez v6, :cond_3

    .line 101
    const/4 v5, 0x2

    .line 111
    :cond_1
    :goto_1
    return v5

    .line 90
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v2           #i:I
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v3

    if-nez v6, :cond_4

    .line 103
    const/4 v5, 0x0

    goto :goto_1

    .line 104
    :cond_4
    const-wide/16 v6, 0x1

    cmp-long v6, v6, v3

    if-eqz v6, :cond_1

    .line 106
    const-wide/16 v6, 0xa

    cmp-long v6, v6, v3

    if-nez v6, :cond_5

    .line 107
    const/16 v5, 0xa

    goto :goto_1

    .line 108
    :cond_5
    const-wide/16 v6, 0xb

    cmp-long v6, v6, v3

    if-nez v6, :cond_1

    .line 109
    const/16 v5, 0xb

    goto :goto_1
.end method

.method public static initDefaultLockMode()J
    .locals 5

    .prologue
    .line 68
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->getDefaultLockMode()J

    move-result-wide v0

    .line 69
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

    .line 70
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 71
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->aboveCertainMemory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    const-wide/16 v0, 0xa

    .line 73
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

    .line 78
    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->setDefaultLockMode(J)V

    .line 80
    :cond_0
    return-wide v0

    .line 75
    :cond_1
    const-wide/16 v0, 0x1

    .line 76
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

    goto :goto_0
.end method

.method public static setDefaultLockMode(J)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 119
    const-string v0, "sys.product_default_lock_mode"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method
