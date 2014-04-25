.class public Lcom/android/phone/CheckSimPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CheckSimPreference.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/SimPreference"


# instance fields
.field private mSimColor:I

.field private mSimIconNumber:Ljava/lang/String;

.field private mSimName:Ljava/lang/String;

.field private mSimNumber:Ljava/lang/String;

.field private mSimSlot:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CheckSimPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method private getSimStatusImge(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 155
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 141
    :pswitch_1
    const v0, 0x2020121

    goto :goto_0

    .line 143
    :pswitch_2
    const v0, 0x202010e

    goto :goto_0

    .line 145
    :pswitch_3
    const v0, 0x2020107

    goto :goto_0

    .line 147
    :pswitch_4
    const v0, 0x2020128

    goto :goto_0

    .line 149
    :pswitch_5
    const v0, 0x2020126

    goto :goto_0

    .line 151
    :pswitch_6
    const v0, 0x20200fe

    goto :goto_0

    .line 153
    :pswitch_7
    const v0, 0x2020127

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/16 v9, 0x8

    .line 77
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 78
    new-instance v5, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-virtual {p0}, Lcom/android/phone/CheckSimPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    .line 79
    .local v5, telephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    const v7, 0x7f0700f8

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, imageStatus:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 81
    iget v7, p0, Lcom/android/phone/CheckSimPreference;->mSimSlot:I

    invoke-virtual {v5, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/phone/CheckSimPreference;->getSimStatusImge(I)I

    move-result v2

    .line 82
    .local v2, res:I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_5

    .line 83
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    .end local v2           #res:I
    :cond_0
    :goto_0
    const v7, 0x7f0700f7

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 90
    .local v6, viewSim:Landroid/widget/RelativeLayout;
    if-eqz v6, :cond_1

    .line 91
    iget v7, p0, Lcom/android/phone/CheckSimPreference;->mSimColor:I

    if-ltz v7, :cond_6

    iget v7, p0, Lcom/android/phone/CheckSimPreference;->mSimColor:I

    const/4 v8, 0x3

    if-gt v7, v8, :cond_6

    .line 92
    sget-object v7, Landroid/provider/Telephony;->SIMBackgroundRes:[I

    iget v8, p0, Lcom/android/phone/CheckSimPreference;->mSimColor:I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 98
    :cond_1
    :goto_1
    const v7, 0x7f0700fc

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    .local v4, simNumber:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 100
    iget-object v7, p0, Lcom/android/phone/CheckSimPreference;->mSimNumber:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/CheckSimPreference;->mSimNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 101
    iget-object v7, p0, Lcom/android/phone/CheckSimPreference;->mSimNumber:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2
    :goto_2
    const v7, 0x7f070029

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    .local v1, operatorName:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 109
    iget-object v7, p0, Lcom/android/phone/CheckSimPreference;->mSimName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_3
    const v7, 0x7f0700fa

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .local v3, simIconNumber:Landroid/widget/TextView;
    if-eqz v3, :cond_4

    .line 114
    iget-object v7, p0, Lcom/android/phone/CheckSimPreference;->mSimIconNumber:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_4
    return-void

    .line 85
    .end local v1           #operatorName:Landroid/widget/TextView;
    .end local v3           #simIconNumber:Landroid/widget/TextView;
    .end local v4           #simNumber:Landroid/widget/TextView;
    .end local v6           #viewSim:Landroid/widget/RelativeLayout;
    .restart local v2       #res:I
    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    .end local v2           #res:I
    .restart local v6       #viewSim:Landroid/widget/RelativeLayout;
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 103
    .restart local v4       #simNumber:Landroid/widget/TextView;
    :cond_7
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setSimColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/phone/CheckSimPreference;->mSimColor:I

    .line 120
    return-void
.end method

.method public setSimIconNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/phone/CheckSimPreference;->mSimIconNumber:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/phone/CheckSimPreference;->mSimName:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSimNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/CheckSimPreference;->mSimNumber:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setSimSlot(I)V
    .locals 0
    .parameter "slot"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/phone/CheckSimPreference;->mSimSlot:I

    .line 124
    return-void
.end method
