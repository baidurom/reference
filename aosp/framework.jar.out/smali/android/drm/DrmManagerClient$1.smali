.class final Landroid/drm/DrmManagerClient$1;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/DrmManagerClient;->showSecureTimerInvalid(Landroid/content/Context;Landroid/drm/DrmManagerClient$DrmOperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;


# direct methods
.method constructor <init>(Landroid/drm/DrmManagerClient$DrmOperationListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Landroid/drm/DrmManagerClient$1;->val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1127
    iget-object v0, p0, Landroid/drm/DrmManagerClient$1;->val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Landroid/drm/DrmManagerClient$1;->val$listener:Landroid/drm/DrmManagerClient$DrmOperationListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/drm/DrmManagerClient$DrmOperationListener;->onOperated(I)V

    .line 1130
    :cond_0
    return-void
.end method
