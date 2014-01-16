.class Lcom/android/server/accessibility/AccessibilityManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 13
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    .line 265
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v8

    .line 267
    .local v8, userId:I
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 268
    const/4 v9, 0x0

    monitor-exit v10

    .line 287
    :goto_0
    return v9

    .line 270
    :cond_0
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v9, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v7

    .line 271
    .local v7, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v9, v7, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 272
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 273
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 274
    .local v1, comp:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, compPkg:Ljava/lang/String;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v0, v3

    .line 276
    .local v6, pkg:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 277
    if-nez p4, :cond_2

    .line 278
    const/4 v9, 0x1

    monitor-exit v10

    goto :goto_0

    .line 288
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #comp:Landroid/content/ComponentName;
    .end local v2           #compPkg:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v5           #len$:I
    .end local v6           #pkg:Ljava/lang/String;
    .end local v7           #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v8           #userId:I
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 280
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #comp:Landroid/content/ComponentName;
    .restart local v2       #compPkg:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .restart local v5       #len$:I
    .restart local v6       #pkg:Ljava/lang/String;
    .restart local v7       #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .restart local v8       #userId:I
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 281
    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v11, "enabled_accessibility_services"

    iget-object v12, v7, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    invoke-static {v9, v11, v12, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    .line 275
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 287
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #comp:Landroid/content/ComponentName;
    .end local v2           #compPkg:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #pkg:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 9
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 234
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v4

    .line 236
    .local v4, userId:I
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 237
    monitor-exit v6

    .line 260
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v5, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 240
    .local v3, state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 241
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 242
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 243
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, compPkg:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 247
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v7, "enabled_accessibility_services"

    iget-object v8, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    invoke-static {v5, v7, v8, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    .line 251
    iget-object v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 252
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v7, "touch_exploration_granted_accessibility_services"

    iget-object v8, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    invoke-static {v5, v7, v8, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$800(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V

    .line 256
    monitor-exit v6

    goto :goto_0

    .line 259
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v1           #compPkg:Ljava/lang/String;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v3           #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .end local v4           #userId:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .restart local v3       #state:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .restart local v4       #userId:I
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onSomePackagesChanged()V
    .locals 4

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 221
    monitor-exit v2

    .line 230
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v1

    if-nez v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 226
    .local v0, userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->populateInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    #calls: Lcom/android/server/accessibility/AccessibilityManagerService;->manageServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 229
    .end local v0           #userState:Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
