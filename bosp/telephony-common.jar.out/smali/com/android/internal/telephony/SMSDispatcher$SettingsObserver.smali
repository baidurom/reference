.class Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V
    .locals 1
    .parameter "handler"
    .parameter "premiumSmsRule"
    .parameter "context"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 241
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 242
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mContext:Landroid/content/Context;

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->onChange(Z)V

    .line 244
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sms_short_code_rule"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 250
    return-void
.end method
