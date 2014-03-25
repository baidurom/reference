.class final Lcom/android/server/pm/VendorPackageSetting;
.super Ljava/lang/Object;
.source "VendorPackageSettings.java"


# instance fields
.field mIntallStatus:Z

.field final mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    .line 46
    iput-object p1, p0, Lcom/android/server/pm/VendorPackageSetting;->mPackageName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "intallStatus"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    .line 50
    iput-object p1, p0, Lcom/android/server/pm/VendorPackageSetting;->mPackageName:Ljava/lang/String;

    .line 51
    iput-boolean p2, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    .line 52
    return-void
.end method


# virtual methods
.method getIntallStatus()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/pm/VendorPackageSetting;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method setIntallStatus(Z)V
    .locals 0
    .parameter "mIntallStatus"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/server/pm/VendorPackageSetting;->mIntallStatus:Z

    .line 60
    return-void
.end method
