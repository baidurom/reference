.class final Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalActionsDialog"
.end annotation


# instance fields
.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V
    .locals 3
    .parameter "context"
    .parameter "params"

    .prologue
    .line 1180
    invoke-static {p1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1181
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1182
    new-instance v0, Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 1183
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    .line 1184
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 1185
    return-void
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1188
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1189
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, #attr@alertDialogTheme#t

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1191
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1220
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v2, :cond_4

    .line 1221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1222
    .local v8, action:I
    if-nez v8, :cond_1

    .line 1223
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 1224
    .local v9, decor:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 1225
    .local v10, eventX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 1226
    .local v11, eventY:I
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    .line 1230
    :cond_0
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1234
    .end local v9           #decor:Landroid/view/View;
    .end local v10           #eventX:I
    .end local v11           #eventY:I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_6

    .line 1235
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1236
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_2

    .line 1237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1238
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1240
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1241
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    .end local v0           #now:J
    :cond_2
    if-ne v8, v13, :cond_4

    .line 1248
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_3

    .line 1249
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 1251
    :cond_3
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1252
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1256
    .end local v8           #action:I
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_5
    :goto_0
    return v2

    .line 1244
    .restart local v8       #action:I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1247
    if-ne v8, v13, :cond_5

    .line 1248
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_7

    .line 1249
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 1251
    :cond_7
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1252
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    goto :goto_0

    .line 1247
    :catchall_0
    move-exception v2

    if-ne v8, v13, :cond_9

    .line 1248
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_8

    .line 1249
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 1251
    :cond_8
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1252
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    :cond_9
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1265
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1266
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 1267
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    const/4 v0, 0x1

    .line 1274
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    const/4 v0, 0x1

    .line 1282
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1202
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1207
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1208
    return-void

    .line 1204
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1205
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    .line 1215
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1216
    return-void
.end method
