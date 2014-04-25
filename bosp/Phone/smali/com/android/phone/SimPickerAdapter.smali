.class public Lcom/android/phone/SimPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimPickerAdapter$1;,
        Lcom/android/phone/SimPickerAdapter$ItemHolder;,
        Lcom/android/phone/SimPickerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_ACCOUNT:I = 0x3

.field public static final ITEM_TYPE_INTERNET:I = 0x1

.field public static final ITEM_TYPE_SIM:I = 0x0

.field public static final ITEM_TYPE_TEXT:I = 0x2

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1


# instance fields
.field mContext:Landroid/content/Context;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/SimPickerAdapter$ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSuggestedSimId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter "suggestedSimId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/SimPickerAdapter$ItemHolder;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/SimPickerAdapter$ItemHolder;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/phone/SimPickerAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-wide p3, p0, Lcom/android/phone/SimPickerAdapter;->mSuggestedSimId:J

    .line 36
    iput-object p2, p0, Lcom/android/phone/SimPickerAdapter;->mItems:Ljava/util/List;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/phone/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    .line 58
    .local v0, itemHolder:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    iget v1, v0, Lcom/android/phone/SimPickerAdapter$ItemHolder;->type:I

    if-nez v1, :cond_0

    .line 59
    iget-object v1, v0, Lcom/android/phone/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    .line 60
    :cond_0
    iget v1, v0, Lcom/android/phone/SimPickerAdapter$ItemHolder;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 61
    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_1
    iget v1, v0, Lcom/android/phone/SimPickerAdapter$ItemHolder;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/android/phone/SimPickerAdapter$ItemHolder;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 63
    :cond_2
    iget-object v1, v0, Lcom/android/phone/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/android/phone/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    .line 53
    .local v0, itemHolder:Lcom/android/phone/SimPickerAdapter$ItemHolder;
    iget v1, v0, Lcom/android/phone/SimPickerAdapter$ItemHolder;->type:I

    return v1
.end method

