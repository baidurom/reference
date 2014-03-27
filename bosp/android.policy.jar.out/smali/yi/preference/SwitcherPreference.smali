.class public Lyi/preference/SwitcherPreference;
.super Landroid/preference/Preference;
.source "SwitcherPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/preference/SwitcherPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mChecked:Z

.field private mDisableDependentsState:Z

.field private mSendAccessibilityEventViewClickedType:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;

.field private mSwitcher:Lyi/widget/Switcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyi/preference/SwitcherPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const v0, 0x5010060

    invoke-direct {p0, p1, p2, v0}, Lyi/preference/SwitcherPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object v1, Landroid/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lyi/preference/SwitcherPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lyi/preference/SwitcherPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lyi/preference/SwitcherPreference;->mDisableDependentsState:Z

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lyi/preference/SwitcherPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 60
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lyi/preference/SwitcherPreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lyi/preference/SwitcherPreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lyi/preference/SwitcherPreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lyi/preference/SwitcherPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 74
    const v5, 0x5020051

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lyi/widget/Switcher;

    iput-object v5, p0, Lyi/preference/SwitcherPreference;->mSwitcher:Lyi/widget/Switcher;

    .line 75
    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSwitcher:Lyi/widget/Switcher;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSwitcher:Lyi/widget/Switcher;

    instance-of v5, v5, Landroid/widget/Checkable;

    if-eqz v5, :cond_1

    .line 76
    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSwitcher:Lyi/widget/Switcher;

    iget-boolean v6, p0, Lyi/preference/SwitcherPreference;->mChecked:Z

    invoke-interface {v5, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 81
    iget-boolean v5, p0, Lyi/preference/SwitcherPreference;->mSendAccessibilityEventViewClickedType:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSwitcher:Lyi/widget/Switcher;

    invoke-virtual {v5}, Lyi/widget/Switcher;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    iput-boolean v7, p0, Lyi/preference/SwitcherPreference;->mSendAccessibilityEventViewClickedType:Z

    .line 86
    const/4 v0, 0x1

    .line 87
    .local v0, eventType:I
    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSwitcher:Lyi/widget/Switcher;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lyi/widget/Switcher;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 90
    .end local v0           #eventType:I
    :cond_0
    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSwitcher:Lyi/widget/Switcher;

    invoke-virtual {v5, v7}, Lyi/widget/Switcher;->setTouchable(Z)V

    .line 94
    :cond_1
    const v5, #id@summary#t

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    .local v3, summaryView:Landroid/widget/TextView;
    if-eqz v3, :cond_5

    .line 96
    const/4 v4, 0x1

    .line 97
    .local v4, useDefaultSummary:Z
    iget-boolean v5, p0, Lyi/preference/SwitcherPreference;->mChecked:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSummaryOn:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    .line 98
    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/4 v4, 0x0

    .line 105
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 107
    .local v2, summary:Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const/4 v4, 0x0

    .line 113
    .end local v2           #summary:Ljava/lang/CharSequence;
    :cond_3
    const/16 v1, 0x8

    .line 114
    .local v1, newVisibility:I
    if-nez v4, :cond_4

    .line 116
    const/4 v1, 0x0

    .line 118
    :cond_4
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eq v1, v5, :cond_5

    .line 119
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    .end local v1           #newVisibility:I
    .end local v4           #useDefaultSummary:Z
    :cond_5
    return-void

    .line 100
    .restart local v4       #useDefaultSummary:Z
    :cond_6
    iget-boolean v5, p0, Lyi/preference/SwitcherPreference;->mChecked:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSummaryOff:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    .line 101
    iget-object v5, p0, Lyi/preference/SwitcherPreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 126
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 128
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 132
    .local v0, newValue:Z
    :goto_0
    iput-boolean v1, p0, Lyi/preference/SwitcherPreference;->mSendAccessibilityEventViewClickedType:Z

    .line 134
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyi/preference/SwitcherPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    :goto_1
    return-void

    .line 128
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lyi/preference/SwitcherPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter "a"
    .parameter "index"

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lyi/preference/SwitcherPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 282
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 279
    check-cast v0, Lyi/preference/SwitcherPreference$SavedState;

    .line 280
    .local v0, myState:Lyi/preference/SwitcherPreference$SavedState;
    invoke-virtual {v0}, Lyi/preference/SwitcherPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 281
    iget-boolean v1, v0, Lyi/preference/SwitcherPreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lyi/preference/SwitcherPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 260
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 261
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 266
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lyi/preference/SwitcherPreference$SavedState;

    invoke-direct {v0, v1}, Lyi/preference/SwitcherPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 267
    .local v0, myState:Lyi/preference/SwitcherPreference$SavedState;
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lyi/preference/SwitcherPreference$SavedState;->checked:Z

    move-object v1, v0

    .line 268
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 254
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lyi/preference/SwitcherPreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lyi/preference/SwitcherPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2
    :goto_0
    invoke-virtual {p0, v0}, Lyi/preference/SwitcherPreference;->setChecked(Z)V

    .line 256
    return-void

    .line 254
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 147
    iget-boolean v0, p0, Lyi/preference/SwitcherPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 148
    iput-boolean p1, p0, Lyi/preference/SwitcherPreference;->mChecked:Z

    .line 149
    invoke-virtual {p0, p1}, Lyi/preference/SwitcherPreference;->persistBoolean(Z)Z

    .line 150
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lyi/preference/SwitcherPreference;->notifyDependencyChange(Z)V

    .line 151
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->notifyChanged()V

    .line 153
    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .parameter "disableDependentsState"

    .prologue
    .line 244
    iput-boolean p1, p0, Lyi/preference/SwitcherPreference;->mDisableDependentsState:Z

    .line 245
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 215
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyi/preference/SwitcherPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 204
    iput-object p1, p0, Lyi/preference/SwitcherPreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 205
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->notifyChanged()V

    .line 208
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .parameter "summaryResId"

    .prologue
    .line 187
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyi/preference/SwitcherPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 188
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 176
    iput-object p1, p0, Lyi/preference/SwitcherPreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 177
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lyi/preference/SwitcherPreference;->notifyChanged()V

    .line 180
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    iget-boolean v3, p0, Lyi/preference/SwitcherPreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lyi/preference/SwitcherPreference;->mChecked:Z

    .line 167
    .local v0, shouldDisable:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 166
    .end local v0           #shouldDisable:Z
    :cond_2
    iget-boolean v3, p0, Lyi/preference/SwitcherPreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
