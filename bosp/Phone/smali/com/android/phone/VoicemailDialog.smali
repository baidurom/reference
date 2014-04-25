.class public Lcom/android/phone/VoicemailDialog;
.super Landroid/app/Activity;
.source "VoicemailDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VoicemailDialog"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VoicemailDialog;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private getSimId(I)J
    .locals 3
    .parameter "slot"

    .prologue
    .line 140
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 141
    .local v0, info:Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_0

    .line 142
    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 144
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getSimInfo(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 15
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 149
    const-string v11, "VoicemailDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getSimInfo simId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static/range {p1 .. p3}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoById(Landroid/content/Context;J)Landroid/provider/Telephony$SIMInfo;

    move-result-object v10

    .line 152
    .local v10, simInfo:Landroid/provider/Telephony$SIMInfo;
    if-eqz v10, :cond_1

    .line 153
    iget-object v8, v10, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    .line 155
    .local v8, displayName:Ljava/lang/String;
    const-string v11, "VoicemailDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "=================================== SIMInfo simId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v10, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mDisplayName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/VoicemailDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b01a1

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, dialogText:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 184
    .end local v5           #dialogText:Ljava/lang/String;
    .end local v8           #displayName:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 161
    .restart local v5       #dialogText:Ljava/lang/String;
    .restart local v8       #displayName:Ljava/lang/String;
    :cond_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 171
    .local v6, dialogTextBuf:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 172
    .local v2, bgBeginPos:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int v3, v2, v11

    .line 174
    .local v3, bgEndPos:I
    iget v4, v10, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    .line 175
    .local v4, colorRes:I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v10, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 176
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v11, Lcom/mediatek/text/style/BackgroundImageSpan;

    iget v12, v10, Landroid/provider/Telephony$SIMInfo;->mSimBackgroundRes:I

    invoke-direct {v11, v12, v9}, Lcom/mediatek/text/style/BackgroundImageSpan;-><init>(ILandroid/graphics/drawable/Drawable;)V

    const/16 v12, 0x21

    invoke-virtual {v6, v11, v2, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 179
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const-string v12, "#ffffffff"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v12, 0x21

    invoke-virtual {v6, v11, v2, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 180
    new-instance v11, Landroid/text/style/StyleSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v12, 0x21

    invoke-virtual {v6, v11, v2, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    .line 181
    goto :goto_0

    .line 183
    .end local v2           #bgBeginPos:I
    .end local v3           #bgEndPos:I
    .end local v4           #colorRes:I
    .end local v5           #dialogText:Ljava/lang/String;
    .end local v6           #dialogTextBuf:Landroid/text/SpannableStringBuilder;
    .end local v8           #displayName:Ljava/lang/String;
    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VoicemailDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b01a1

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, dialogTextNoSimInfo:Ljava/lang/String;
    move-object v5, v7

    .line 184
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const-string v2, "VoicemailDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick() intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VoicemailDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v2, "voicemail:x"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, numberUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v0, IntentToDialer:Landroid/content/Intent;
    const-string v2, "simId"

    invoke-virtual {p0}, Lcom/android/phone/VoicemailDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "simId"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/phone/VoicemailDialog;->startActivity(Landroid/content/Intent;)V

    .line 197
    const-wide/16 v2, 0x5dc

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/VoicemailDialog;->finish()V

    goto :goto_0

    .line 205
    .end local v0           #IntentToDialer:Landroid/content/Intent;
    .end local v1           #numberUri:Landroid/net/Uri;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/VoicemailDialog;->finish()V

    goto :goto_0

    .line 198
    .restart local v0       #IntentToDialer:Landroid/content/Intent;
    .restart local v1       #numberUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x7f07013d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, -0x1

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/phone/VoicemailDialog;->requestWindowFeature(I)Z

    .line 75
    const v10, 0x7f040047

    invoke-virtual {p0, v10}, Lcom/android/phone/VoicemailDialog;->setContentView(I)V

    .line 77
    const v10, 0x7f0700dd

    invoke-virtual {p0, v10}, Lcom/android/phone/VoicemailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    .local v1, imageIcon:Landroid/widget/ImageView;
    const v10, 0x7f020207

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    const v10, 0x7f070139

    invoke-virtual {p0, v10}, Lcom/android/phone/VoicemailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 80
    .local v8, title:Landroid/widget/TextView;
    const v10, 0x7f0b036f

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/phone/VoicemailDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 82
    .local v9, window:Landroid/view/Window;
    const v10, 0x7f07013c

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, mMessageView:Landroid/widget/TextView;
    const v10, 0x7f07013d

    invoke-virtual {p0, v10}, Lcom/android/phone/VoicemailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 84
    .local v3, okButton:Landroid/widget/Button;
    const v10, 0x7f07013e

    invoke-virtual {p0, v10}, Lcom/android/phone/VoicemailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/phone/VoicemailDialog;->getIntent()Landroid/content/Intent;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/VoicemailDialog;->mIntent:Landroid/content/Intent;

    .line 87
    iget-object v10, p0, Lcom/android/phone/VoicemailDialog;->mIntent:Landroid/content/Intent;

    const-string v11, "simId"

    invoke-virtual {v10, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 88
    .local v7, slotId:I
    const-string v10, "VoicemailDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==============================================get slotId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-wide/16 v4, -0x1

    .line 112
    .local v4, simId:J
    const/4 v6, 0x0

    .line 113
    .local v6, simName:Ljava/lang/CharSequence;
    if-le v7, v13, :cond_0

    .line 114
    invoke-direct {p0, v7}, Lcom/android/phone/VoicemailDialog;->getSimId(I)J

    move-result-wide v4

    .line 115
    const-string v10, "VoicemailDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==============================================get simId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/VoicemailDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b01a1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 120
    const-string v10, "VoicemailDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==============================================get simName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method
