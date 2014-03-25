.class Lcom/android/server/WifiService$PasspointEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PasspointEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 2346
    iput-object p1, p0, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    .line 2347
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2348
    return-void
.end method

.method private getValue()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2369
    iget-object v2, p0, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_passpoint_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 2358
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2359
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PasspointEnabledSettingObserver, onChange, selfChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    iget-object v1, p0, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->getValue()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mPasspointEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$4802(Lcom/android/server/WifiService;Z)Z

    .line 2362
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PasspointEnabledSettingObserver, onChange, mPasspointEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPasspointEnabled:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$4800(Lcom/android/server/WifiService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iget-object v1, p0, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    iget-object v2, p0, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPasspointEnabled:Z
    invoke-static {v2}, Lcom/android/server/WifiService;->access$4800(Lcom/android/server/WifiService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/WifiService;->enableHS(Z)Z

    move-result v0

    .line 2365
    .local v0, isOK:Z
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PasspointEnabledSettingObserver, onChange, isOK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 2351
    iget-object v1, p0, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2352
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_passpoint_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2353
    iget-object v1, p0, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$PasspointEnabledSettingObserver;->getValue()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mPasspointEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$4802(Lcom/android/server/WifiService;Z)Z

    .line 2354
    return-void
.end method
