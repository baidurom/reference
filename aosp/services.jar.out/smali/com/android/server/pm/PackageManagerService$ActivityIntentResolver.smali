.class final Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 4536
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 4711
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4536
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4536
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 7
    .parameter "a"
    .parameter "type"

    .prologue
    .line 4572
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #calls: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1000(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    .line 4573
    .local v3, systemApp:Z
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4574
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4575
    const-string v5, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    :cond_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4579
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Class="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    :cond_1
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4581
    .local v0, NI:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 4582
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 4583
    .local v1, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez v3, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "activity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4584
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setPriority(I)V

    .line 4585
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with priority > 0, forcing to 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4589
    const-string v4, "PackageManager"

    const-string v5, "    IntentFilter:"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    new-instance v4, Landroid/util/LogPrinter;

    const/4 v5, 0x2

    const-string v6, "PackageManager"

    invoke-direct {v4, v5, v6}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v5, "      "

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4592
    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4593
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> For Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 4581
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 4575
    .end local v0           #NI:I
    .end local v1           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2           #j:I
    :cond_5
    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 4597
    .restart local v0       #NI:I
    .restart local v2       #j:I
    :cond_6
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4536
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .locals 5
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4621
    .local p2, dest:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4622
    .local v1, filterAi:Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 4623
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4624
    .local v0, destAi:Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 4626
    const/4 v3, 0x0

    .line 4629
    .end local v0           #destAi:Landroid/content/pm/ActivityInfo;
    :goto_1
    return v3

    .line 4622
    .restart local v0       #destAi:Landroid/content/pm/ActivityInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4629
    .end local v0           #destAi:Landroid/content/pm/ActivityInfo;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 4536
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .locals 1
    .parameter "out"
    .parameter "prefix"
    .parameter "filter"

    .prologue
    .line 4690
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4692
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4693
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Activity;->getComponentShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4694
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4695
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4696
    return-void
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 4536
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .locals 4
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 4634
    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v3, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4635
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 4636
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4637
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 4641
    iget-boolean v3, v1, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 4644
    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_0
    return v2
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Landroid/content/pm/ResolveInfo;
    .locals 5
    .parameter "info"
    .parameter "match"

    .prologue
    const/4 v1, 0x0

    .line 4655
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v3, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4679
    :cond_0
    :goto_0
    return-object v1

    .line 4658
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 4659
    .local v0, activity:Landroid/content/pm/PackageParser$Activity;
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4663
    :cond_2
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 4664
    .local v1, res:Landroid/content/pm/ResolveInfo;
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    invoke-static {v0, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4666
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    .line 4667
    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 4669
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 4670
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget v2, v2, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v2, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 4673
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 4674
    iget-boolean v2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    iput-boolean v2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 4675
    iget v2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    iput v2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 4676
    iget-object v2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4677
    iget v2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v2, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 4678
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #calls: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$1000(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ResolveInfo;->system:Z

    goto :goto_0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4536
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4536
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->packageForFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected packageForFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 4649
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4545
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 4546
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "defaultOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4540
    if-eqz p3, :cond_0

    const/high16 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 4541
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4540
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4552
    .local p4, packageActivities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    if-nez p4, :cond_0

    .line 4553
    const/4 v5, 0x0

    .line 4568
    :goto_0
    return-object v5

    .line 4555
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mFlags:I

    .line 4556
    const/high16 v5, 0x1

    and-int/2addr v5, p3

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    .line 4557
    .local v1, defaultOnly:Z
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4558
    .local v0, N:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4562
    .local v4, listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 4563
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    iget-object v3, v5, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 4564
    .local v3, intentFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 4565
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4562
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4556
    .end local v0           #N:I
    .end local v1           #defaultOnly:Z
    .end local v2           #i:I
    .end local v3           #intentFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v4           #listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 4568
    .restart local v0       #N:I
    .restart local v1       #defaultOnly:Z
    .restart local v2       #i:I
    .restart local v4       #listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;>;"
    :cond_3
    invoke-super {p0, p1, p2, v1, v4}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method public final removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .locals 6
    .parameter "a"
    .parameter "type"

    .prologue
    .line 4600
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->mActivities:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4601
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4602
    const-string v4, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4608
    .local v0, NI:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 4609
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 4610
    .local v1, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4611
    const-string v3, "PackageManager"

    const-string v4, "    IntentFilter:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const-string v5, "PackageManager"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4614
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 4608
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4602
    .end local v0           #NI:I
    .end local v1           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v2           #j:I
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 4616
    .restart local v0       #NI:I
    .restart local v2       #j:I
    :cond_3
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4684
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1200()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4685
    return-void
.end method
