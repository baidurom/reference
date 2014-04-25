.class public Lcom/android/phone/VTAdvancedSetting;
.super Landroid/preference/PreferenceActivity;
.source "VTAdvancedSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_VT_AUTO_DROPBACK_KEY:Ljava/lang/String; = "button_vt_auto_dropback_key"

.field private static final BUTTON_VT_CB_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_VT_CF_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_VT_ENABLE_BACK_CAMERA_KEY:Ljava/lang/String; = "button_vt_enable_back_camera_key"

.field private static final BUTTON_VT_ENABLE_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_enable_peer_replace_key"

.field private static final BUTTON_VT_MORE_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_VT_MO_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mo_local_video_display_key"

.field private static final BUTTON_VT_MT_LOCAL_VIDEO_DISPLAY_KEY:Ljava/lang/String; = "button_vt_mt_local_video_display_key"

.field private static final BUTTON_VT_PEER_BIGGER_KEY:Ljava/lang/String; = "button_vt_peer_bigger_key"

.field private static final BUTTON_VT_PEER_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_peer_expand_key"

.field private static final BUTTON_VT_REPLACE_KEY:Ljava/lang/String; = "button_vt_replace_expand_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/VTAdvancedSetting"

.field public static final NAME_PIC_TO_REPLACE_LOCAL_VIDEO_DEFAULT:Ljava/lang/String; = "pic_to_replace_local_video_default"

.field public static final NAME_PIC_TO_REPLACE_LOCAL_VIDEO_USERSELECT:Ljava/lang/String; = "pic_to_replace_local_video_userselect"

.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_DEFAULT:Ljava/lang/String; = "pic_to_replace_peer_video_default"

.field public static final NAME_PIC_TO_REPLACE_PEER_VIDEO_USERSELECT:Ljava/lang/String; = "pic_to_replace_peer_video_userselect"

.field public static final REQUESTCODE_PICTRUE_PICKED_WITH_DATA:I = 0xbcd

.field private static final SELECT_DEFAULT_PICTURE:Ljava/lang/String; = "0"

.field public static final SELECT_DEFAULT_PICTURE2:Ljava/lang/String; = "0"

.field private static final SELECT_MY_PICTURE:Ljava/lang/String; = "2"

.field public static final SELECT_MY_PICTURE2:Ljava/lang/String; = "1"

.field public static final VT_CARD_SLOT:I


# instance fields
.field isOnlyOneSim:Z

.field private mButtonCb:Landroid/preference/Preference;

.field private mButtonCf:Landroid/preference/Preference;

.field private mButtonMore:Landroid/preference/Preference;

.field private mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

.field private mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

.field private mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

.field private mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

.field private mButtonVTMtVideo:Landroid/preference/ListPreference;

.field private mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

.field private mButtonVTPeerReplace:Landroid/preference/ListPreference;

.field private mButtonVTReplace:Landroid/preference/ListPreference;

.field private mSimId:I

.field private mWhichToSave:I

.field private preCfr:Lcom/android/phone/PreCheckForRunning;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 53
    iput v1, p0, Lcom/android/phone/VTAdvancedSetting;->mWhichToSave:I

    .line 60
    iput v1, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    .line 73
    iput-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    .line 74
    iput-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    .line 75
    iput-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    .line 84
    iput-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 85
    iput-boolean v1, p0, Lcom/android/phone/VTAdvancedSetting;->isOnlyOneSim:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static getPicPathDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    const-string v0, "/data/data/com.android.phone/pic_to_replace_local_video_default.vt"

    return-object v0
.end method

.method public static getPicPathDefault2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const-string v0, "/data/data/com.android.phone/pic_to_replace_peer_video_default.vt"

    return-object v0
.end method

.method public static getPicPathUserselect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    const-string v0, "/data/data/com.android.phone/pic_to_replace_local_video_userselect.vt"

    return-object v0
.end method

