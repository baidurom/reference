.class Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEight:Landroid/widget/ImageButton;

.field private mFive:Landroid/widget/ImageButton;

.field private mFour:Landroid/widget/ImageButton;

.field private mNine:Landroid/widget/ImageButton;

.field private mOne:Landroid/widget/ImageButton;

.field private mSeven:Landroid/widget/ImageButton;

.field private mSix:Landroid/widget/ImageButton;

.field private mThree:Landroid/widget/ImageButton;

.field private mTwo:Landroid/widget/ImageButton;

.field private mZero:Landroid/widget/ImageButton;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    const v0, #id@zero#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    .line 1159
    const v0, #id@one#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    .line 1160
    const v0, #id@two#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    .line 1161
    const v0, #id@three#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    .line 1162
    const v0, #id@four#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    .line 1163
    const v0, #id@five#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    .line 1164
    const v0, #id@six#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    .line 1165
    const v0, #id@seven#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    .line 1166
    const v0, #id@eight#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    .line 1167
    const v0, #id@nine#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    .line 1168
    const v0, #id@cancel#t

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/ImageButton;

    .line 1170
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1171
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1175
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1177
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1178
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1179
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1144
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 1219
    const/4 v0, -0x1

    .line 1220
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mZero:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 1221
    const/4 v0, 0x0

    .line 1241
    :cond_0
    :goto_0
    return v0

    .line 1222
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mOne:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 1223
    const/4 v0, 0x1

    goto :goto_0

    .line 1224
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mTwo:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_3

    .line 1225
    const/4 v0, 0x2

    goto :goto_0

    .line 1226
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mThree:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_4

    .line 1227
    const/4 v0, 0x3

    goto :goto_0

    .line 1228
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFour:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_5

    .line 1229
    const/4 v0, 0x4

    goto :goto_0

    .line 1230
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mFive:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_6

    .line 1231
    const/4 v0, 0x5

    goto :goto_0

    .line 1232
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSix:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_7

    .line 1233
    const/4 v0, 0x6

    goto :goto_0

    .line 1234
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mSeven:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_8

    .line 1235
    const/4 v0, 0x7

    goto :goto_0

    .line 1236
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mEight:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_9

    .line 1237
    const/16 v0, 0x8

    goto :goto_0

    .line 1238
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mNine:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 1239
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1185
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_3

    .line 1186
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v4, v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1187
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v2, v3, v5, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    .line 1192
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-static {}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2800()I

    move-result v4

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->setSimLockScreenDone(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$2900(Lcom/android/internal/policy/impl/SimUnlockScreen;II)V

    .line 1193
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_pin_dismiss"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v1, t:Landroid/content/Intent;
    const-string v2, "simslot"

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$3000(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1199
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const/16 v3, 0x1f5

    invoke-virtual {v2, v3, v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;->sendVerifyResult(IZ)V

    .line 1200
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1201
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->DM_IsLocked()Z

    move-result v2

    if-ne v5, v2, :cond_2

    .line 1202
    const-string v2, "keyguard"

    const-string v3, "we clicked cancel button, DM is locked"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 1216
    .end local v1           #t:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 1189
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    iget v3, v3, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimId:I

    invoke-virtual {v2, v3, v6, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setPINDismiss(IZZ)V

    goto :goto_0

    .line 1205
    .restart local v1       #t:Landroid/content/Intent;
    :cond_2
    const-string v2, "keyguard"

    const-string v3, "we clicked cancel button"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_1

    .line 1211
    .end local v1           #t:Landroid/content/Intent;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 1212
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 1213
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 1214
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$3100(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V

    goto :goto_1
.end method
