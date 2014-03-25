.class Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;
.super Landroid/database/ContentObserver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRoamingSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 578
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 579
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    #calls: Lcom/android/internal/telephony/DataConnectionTracker;->handleDataOnRoamingChange()V
    invoke-static {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->access$100(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 601
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 582
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 584
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/internal/telephony/DataConnectionTracker;->access$000()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 590
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 594
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 595
    return-void
.end method
