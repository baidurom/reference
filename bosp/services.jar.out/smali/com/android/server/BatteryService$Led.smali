.class Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Led"
.end annotation


# instance fields
.field private mBatteryCharging:Z

.field private mBatteryFull:Z

.field private mBatteryLedOff:I

.field private mBatteryLedOn:I

.field private mBatteryLight:Lcom/android/server/LightsService$Light;

.field private mBatteryLow:Z

.field private mLightsService:Lcom/android/server/LightsService;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/LightsService;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "lights"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p3, p0, Lcom/android/server/BatteryService$Led;->mLightsService:Lcom/android/server/LightsService;

    .line 715
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 724
    const/4 v0, 0x1

    #setter for: Lcom/android/server/BatteryService;->mMultiColorLed:Z
    invoke-static {p1, v0}, Lcom/android/server/BatteryService;->access$1202(Lcom/android/server/BatteryService;Z)Z

    .line 726
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_notificationsBatteryLedOn#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 728
    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #integer@config_notificationsBatteryLedOff#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 730
    return-void
.end method

.method private getIpoLedStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 793
    const-string v0, "1"

    const-string v1, "sys.ipo.ledon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$2002(Lcom/android/server/BatteryService;Z)Z

    .line 799
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/BatteryService;->access$2300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>getIpoLedStatus ipo_led_on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  ipo_led_off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2200(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    return-void

    .line 796
    :cond_1
    const-string v0, "0"

    const-string v1, "sys.ipo.ledon"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v0, v2}, Lcom/android/server/BatteryService;->access$2202(Lcom/android/server/BatteryService;Z)Z

    goto :goto_0
.end method

.method private updateLedStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2200(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->LowLevelFlag:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 806
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$102(Lcom/android/server/BatteryService;Z)Z

    .line 807
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_off:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2202(Lcom/android/server/BatteryService;Z)Z

    .line 808
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$2002(Lcom/android/server/BatteryService;Z)Z

    .line 809
    invoke-static {}, Lcom/android/server/BatteryService;->access$2300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>updateLedStatus  LowLevelFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->LowLevelFlag:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_2
    return-void
.end method


# virtual methods
.method updateLightsLocked()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 736
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)I

    move-result v0

    .line 737
    .local v0, level:I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryStatus:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)I

    move-result v1

    .line 738
    .local v1, status:I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 741
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->getIpoLedStatus()V

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLightEnabled:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 746
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 791
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 748
    if-ne v1, v5, :cond_2

    .line 749
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 751
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLowARGB:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 752
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLedPulseEnabled:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 753
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->LowLevelFlag:Z
    invoke-static {v2, v6}, Lcom/android/server/BatteryService;->access$1802(Lcom/android/server/BatteryService;Z)Z

    .line 754
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 756
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLowARGB:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v3

    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 760
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 762
    :cond_4
    if-eq v1, v5, :cond_5

    if-ne v1, v3, :cond_7

    .line 766
    :cond_5
    if-ne v1, v3, :cond_6

    .line 767
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 770
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 773
    :cond_6
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->updateLedStatus()V

    .line 775
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryMediumARGB:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 778
    :cond_7
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2000(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 779
    if-eq v1, v3, :cond_8

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_a

    .line 780
    :cond_8
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryFullARGB:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    .line 785
    :goto_1
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mIPOBoot:Z
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$102(Lcom/android/server/BatteryService;Z)Z

    .line 786
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->ipo_led_on:Z
    invoke-static {v2, v4}, Lcom/android/server/BatteryService;->access$2002(Lcom/android/server/BatteryService;Z)Z

    .line 789
    :cond_9
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto/16 :goto_0

    .line 783
    :cond_a
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryMediumARGB:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_1
.end method

.method updateQbLights()V
    .locals 4

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)I

    move-result v0

    .line 816
    .local v0, level:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$2300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateQbLights: Current batterylevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", plugtype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)I

    move-result v1

    if-nez v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v1}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 833
    :goto_0
    return-void

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 824
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryLowARGB:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 825
    :cond_1
    const/16 v1, 0x5a

    if-lt v0, v1, :cond_2

    .line 827
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryFullARGB:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2100(Lcom/android/server/BatteryService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 830
    :cond_2
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/LightsService$Light;

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryMediumARGB:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0
.end method
