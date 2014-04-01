.class public final Landroid/appwidget/AppWidgetContext;
.super Ljava/lang/Object;
.source "AppWidgetContext.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newWidgetContext(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "hasUsedCustomerView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x4

    .line 74
    .local v0, contextPermission:I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->checkAPKSignatures(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 75
    const/4 v0, 0x3

    .line 78
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 79
    .local v1, theirContext:Landroid/content/Context;
    return-object v1
.end method
