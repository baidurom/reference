.class Landroid/webkit/DataListOptionsPopup$AnchorView;
.super Landroid/view/View;
.source "DataListOptionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/DataListOptionsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnchorView"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/DataListOptionsPopup$AnchorView;->setFocusable(Z)V

    .line 40
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/webkit/DataListOptionsPopup$AnchorView;->setVisibility(I)V

    .line 41
    return-void
.end method
