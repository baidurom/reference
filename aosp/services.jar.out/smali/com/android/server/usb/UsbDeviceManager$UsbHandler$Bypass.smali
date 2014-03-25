.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Bypass"
.end annotation


# static fields
.field private static final ACTION_USB_BYPASS_GETBYPASS:Ljava/lang/String; = "com.via.bypass.action.getbypass"

.field private static final ACTION_USB_BYPASS_GETBYPASS_RESULT:Ljava/lang/String; = "com.via.bypass.action.getbypass_result"

.field private static final ACTION_USB_BYPASS_SETBYPASS:Ljava/lang/String; = "com.via.bypass.action.setbypass"

.field private static final ACTION_USB_BYPASS_SETBYPASS_RESULT:Ljava/lang/String; = "com.via.bypass.action.setbypass_result"

.field private static final ACTION_USB_BYPASS_SETFUNCTION:Ljava/lang/String; = "com.via.bypass.action.setfunction"

.field private static final ACTION_VIA_SET_ETS_DEV:Ljava/lang/String; = "via.cdma.action.set.ets.dev"

.field private static final EXTRAL_VIA_ETS_DEV:Ljava/lang/String; = "via.cdma.extral.ets.dev"

.field private static final USB_FUNCTION_BYPASS:Ljava/lang/String; = "via_bypass"

.field public static final USB_FUNCTION_USERMODE:Ljava/lang/String; = "mtp"

.field private static final VALUE_BYPASS_CODE:Ljava/lang/String; = "com.via.bypass.bypass_code"

.field private static final VALUE_ENABLE_BYPASS:Ljava/lang/String; = "com.via.bypass.enable_bypass"

.field private static final VALUE_ISSET_BYPASS:Ljava/lang/String; = "com.via.bypass.isset_bypass"


# instance fields
.field private mBypassAll:I

.field private final mBypassCodes:[I

.field private mBypassFiles:[Ljava/io/File;

.field private final mBypassName:[Ljava/lang/String;

.field private final mBypassReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x0

    .line 609
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    .line 578
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "gps"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "pcv"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "atc"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "ets"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    .line 579
    iput v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    .line 581
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassReceiver:Landroid/content/BroadcastReceiver;

    .line 611
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/io/File;

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    .line 612
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sys/class/usb_rawbulk/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v0

    .line 616
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    .end local v1           #path:Ljava/lang/String;
    :cond_0
    return-void

    .line 577
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 547
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setBypassMode(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;Ljava/lang/Boolean;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 547
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    return-void
.end method

.method private getCurrentBypassMode()I
    .locals 7

    .prologue
    .line 627
    const/4 v0, 0x0

    .line 629
    .local v0, bypassmode:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 631
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 632
    const-string v4, "sys.cp.bypass.at"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, code:Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 638
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v3

    or-int/2addr v0, v4

    .line 629
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 634
    .end local v1           #code:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #code:Ljava/lang/String;
    goto :goto_1

    .line 641
    .end local v1           #code:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentBypassMode()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_2
    return v0

    .line 642
    :catch_0
    move-exception v2

    .line 643
    .local v2, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed to read bypass mode code!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private notifySetBypassResult(Ljava/lang/Boolean;I)V
    .locals 2
    .parameter "isset"
    .parameter "bypassCode"

    .prologue
    .line 707
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2200(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.via.bypass.action.setbypass_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.via.bypass.isset_bypass"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 710
    const-string v1, "com.via.bypass.bypass_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 713
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setBypassMode(I)V
    .locals 4
    .parameter "bypassmode"

    .prologue
    .line 701
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBypassMode()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 703
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 704
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 705
    return-void
.end method

.method private setEtsDev(II)V
    .locals 3
    .parameter "bypass"
    .parameter "oldbypass"

    .prologue
    const/4 v2, 0x3

    .line 687
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v1, v1, v2

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v1, v1, v2

    and-int/2addr v1, p2

    if-nez v1, :cond_1

    .line 688
    new-instance v0, Landroid/content/Intent;

    const-string v1, "via.cdma.action.set.ets.dev"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, reintent:Landroid/content/Intent;
    const-string v1, "via.cdma.extral.ets.dev"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 697
    .end local v0           #reintent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v1, v1, v2

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v1, v1, v2

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    .line 693
    new-instance v0, Landroid/content/Intent;

    const-string v1, "via.cdma.action.set.ets.dev"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .restart local v0       #reintent:Landroid/content/Intent;
    const-string v1, "via.cdma.extral.ets.dev"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    #getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2100(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method closeBypassFunction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 734
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeBypassFunction() CurrentFunctions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$2300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",DefaultFunctions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->updateBypassMode(I)V

    .line 737
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$2300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "via_bypass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$2400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;Z)V

    .line 740
    :cond_0
    return-void
.end method

.method handleCTClinet()V
    .locals 4

    .prologue
    .line 715
    const-string v1, "net.ctclientd"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, ctclientStatus:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCTClinet() mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCurrentFunctions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$2300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ctclientStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    #getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable ctclientd"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v1, "net.ctclientd"

    const-string v2, "enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const-string v1, "net.ctclientd"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disable ctclientd"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateBypassMode(I)V
    .locals 7
    .parameter "bypassmode"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 649
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I

    move-result v0

    .line 650
    .local v0, bypassResult:I
    if-ne p1, v0, :cond_0

    .line 651
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    .line 684
    :goto_0
    return-void

    .line 656
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setEtsDev(II)V

    .line 660
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 661
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    and-int/2addr v3, p1

    if-eqz v3, :cond_3

    .line 662
    if-ne v2, v6, :cond_2

    .line 663
    const-string v3, "sys.cp.bypass.at"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    or-int/2addr v0, v3

    .line 677
    :cond_1
    :goto_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' successsfully!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 665
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 680
    :catch_0
    move-exception v1

    .line 681
    .local v1, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to operate bypass!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    goto :goto_0

    .line 669
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    if-ne v2, v6, :cond_4

    .line 670
    :try_start_1
    const-string v3, "sys.cp.bypass.at"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :goto_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    .line 675
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    xor-int/2addr v0, v3

    goto :goto_3

    .line 672
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 679
    :cond_5
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
