.class final Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 4716
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 4887
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4716
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4716
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final addService(Landroid/content/pm/PackageParser$Service;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 4752
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4753
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4754
    const-string v4, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4761
    .local v0, NI:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 4762
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 4763
    .local v1, intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4764
    const-string v3, "PackageManager"

    const-string v4, "    IntentFilter:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4765
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const-string v5, "PackageManager"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4767
    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4768
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 4761
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4754
    .end local v0           #NI:I
    .end local v1           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v2           #j:I
    :cond_3
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 4772
    .restart local v0       #NI:I
    .restart local v2       #j:I
    :cond_4
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4716
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z
    .locals 5
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4796
    .local p2, dest:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v1, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4797
    .local v1, filterSi:Landroid/content/pm/ServiceInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 4798
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4799
    .local v0, destAi:Landroid/content/pm/ServiceInfo;
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 4801
    const/4 v3, 0x0

    .line 4804
    .end local v0           #destAi:Landroid/content/pm/ServiceInfo;
    :goto_1
    return v3

    .line 4797
    .restart local v0       #destAi:Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4804
    .end local v0           #destAi:Landroid/content/pm/ServiceInfo;
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
    .line 4716
    check-cast p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V
    .locals 1
    .parameter "out"
    .parameter "prefix"
    .parameter "filter"

    .prologue
    .line 4866
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4868
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4869
    iget-object v0, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Service;->getComponentShortName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4870
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4871
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4872
    return-void
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 4716
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z
    .locals 4
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 4809
    iget-object v3, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v0, v3, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4810
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_0

    .line 4811
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4812
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 4816
    iget-boolean v3, v1, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 4819
    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_0
    return v2
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "filter"
    .parameter "match"

    .prologue
    const/4 v1, 0x0

    .line 4830
    move-object v0, p1

    .line 4831
    .local v0, info:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4855
    :cond_0
    :goto_0
    return-object v1

    .line 4834
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    .line 4835
    .local v2, service:Landroid/content/pm/PackageParser$Service;
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v3, v3, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 4839
    :cond_2
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 4840
    .local v1, res:Landroid/content/pm/ResolveInfo;
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 4842
    iget v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_3

    .line 4843
    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 4845
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getPriority()I

    move-result v3

    iput v3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 4846
    iget-object v3, v2, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget v3, v3, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 4849
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 4850
    iget-boolean v3, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasDefault:Z

    iput-boolean v3, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 4851
    iget v3, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->labelRes:I

    iput v3, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 4852
    iget-object v3, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v3, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4853
    iget v3, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->icon:I

    iput v3, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 4854
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #calls: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1000(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/ResolveInfo;->system:Z

    goto :goto_0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4716
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4716
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->packageForFilter(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected packageForFilter(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 4824
    iget-object v0, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

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
    .line 4725
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 4726
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
    .line 4720
    if-eqz p3, :cond_0

    const/high16 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 4721
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4720
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
            "Landroid/content/pm/PackageParser$Service;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4732
    .local p4, packageServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Service;>;"
    if-nez p4, :cond_0

    .line 4733
    const/4 v5, 0x0

    .line 4748
    :goto_0
    return-object v5

    .line 4735
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 4736
    const/high16 v5, 0x1

    and-int/2addr v5, p3

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    .line 4737
    .local v1, defaultOnly:Z
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4738
    .local v0, N:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4742
    .local v4, listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 4743
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Service;

    iget-object v3, v5, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    .line 4744
    .local v3, intentFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 4745
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4742
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4736
    .end local v0           #N:I
    .end local v1           #defaultOnly:Z
    .end local v2           #i:I
    .end local v3           #intentFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    .end local v4           #listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 4748
    .restart local v0       #N:I
    .restart local v1       #defaultOnly:Z
    .restart local v2       #i:I
    .restart local v4       #listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;>;"
    :cond_3
    invoke-super {p0, p1, p2, v1, v4}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v5

    goto :goto_0
.end method

.method public final removeService(Landroid/content/pm/PackageParser$Service;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 4775
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4776
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4777
    const-string v4, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Class="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4783
    .local v0, NI:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 4784
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 4785
    .local v1, intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4786
    const-string v3, "PackageManager"

    const-string v4, "    IntentFilter:"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    new-instance v3, Landroid/util/LogPrinter;

    const/4 v4, 0x2

    const-string v5, "PackageManager"

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4789
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 4783
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4777
    .end local v0           #NI:I
    .end local v1           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v2           #j:I
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 4791
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
    .line 4860
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1200()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4861
    return-void
.end method
