.class public Landroid/content/pm/ActivityInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONFIG_DENSITY:I = 0x1000

.field public static final CONFIG_FONT_SCALE:I = 0x40000000

.field public static final CONFIG_KEYBOARD:I = 0x10

.field public static final CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final CONFIG_LAYOUT_DIRECTION:I = 0x2000

.field public static final CONFIG_LOCALE:I = 0x4

.field public static final CONFIG_MCC:I = 0x1

.field public static final CONFIG_MNC:I = 0x2

.field public static CONFIG_NATIVE_BITS:[I = null

.field public static final CONFIG_NAVIGATION:I = 0x40

.field public static final CONFIG_ORIENTATION:I = 0x80

.field public static final CONFIG_SCREEN_LAYOUT:I = 0x100

.field public static final CONFIG_SCREEN_SIZE:I = 0x400

.field public static final CONFIG_SMALLEST_SCREEN_SIZE:I = 0x800

.field public static final CONFIG_THEME:I = -0x80000000

.field public static final CONFIG_TOUCHSCREEN:I = 0x8

.field public static final CONFIG_UI_MODE:I = 0x200

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ALLOW_TASK_REPARENTING:I = 0x40

.field public static final FLAG_ALWAYS_RETAIN_TASK_STATE:I = 0x8

.field public static final FLAG_CLEAR_TASK_ON_LAUNCH:I = 0x4

.field public static final FLAG_EXCLUDE_FROM_RECENTS:I = 0x20

.field public static final FLAG_FINISH_ON_CLOSE_SYSTEM_DIALOGS:I = 0x100

.field public static final FLAG_FINISH_ON_TASK_LAUNCH:I = 0x2

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x200

.field public static final FLAG_IMMERSIVE:I = 0x800

.field public static final FLAG_MULTIPROCESS:I = 0x1

.field public static final FLAG_NO_HISTORY:I = 0x80

.field public static final FLAG_PRIMARY_USER_ONLY:I = 0x20000000

.field public static final FLAG_SHOW_ON_LOCK_SCREEN:I = 0x400

.field public static final FLAG_SINGLE_USER:I = 0x40000000

.field public static final FLAG_STATE_NOT_NEEDED:I = 0x10

.field public static final LAUNCH_MULTIPLE:I = 0x0

.field public static final LAUNCH_SINGLE_INSTANCE:I = 0x3

.field public static final LAUNCH_SINGLE_TASK:I = 0x2

.field public static final LAUNCH_SINGLE_TOP:I = 0x1

.field public static final SCREEN_ORIENTATION_BEHIND:I = 0x3

.field public static final SCREEN_ORIENTATION_FULL_SENSOR:I = 0xa

.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final SCREEN_ORIENTATION_NOSENSOR:I = 0x5

.field public static final SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final SCREEN_ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field public static final SCREEN_ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field public static final SCREEN_ORIENTATION_SENSOR:I = 0x4

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x7

.field public static final SCREEN_ORIENTATION_UNSPECIFIED:I = -0x1

.field public static final SCREEN_ORIENTATION_USER:I = 0x2

.field public static final UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:I = 0x1


# instance fields
.field public configChanges:I

.field public flags:I

.field public launchMode:I

.field public parentActivityName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public screenOrientation:I

.field public softInputMode:I

.field public targetActivity:Ljava/lang/String;

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    .line 590
    new-instance v0, Landroid/content/pm/ActivityInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 412
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 513
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .parameter "orig"

    .prologue
    .line 516
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 517
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 518
    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 519
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 520
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 521
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 522
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 523
    iget v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 524
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 525
    iget v0, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 526
    iget v0, p1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 527
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 528
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 613
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static activityInfoConfigToNative(I)I
    .locals 3
    .parameter "input"

    .prologue
    .line 432
    const/4 v1, 0x0

    .line 433
    .local v1, output:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 434
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 435
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    .line 433
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_1
    invoke-static {p0, v1}, Landroid/content/pm/ActivityInfo;->setOutputBaidu(II)I

    move-result v1

    .line 441
    return v1
.end method

.method private static setOutputBaidu(II)I
    .locals 3
    .parameter "input"
    .parameter "orgOutput"

    .prologue
    const/high16 v2, -0x8000

    .line 446
    move v0, p1

    .line 447
    .local v0, output:I
    and-int v1, p0, v2

    if-eqz v1, :cond_0

    .line 448
    or-int/2addr v0, v2

    .line 450
    :cond_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 542
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 546
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "taskAffinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 548
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_2

    .line 549
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " theme=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 553
    :cond_2
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v0, :cond_4

    .line 555
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "screenOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " configChanges=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " softInputMode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 559
    :cond_4
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v0, :cond_5

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uiOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 562
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public getRealConfigChanged()I
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x800

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto :goto_0
.end method

.method public final getThemeResource()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    .line 576
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 577
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    return-void
.end method
