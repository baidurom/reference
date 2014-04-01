.class Landroid/drm/DrmManagerClient$9;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmManagerClient;->showLicenseAcquisition(Landroid/content/Context;Ljava/lang/String;Landroid/drm/DrmManagerClient$DrmOperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/drm/DrmManagerClient;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$rightsIssuerFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/drm/DrmManagerClient;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Landroid/drm/DrmManagerClient$9;->this$0:Landroid/drm/DrmManagerClient;

    iput-object p2, p0, Landroid/drm/DrmManagerClient$9;->val$rightsIssuerFinal:Ljava/lang/String;

    iput-object p3, p0, Landroid/drm/DrmManagerClient$9;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Landroid/drm/DrmManagerClient$9;->val$rightsIssuerFinal:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1628
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Landroid/drm/DrmManagerClient$9;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1629
    return-void
.end method
