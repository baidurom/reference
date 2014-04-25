.class public Lcom/android/internal/policy/impl/BaiduKeyguardManager;
.super Ljava/lang/Object;
.source "BaiduKeyguardManager.java"


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
    .line 38
    const-string v0, "BaiduKeyguardManager"

    sput-object v0, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->sGPULockType:[I

    .line 61
    const/16 v0, 0x300

    sput v0, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->MEMORY_THRESHOLD:I

    return-void

    .line 55
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
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aboveCertainMemory()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 129
    const-string v3, "/proc/meminfo"

    .line 130
    .local v3, path:Ljava/lang/String;
    const/4 v5, 0x0

    .line 132
    .local v5, totalMem:I
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, localFileReader:Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v1, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 134
    .local v1, localBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, str:Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, arrayOfString:[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v5, v7, 0x400

    .line 137
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
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

    .line 141
    sget v7, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->MEMORY_THRESHOLD:I

    if-le v5, v7, :cond_0

    :goto_1
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static createLockScreen(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v7, 0x0

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, view:Landroid/view/View;
    invoke-static {p0, p3}, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I

    move-result v6

    .line 148
    .local v6, mode:I
    const/4 v1, 0x2

    if-ne v6, v1, :cond_1

    .line 149
    new-instance v0, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 150
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :cond_1
    if-nez v6, :cond_2

    .line 152
    new-instance v0, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;

    .end local v0           #view:Landroid/view/View;
    invoke-direct {v0, p0, p4, p2}, Lcom/baidu/internal/keyguard/hotword/HotwordLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .line 153
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 154
    :cond_2
    const/4 v1, 0x1

    if-ne v1, v6, :cond_3

    .line 155
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0

    .line 156
    :cond_3
    const/16 v1, 0xa

    if-ne v1, v6, :cond_4

    .line 157
    new-instance v0, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/space/SpaceLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 158
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 159
    :cond_4
    const/16 v1, 0xb

    if-ne v1, v6, :cond_0

    .line 160
    new-instance v0, Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    .end local v0           #view:Landroid/view/View;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 161
    .restart local v0       #view:Landroid/view/View;
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static getDefaultLockMode()J
    .locals 2

    .prologue
    .line 120
    const-string v0, "sys.product_default_lock_mode"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static getLockMode(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)I
    .locals 9
    .parameter "context"
    .parameter "updateMonitor"

    .prologue
    const/4 v5, 0x1

    .line 90
    invoke-static {}, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->initDefaultLockMode()J

    move-result-wide v0

    .line 92
    .local v0, defaultmode:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.lockmode_type"

    invoke-static {v6, v7, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 94
    .local v3, mode:J
    invoke-static {}, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->aboveCertainMemory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v6, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->sGPULockType:[I

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 96
    sget-object v6, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->sGPULockType:[I

    aget v6, v6, v2

    int-to-long v6, v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_2

    .line 97
    const-wide/16 v3, 0x1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.lockmode_type"

    invoke-static {v6, v7, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 103
    .end local v2           #i:I
    :cond_0
    sget-object v6, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->TAG:Ljava/lang/String;

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

    .line 105
    const-wide/16 v6, 0x2

    cmp-long v6, v6, v3

    if-nez v6, :cond_3

    .line 106
    const/4 v5, 0x2

    .line 116
    :cond_1
    :goto_1
    return v5

    .line 95
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2           #i:I
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v3

    if-nez v6, :cond_4

    .line 108
    const/4 v5, 0x0

    goto :goto_1

    .line 109
    :cond_4
    const-wide/16 v6, 0x1

    cmp-long v6, v6, v3

    if-eqz v6, :cond_1

    .line 111
    const-wide/16 v6, 0xa

    cmp-long v6, v6, v3

    if-nez v6, :cond_5

    .line 112
    const/16 v5, 0xa

    goto :goto_1

    .line 113
    :cond_5
    const-wide/16 v6, 0xb

    cmp-long v6, v6, v3

    if-nez v6, :cond_1

    .line 114
    const/16 v5, 0xb

    goto :goto_1
.end method

.method public static initDefaultLockMode()J
    .locals 5

    .prologue
    .line 73
    invoke-static {}, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->getDefaultLockMode()J

    move-result-wide v0

    .line 74
    .local v0, mode:J
    sget-object v2, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->TAG:Ljava/lang/String;

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

    .line 75
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 76
    invoke-static {}, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->aboveCertainMemory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const-wide/16 v0, 0xa

    .line 78
    sget-object v2, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->TAG:Ljava/lang/String;

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

    .line 83
    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->setDefaultLockMode(J)V

    .line 85
    :cond_0
    return-wide v0

    .line 80
    :cond_1
    const-wide/16 v0, 0x1

    .line 81
    sget-object v2, Lcom/android/internal/policy/impl/BaiduKeyguardManager;->TAG:Ljava/lang/String;

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
    .line 124
    const-string v0, "sys.product_default_lock_mode"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method
