.class final Lyi/support/v1/YiLaf$2;
.super Ljava/lang/Object;
.source "YiLaf.java"

# interfaces
.implements Lyi/support/v1/YiLaf$ActionBarWrapper;


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
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasCustomView()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public hideBadgeView(I)V
    .locals 0
    .parameter "tabIndex"

    .prologue
    .line 174
    return-void
.end method

.method public onScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 169
    return-void
.end method

.method public removeCustomView()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public setAcitonSpinerAdapter(Landroid/widget/SpinnerAdapter;Lyi/support/v1/YiLaf$OnSpinerItemListener;)V
    .locals 0
    .parameter "adapter"
    .parameter "callback"

    .prologue
    .line 185
    return-void
.end method

.method public setCustomView(I)Landroid/view/View;
    .locals 1
    .parameter "resId"

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "view"

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDisplayActionButtonEnabled(ZLandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "showActionButton"
    .parameter "res"

    .prologue
    .line 183
    return-void
.end method

.method public setDisplayActionSpinerEnabled(Z)V
    .locals 0
    .parameter "showActionSpiner"

    .prologue
    .line 184
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .parameter "showHomeAsUp"

    .prologue
    .line 181
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 0
    .parameter "showCustom"

    .prologue
    .line 182
    return-void
.end method

.method public setTabOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "positon"
    .parameter "l"

    .prologue
    .line 170
    return-void
.end method

.method public setTabOnClickScrollView(ILandroid/view/View;)V
    .locals 0
    .parameter "positon"
    .parameter "scrollView"

    .prologue
    .line 171
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 179
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 180
    return-void
.end method

.method public showBadgeView(I)V
    .locals 0
    .parameter "tabIndex"

    .prologue
    .line 172
    return-void
.end method

.method public showBadgeView(ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "tabIndex"
    .parameter "text"

    .prologue
    .line 173
    return-void
.end method
