.class Landroid/drm/DrmManagerClient$6;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmManagerClient;->showProtectionInfoDialog(Landroid/content/Context;Ljava/lang/String;)V
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
    .line 1370
    iput-object p1, p0, Landroid/drm/DrmManagerClient$6;->this$0:Landroid/drm/DrmManagerClient;

    iput-object p2, p0, Landroid/drm/DrmManagerClient$6;->val$rightsIssuerFinal:Ljava/lang/String;

    iput-object p3, p0, Landroid/drm/DrmManagerClient$6;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Landroid/drm/DrmManagerClient$6;->val$rightsIssuerFinal:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1374
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Landroid/drm/DrmManagerClient$6;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1375
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1376
    return-void
.end method
