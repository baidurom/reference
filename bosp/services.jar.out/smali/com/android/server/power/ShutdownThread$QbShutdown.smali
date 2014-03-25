.class Lcom/android/server/power/ShutdownThread$QbShutdown;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QbShutdown"
.end annotation


# static fields
.field private static final DEFAULT_CHECKED:Z = true


# instance fields
.field private mAlarmIdx:I

.field private mAlarmInfoArray:[I

.field private mAlarmWarnArray:[I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mNowRTC:J

.field private mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

.field private final mQbConfirmView:Landroid/view/View;

.field private mTextViewInfo:Landroid/widget/TextView;

.field private mTextViewWarn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "qbConfirmView"

    .prologue
    const/4 v1, 0x2

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    .line 718
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    .line 719
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmInfoArray:[I

    .line 724
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmWarnArray:[I

    .line 733
    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    .line 734
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    .line 735
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread$QbShutdown;->init()V

    .line 736
    return-void

    .line 719
    :array_0
    .array-data 0x4
        #string@quickboot_poweroff_alarm#a
        #string@quickboot_schedule_pwonoff#a
    .end array-data

    .line 724
    :array_1
    .array-data 0x4
        #string@quickboot_lowbat_poweroff#a
        #string@quickboot_lowbat_schedule_pwonoff#a
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownThread$QbShutdown;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownThread$QbShutdown;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownThread$QbShutdown;->updateConfirmView(Z)V

    return-void
.end method

.method private beginQbShutdown()V
    .locals 4

    .prologue
    .line 869
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 870
    .local v0, isQbShutdown:Z
    const/4 v1, 0x0

    .line 872
    .local v1, pwoffAlarm:Landroid/app/AlarmManager$PoweroffAlarm;
    iget v2, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread$QbShutdown;->isAvaliableAlarmIdx(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    if-eqz v0, :cond_0

    .line 874
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    iget v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget-object v1, v2, v3

    .line 880
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$1302(Landroid/app/AlarmManager$PoweroffAlarm;)Landroid/app/AlarmManager$PoweroffAlarm;

    .line 881
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1402(Z)Z

    .line 883
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$400(Landroid/content/Context;)V

    .line 884
    return-void

    .line 877
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/android/server/power/ShutdownThread$QbShutdown;->setQuickBootEnabled(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private dateToWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .parameter "date"

    .prologue
    .line 794
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 795
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 796
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 798
    .local v1, dayIndex:I
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, #array@quickboot_info_week_set#t

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, dayOfWeekArray:[Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 802
    :cond_0
    const/4 v3, 0x0

    .line 805
    :goto_0
    return-object v3

    :cond_1
    add-int/lit8 v3, v1, -0x1

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method private static getLastAlarmIdx([Landroid/app/AlarmManager$PoweroffAlarm;J)I
    .locals 7
    .parameter "alarmArray"
    .parameter "nowRTC"

    .prologue
    .line 739
    const/4 v4, -0x1

    .line 740
    .local v4, nextPwoffIdx:I
    const-wide v2, 0x7fffffffffffffffL

    .line 742
    .local v2, nextPwoffAlarmTime:J
    if-eqz p0, :cond_1

    .line 743
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 744
    aget-object v0, p0, v1

    .line 745
    .local v0, alarm:Landroid/app/AlarmManager$PoweroffAlarm;
    iget-wide v5, v0, Landroid/app/AlarmManager$PoweroffAlarm;->when:J

    cmp-long v5, v5, p1

    if-lez v5, :cond_0

    iget-wide v5, v0, Landroid/app/AlarmManager$PoweroffAlarm;->when:J

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    .line 746
    iget-wide v2, v0, Landroid/app/AlarmManager$PoweroffAlarm;->when:J

    .line 747
    move v4, v1

    .line 743
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    .end local v0           #alarm:Landroid/app/AlarmManager$PoweroffAlarm;
    .end local v1           #idx:I
    :cond_1
    return v4
.end method

.method public static hasPoweroffAlarm(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 759
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 761
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 762
    .local v1, nowRTC:J
    invoke-virtual {v0, v1, v2}, Landroid/app/AlarmManager;->getPoweroffAlarm(J)[Landroid/app/AlarmManager$PoweroffAlarm;

    move-result-object v3

    .line 765
    .local v3, pwoffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;
    invoke-static {v3, v1, v2}, Lcom/android/server/power/ShutdownThread$QbShutdown;->getLastAlarmIdx([Landroid/app/AlarmManager$PoweroffAlarm;J)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread$QbShutdown;->isAvaliableAlarmIdx(I)Z

    move-result v4

    return v4
.end method

.method private init()V
    .locals 4

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownThread$QbShutdown;->isAvaliable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 828
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    const v2, #id@quickboot_dialog_text_info#t

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    .line 815
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    const v2, #id@quickboot_dialog_text_warn#t

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    .line 818
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    const v2, #id@quickboot_dialog_checkbox#t

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    .line 821
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 823
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mNowRTC:J

    .line 824
    iget-wide v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mNowRTC:J

    invoke-virtual {v0, v1, v2}, Landroid/app/AlarmManager;->getPoweroffAlarm(J)[Landroid/app/AlarmManager$PoweroffAlarm;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    .line 825
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    iget-wide v2, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mNowRTC:J

    invoke-static {v1, v2, v3}, Lcom/android/server/power/ShutdownThread$QbShutdown;->getLastAlarmIdx([Landroid/app/AlarmManager$PoweroffAlarm;J)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    .line 827
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread$QbShutdown;->initConfirmView()V

    goto :goto_0
.end method

.method private initConfirmView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 831
    iget v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread$QbShutdown;->isAvaliableAlarmIdx(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 832
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 833
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 835
    new-instance v1, Ljava/util/Date;

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mPoweroffAlarmArray:[Landroid/app/AlarmManager$PoweroffAlarm;

    iget v4, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget-object v3, v3, v4

    iget-wide v3, v3, Landroid/app/AlarmManager$PoweroffAlarm;->when:J

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 837
    .local v1, pwoffDate:Ljava/util/Date;
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmInfoArray:[I

    iget v6, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/power/ShutdownThread$QbShutdown;->dateToWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmWarnArray:[I

    iget v6, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 846
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v0, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 847
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 848
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #pwoffDate:Ljava/util/Date;
    :goto_0
    return-void

    .line 850
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/power/ShutdownThread;->isQuickBootEnabled(Landroid/content/Context;)Z
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->access$1200(Landroid/content/Context;)Z

    move-result v2

    .line 851
    .local v2, qbEnable:Z
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 852
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 854
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;

    const v4, #string@quick_boot_text_info#t

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private static isAvaliableAlarmIdx(I)Z
    .locals 1
    .parameter "alarmIdx"

    .prologue
    .line 755
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setQuickBootEnabled(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 770
    #calls: Lcom/android/server/power/ShutdownThread;->isQuickBootSupport(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->access$900(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "baidu_settings_quickboot"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 774
    :cond_0
    return-void

    .line 771
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateConfirmView(Z)V
    .locals 3
    .parameter "isQbChecked"

    .prologue
    .line 861
    iget v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$QbShutdown;->isAvaliableAlarmIdx(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewWarn:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmWarnArray:[I

    iget v2, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mAlarmIdx:I

    aget v0, v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 866
    :cond_0
    return-void

    .line 862
    :cond_1
    const v0, #string@quickboot_real_shutdown#t

    goto :goto_0
.end method


# virtual methods
.method public isAvaliable()Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mQbConfirmView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/android/server/power/ShutdownThread$QbShutdown;->beginQbShutdown()V

    .line 890
    return-void
.end method

.method public setListener()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/server/power/ShutdownThread$QbShutdown$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/ShutdownThread$QbShutdown$1;-><init>(Lcom/android/server/power/ShutdownThread$QbShutdown;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 791
    return-void
.end method