.method public static getPicPathUserselect2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    const-string v0, "/data/data/com.android.phone/pic_to_replace_peer_video_userselect.vt"

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 88
    const-string v0, "Settings/VTAdvancedSetting"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method private showDialogDefaultPic(Ljava/lang/String;)V
    .locals 7
    .parameter "filename"

    .prologue
    const/4 v6, -0x2

    .line 236
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 237
    .local v2, mImg:Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 238
    .local v1, mBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 240
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 243
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 244
    .local v4, myBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 245
    const v5, 0x7f0b038a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 246
    const v5, 0x104000a

    new-instance v6, Lcom/android/phone/VTAdvancedSetting$1;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/VTAdvancedSetting$1;-><init>(Lcom/android/phone/VTAdvancedSetting;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 258
    .local v3, myAlertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 259
    return-void
.end method

.method private showDialogMyPic(Ljava/lang/String;)V
    .locals 7
    .parameter "filename"

    .prologue
    const/4 v6, -0x2

    .line 263
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 264
    .local v2, mImg2:Landroid/widget/ImageView;
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 265
    .local v1, mBitmap2:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 270
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v4, myBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 272
    const v5, 0x7f0b038c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 273
    const v5, 0x7f0b0395

    new-instance v6, Lcom/android/phone/VTAdvancedSetting$2;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/VTAdvancedSetting$2;-><init>(Lcom/android/phone/VTAdvancedSetting;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    const v5, 0x104000a

    new-instance v6, Lcom/android/phone/VTAdvancedSetting$3;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/VTAdvancedSetting$3;-><init>(Lcom/android/phone/VTAdvancedSetting;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 326
    .local v3, myAlertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 327
    return-void
.end method

.method private updateView(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 165
    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 204
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 206
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 211
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 212
    iget v2, p0, Lcom/android/phone/VTAdvancedSetting;->mWhichToSave:I

    if-nez v2, :cond_2

    .line 213
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 217
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Bitmap.isRecycled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_2
    iget v2, p0, Lcom/android/phone/VTAdvancedSetting;->mWhichToSave:I

    if-nez v2, :cond_3

    .line 225
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/VTCallUtils;->saveMyBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 221
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 227
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0xbcd
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v1, 0x7f050026

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->addPreferencesFromResource(I)V

    .line 97
    const-string v1, "3G_SWITCH"

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v1

    iput v1, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    .line 101
    :cond_0
    const-string v1, "button_vt_replace_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    .line 102
    iget-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    const-string v1, "button_vt_replace_peer_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    .line 104
    iget-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    new-instance v1, Lcom/android/phone/PreCheckForRunning;

    invoke-direct {v1, p0}, Lcom/android/phone/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    .line 108
    const-string v1, "button_cf_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    .line 109
    const-string v1, "button_cb_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    .line 110
    const-string v1, "button_more_expand_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    .line 111
    const-string v1, "button_vt_enable_peer_replace_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTEnablePeerReplace:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v1, "button_vt_mo_local_video_display_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTMoVideo:Landroid/preference/CheckBoxPreference;

    .line 113
    const-string v1, "button_vt_mt_local_video_display_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTMtVideo:Landroid/preference/ListPreference;

    .line 114
    const-string v1, "button_vt_enable_back_camera_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTEnablebackCamer:Landroid/preference/CheckBoxPreference;

    .line 115
    const-string v1, "button_vt_peer_bigger_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTPeerBigger:Landroid/preference/CheckBoxPreference;

    .line 116
    const-string v1, "button_vt_auto_dropback_key"

    invoke-virtual {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTAutoDropBack:Landroid/preference/CheckBoxPreference;

    .line 117
    invoke-static {}, Lcom/android/phone/CallSettings;->isMultipleSim()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-static {p0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 120
    iput-boolean v2, p0, Lcom/android/phone/VTAdvancedSetting;->isOnlyOneSim:Z

    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Telephony$SIMInfo;

    iget v1, v1, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v1, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    .line 128
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/VTAdvancedSetting;->isOnlyOneSim:Z

    .line 125
    iput v3, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    .line 126
    iget-object v4, p0, Lcom/android/phone/VTAdvancedSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget-boolean v1, p0, Lcom/android/phone/VTAdvancedSetting;->isOnlyOneSim:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, v4, Lcom/android/phone/PreCheckForRunning;->byPass:Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 378
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 379
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/android/phone/PreCheckForRunning;->deRegister()V

    .line 382
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTReplace:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 170
    invoke-static {}, Lcom/android/phone/VTCallUtils;->checkVTFile()V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/VTAdvancedSetting;->mWhichToSave:I

    .line 173
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string v0, " Picture for replacing local video -- selected DEFAULT PICTURE"

    invoke-static {v0}, Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return v2

    .line 177
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, " Picture for replacing local video -- selected MY PICTURE"

    invoke-static {v0}, Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonVTPeerReplace:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 183
    invoke-static {}, Lcom/android/phone/VTCallUtils;->checkVTFile()V

    .line 184
    iput v2, p0, Lcom/android/phone/VTAdvancedSetting;->mWhichToSave:I

    .line 186
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    const-string v0, " Picture for replacing peer video -- selected DEFAULT PICTURE"

    invoke-static {v0}, Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathDefault2()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTAdvancedSetting;->showDialogDefaultPic(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, " Picture for replacing peer video -- selected MY PICTURE"

    invoke-static {v0}, Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/android/phone/VTAdvancedSetting;->getPicPathUserselect2()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v4, 0x12e

    const/4 v1, 0x1

    .line 351
    iget-object v2, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string v2, "ISVT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 356
    iget-object v2, p0, Lcom/android/phone/VTAdvancedSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 374
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/CallBarring;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string v2, "ISVT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    iget-object v2, p0, Lcom/android/phone/VTAdvancedSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 365
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "simId"

    iget v3, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v2, "ISVT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    iget-object v2, p0, Lcom/android/phone/VTAdvancedSetting;->preCfr:Lcom/android/phone/PreCheckForRunning;

    iget v3, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/phone/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    goto :goto_0

    .line 374
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 133
    iget-boolean v3, p0, Lcom/android/phone/VTAdvancedSetting;->isOnlyOneSim:Z

    if-eqz v3, :cond_0

    .line 134
    iget v3, p0, Lcom/android/phone/VTAdvancedSetting;->mSimId:I

    invoke-static {v3}, Lcom/android/phone/CallSettings;->isRadioOn(I)Z

    move-result v2

    .line 135
    .local v2, isRadioOn:Z
    if-nez v2, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCf:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 137
    iget-object v3, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonCb:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 138
    iget-object v3, p0, Lcom/android/phone/VTAdvancedSetting;->mButtonMore:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 141
    .end local v2           #isRadioOn:Z
    :cond_0
    const/4 v1, 0x0

    .line 142
    .local v1, is3GEnable:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v0

    .line 143
    .local v0, Capability3G:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-nez v0, :cond_2

    .line 144
    :cond_1
    const/4 v1, 0x1

    .line 146
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/phone/VTAdvancedSetting;->updateView(Z)V

    .line 147
    return-void
.end method
