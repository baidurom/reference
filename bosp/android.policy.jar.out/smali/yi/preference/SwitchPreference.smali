.class public Lyi/preference/SwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/preference/SwitchPreference$1;,
        Lyi/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lyi/preference/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyi/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const v0, 0x501006b

    invoke-direct {p0, p1, p2, v0}, Lyi/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v1, Lyi/preference/SwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lyi/preference/SwitchPreference$Listener;-><init>(Lyi/preference/SwitchPreference;Lyi/preference/SwitchPreference$1;)V

    iput-object v1, p0, Lyi/preference/SwitchPreference;->mListener:Lyi/preference/SwitchPreference$Listener;

    .line 66
    sget-object v1, Lcom/android/internal/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyi/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyi/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyi/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 72
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyi/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 74
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lyi/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method static synthetic access$100(Lyi/preference/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lyi/preference/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method getParentField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .parameter "object"
    .parameter "fieldName"

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, field:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method varargs getParentMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter "object"
    .parameter "methodName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 153
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lyi/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lyi/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "obj"
    .parameter "methodName"
    .parameter "parameters"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 164
    .local p4, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p4}, Lyi/preference/SwitchPreference;->getParentMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 165
    .local v1, method:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 166
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 167
    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 169
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 170
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 100
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 102
    const v7, 0x5020030

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 103
    .local v1, checkableView:Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v7, v1, Landroid/widget/Checkable;

    if-eqz v7, :cond_0

    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, checked:Z
    const-string v7, "mChecked"

    invoke-virtual {p0, p0, v7}, Lyi/preference/SwitchPreference;->getParentField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 106
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 107
    .local v0, accessible:Z
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 109
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 115
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v7, v1

    .line 116
    check-cast v7, Landroid/widget/Checkable;

    invoke-interface {v7, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 119
    new-array v5, v10, [Ljava/lang/Object;

    aput-object v1, v5, v11

    .line 122
    .local v5, objs:[Ljava/lang/Object;
    const-string v7, "sendAccessibilityEvent"

    new-array v8, v10, [Ljava/lang/Class;

    const-class v9, Landroid/view/View;

    aput-object v9, v8, v11

    invoke-virtual {p0, p0, v7, v5, v8}, Lyi/preference/SwitchPreference;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    instance-of v7, v1, Landroid/widget/Switch;

    if-eqz v7, :cond_0

    move-object v6, v1

    .line 125
    check-cast v6, Landroid/widget/Switch;

    .line 126
    .local v6, switchView:Landroid/widget/Switch;
    iget-object v7, p0, Lyi/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v7, p0, Lyi/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v7, p0, Lyi/preference/SwitchPreference;->mListener:Lyi/preference/SwitchPreference$Listener;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    .end local v0           #accessible:Z
    .end local v2           #checked:Z
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #objs:[Ljava/lang/Object;
    .end local v6           #switchView:Landroid/widget/Switch;
    :cond_0
    new-array v5, v10, [Ljava/lang/Object;

    aput-object p1, v5, v11

    .line 136
    .restart local v5       #objs:[Ljava/lang/Object;
    const-string v7, "syncSummaryView"

    new-array v8, v10, [Ljava/lang/Class;

    const-class v9, Landroid/view/View;

    aput-object v9, v8, v11

    invoke-virtual {p0, p0, v7, v5, v8}, Lyi/preference/SwitchPreference;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 137
    return-void

    .line 110
    .end local v5           #objs:[Ljava/lang/Object;
    .restart local v0       #accessible:Z
    .restart local v2       #checked:Z
    .restart local v4       #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 111
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 113
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 214
    invoke-virtual {p0}, Lyi/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyi/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "offText"

    .prologue
    .line 193
    iput-object p1, p0, Lyi/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 194
    invoke-virtual {p0}, Lyi/preference/SwitchPreference;->notifyChanged()V

    .line 195
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 204
    invoke-virtual {p0}, Lyi/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyi/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 205
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "onText"

    .prologue
    .line 182
    iput-object p1, p0, Lyi/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 183
    invoke-virtual {p0}, Lyi/preference/SwitchPreference;->notifyChanged()V

    .line 184
    return-void
.end method