.method protected getSimStatusIcon(I)I
    .locals 3
    .parameter "slot"

    .prologue
    .line 166
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v2

    .line 167
    .local v2, telephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-virtual {v2, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimIndicatorStateGemini(I)I

    move-result v1

    .line 168
    .local v1, state:I
    const/4 v0, 0x0

    .line 169
    .local v0, resourceId:I
    packed-switch v1, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    return v0

    .line 171
    :pswitch_1
    const v0, 0x202010e

    .line 172
    goto :goto_0

    .line 174
    :pswitch_2
    const v0, 0x2020121

    .line 175
    goto :goto_0

    .line 177
    :pswitch_3
    const v0, 0x2020126

    .line 178
    goto :goto_0

    .line 180
    :pswitch_4
    const v0, 0x2020128

    .line 181
    goto :goto_0

    .line 183
    :pswitch_5
    const v0, 0x2020107

    .line 184
    goto :goto_0

    .line 186
    :pswitch_6
    const v0, 0x20200fe

    .line 187
    goto :goto_0

    .line 189
    :pswitch_7
    const v0, 0x2020127

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 74
    move-object/from16 v8, p2

    .line 75
    .local v8, view:Landroid/view/View;
    const/4 v2, 0x0

    .line 76
    .local v2, holder:Lcom/android/phone/SimPickerAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/phone/SimPickerAdapter;->getItemViewType(I)I

    move-result v9

    .line 77
    .local v9, viewType:I
    if-nez v8, :cond_1

    .line 78
    iget-object v10, p0, Lcom/android/phone/SimPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 79
    .local v3, inflater:Landroid/view/LayoutInflater;
    new-instance v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;

    .end local v2           #holder:Lcom/android/phone/SimPickerAdapter$ViewHolder;
    const/4 v10, 0x0

    invoke-direct {v2, p0, v10}, Lcom/android/phone/SimPickerAdapter$ViewHolder;-><init>(Lcom/android/phone/SimPickerAdapter;Lcom/android/phone/SimPickerAdapter$1;)V

    .line 81
    .restart local v2       #holder:Lcom/android/phone/SimPickerAdapter$ViewHolder;
    if-nez v9, :cond_4

    .line 82
    const v10, 0x7f04003f

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 83
    const v10, 0x7f07011c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    .line 84
    const v10, 0x7f0700f8

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    .line 85
    const v10, 0x7f07011d

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    .line 86
    const v10, 0x7f07011f

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    .line 87
    const v10, 0x7f070027

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    .line 88
    const v10, 0x7f0700f7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    .line 89
    const v10, 0x7f07011e

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/TextView;

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {v8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/android/phone/SimPickerAdapter$ViewHolder;
    check-cast v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;

    .line 102
    .restart local v2       #holder:Lcom/android/phone/SimPickerAdapter$ViewHolder;
    if-nez v9, :cond_b

    .line 103
    iget-object v10, p0, Lcom/android/phone/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    iget-object v5, v10, Lcom/android/phone/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v5, Landroid/provider/Telephony$SIMInfo;

    .line 104
    .local v5, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mDisplayName:Landroid/widget/TextView;

    iget-object v11, v5, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSimIcon:Landroid/view/View;

    sget-object v11, Landroid/provider/Telephony;->SIMBackgroundRes:[I

    iget v12, v5, Landroid/provider/Telephony$SIMInfo;->mColor:I

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    iget-wide v10, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iget-wide v12, p0, Lcom/android/phone/SimPickerAdapter;->mSuggestedSimId:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    .line 108
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :goto_1
    :try_start_0
    const-string v4, ""

    .line 114
    .local v4, shortNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v6, v10, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 115
    .local v6, telephony:Lcom/android/phone/PhoneInterfaceManager;
    iget-object v10, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 116
    iget v10, v5, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    packed-switch v10, :pswitch_data_0

    .line 133
    :goto_2
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    iget-object v11, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_3
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    const-string v10, "OP02"

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getOptrProperties()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 143
    iget v10, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v11}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 144
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSimSignal:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v4           #shortNumber:Ljava/lang/String;
    .end local v6           #telephony:Lcom/android/phone/PhoneInterfaceManager;
    :cond_2
    :goto_4
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSimStatus:Landroid/widget/ImageView;

    iget v11, v5, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-virtual {p0, v11}, Lcom/android/phone/SimPickerAdapter;->getSimStatusIcon(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    .end local v5           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_3
    :goto_5
    return-object v8

    .line 90
    .restart local v3       #inflater:Landroid/view/LayoutInflater;
    :cond_4
    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 91
    const v10, 0x7f040040

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 92
    const v10, 0x7f070121

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mInternetIcon:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 93
    :cond_5
    const/4 v10, 0x2

    if-eq v9, v10, :cond_6

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 94
    :cond_6
    const v10, 0x7f040041

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 95
    const v10, 0x7f070122

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 110
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_7
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mSuggested:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 118
    .restart local v4       #shortNumber:Ljava/lang/String;
    .restart local v6       #telephony:Lcom/android/phone/PhoneInterfaceManager;
    :pswitch_0
    :try_start_1
    iget-object v10, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-gt v10, v11, :cond_8

    .line 119
    iget-object v4, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 121
    :cond_8
    iget-object v10, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 122
    goto/16 :goto_2

    .line 124
    :pswitch_1
    iget-object v10, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-gt v10, v11, :cond_9

    .line 125
    iget-object v4, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    goto/16 :goto_2

    .line 127
    :cond_9
    iget-object v10, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iget-object v11, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    iget-object v12, v5, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 128
    goto/16 :goto_2

    .line 130
    :pswitch_2
    const-string v4, ""

    goto/16 :goto_2

    .line 136
    :cond_a
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 147
    .end local v4           #shortNumber:Ljava/lang/String;
    .end local v6           #telephony:Lcom/android/phone/PhoneInterfaceManager;
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/Exception;
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mShortPhoneNumber:Landroid/widget/TextView;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 151
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #simInfo:Landroid/provider/Telephony$SIMInfo;
    :cond_b
    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    .line 152
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mInternetIcon:Landroid/widget/ImageView;

    const v11, 0x20200f5

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 153
    :cond_c
    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    .line 154
    iget-object v10, p0, Lcom/android/phone/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    iget-object v7, v10, Lcom/android/phone/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 155
    .local v7, text:Ljava/lang/String;
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 156
    .end local v7           #text:Ljava/lang/String;
    :cond_d
    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 157
    iget-object v10, p0, Lcom/android/phone/SimPickerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/phone/SimPickerAdapter$ItemHolder;

    iget-object v0, v10, Lcom/android/phone/SimPickerAdapter$ItemHolder;->data:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/Account;

    .line 158
    .local v0, account:Landroid/accounts/Account;
    iget-object v10, v2, Lcom/android/phone/SimPickerAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x4

    return v0
.end method
