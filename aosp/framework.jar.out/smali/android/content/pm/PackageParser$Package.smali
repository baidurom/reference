.class public final Landroid/content/pm/PackageParser$Package;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Package"
.end annotation


# instance fields
.field public final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final configPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public installLocation:I

.field public final instrumentation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Instrumentation;",
            ">;"
        }
    .end annotation
.end field

.field public mAdoptPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAppMetaData:Landroid/os/Bundle;

.field public mDidDexOpt:Z

.field public mExtras:Ljava/lang/Object;

.field public mOperationPending:Z

.field public mOriginalPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPath:Ljava/lang/String;

.field public mPreferredOrder:I

.field public mRealPackage:Ljava/lang/String;

.field public mScanPath:Ljava/lang/String;

.field public mSharedUserId:Ljava/lang/String;

.field public mSharedUserLabel:I

.field public mSignatures:[Landroid/content/pm/Signature;

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;

.field public manifestDigest:Landroid/content/pm/ManifestDigest;

.field public packageName:Ljava/lang/String;

.field public final permissionGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$PermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Permission;",
            ">;"
        }
    .end annotation
.end field

.field public protectedBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field public final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field public reqFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final requestedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final requestedPermissionsRequired:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field

.field public usesLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public usesLibraryFiles:[Ljava/lang/String;

.field public usesOptionalLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "_name"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3086
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 3089
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    .line 3090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 3091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    .line 3092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    .line 3093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    .line 3094
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 3096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 3097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissionsRequired:Ljava/util/ArrayList;

    .line 3101
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 3102
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3103
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    .line 3105
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 3106
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 3107
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 3110
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    .line 3132
    iput v1, p0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    .line 3156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 3162
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 3173
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 3174
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3175
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3176
    return-void
.end method


# virtual methods
.method public hasComponentClassName(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 3205
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3206
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 3230
    :goto_1
    return v1

    .line 3205
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3210
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 3211
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 3212
    goto :goto_1

    .line 3210
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3215
    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_5

    .line 3216
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 3217
    goto :goto_1

    .line 3215
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 3220
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 3221
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 3222
    goto :goto_1

    .line 3220
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3225
    :cond_7
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_5
    if-ltz v0, :cond_9

    .line 3226
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 3227
    goto :goto_1

    .line 3225
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 3230
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "newName"

    .prologue
    .line 3179
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 3180
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3181
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 3182
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Permission;->setPackageName(Ljava/lang/String;)V

    .line 3181
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3184
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 3185
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$PermissionGroup;->setPackageName(Ljava/lang/String;)V

    .line 3184
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3187
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 3188
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 3187
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3190
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_3
    if-ltz v0, :cond_3

    .line 3191
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Activity;->setPackageName(Ljava/lang/String;)V

    .line 3190
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 3193
    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_4
    if-ltz v0, :cond_4

    .line 3194
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Provider;->setPackageName(Ljava/lang/String;)V

    .line 3193
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 3196
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_5
    if-ltz v0, :cond_5

    .line 3197
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Service;->setPackageName(Ljava/lang/String;)V

    .line 3196
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 3199
    :cond_5
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_6
    if-ltz v0, :cond_6

    .line 3200
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageParser$Instrumentation;->setPackageName(Ljava/lang/String;)V

    .line 3199
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 3202
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
