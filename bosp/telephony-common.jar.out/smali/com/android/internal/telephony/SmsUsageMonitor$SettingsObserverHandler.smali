.class Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;
.super Landroid/os/Handler;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserverHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 250
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 252
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 253
    .local v0, globalObserver:Landroid/database/ContentObserver;
    const-string v2, "sms_short_code_confirmation"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 255
    return-void
.end method
