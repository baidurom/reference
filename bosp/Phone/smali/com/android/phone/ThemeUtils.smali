.class public Lcom/android/phone/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTheme(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 12
    .local v0, b_dark:Ljava/lang/Boolean;
    const v1, 0x7f0d0031

    invoke-static {p0, v0, v1}, Lcom/android/phone/ThemeUtils;->setTheme(Landroid/content/Context;Ljava/lang/Boolean;I)V

    .line 13
    return-void
.end method

.method public static setTheme(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "themeid"

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 18
    .local v0, b_dark:Ljava/lang/Boolean;
    invoke-static {p0, v0, p1}, Lcom/android/phone/ThemeUtils;->setTheme(Landroid/content/Context;Ljava/lang/Boolean;I)V

    .line 19
    return-void
.end method

.method private static setTheme(Landroid/content/Context;Ljava/lang/Boolean;I)V
    .locals 1
    .parameter "context"
    .parameter "dark"
    .parameter "themeid"

    .prologue
    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0, p2}, Landroid/content/Context;->setTheme(I)V

    .line 26
    :cond_0
    return-void
.end method
