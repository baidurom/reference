.class final Lyi/support/v1/YiLaf$1;
.super Ljava/lang/Object;
.source "YiLaf.java"

# interfaces
.implements Lyi/support/v1/YiLaf$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/YiLaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeOptionsMenu()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public enableActionBarStyle()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public getActionBar()Lyi/support/v1/YiLaf$ActionBarWrapper;
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lyi/support/v1/YiLaf;->access$300()Lyi/support/v1/YiLaf$ActionBarWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Lyi/support/v1/YiLaf$MenuWrapper;
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lyi/support/v1/YiLaf;->access$400()Lyi/support/v1/YiLaf$MenuWrapper;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public isContentViewExclusive()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public openOptionsMenu()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public setContentViewExclusive(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 158
    return-void
.end method
