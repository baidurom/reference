.class Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;
.super Ljava/lang/Object;
.source "SmartMultiUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cell"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mHasNotifier:Z

.field private mID:I

.field private mLeftX:F

.field private mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

.field private mNotifierDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

.field private mNotifierText:Ljava/lang/String;

.field private mTopY:F

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;FFZLjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "normal"
    .parameter "notifier"
    .parameter "leftX"
    .parameter "topY"
    .parameter "hasNotifier"
    .parameter "notifyText"
    .parameter "id"
    .parameter "description"

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->this$0:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mHasNotifier:Z

    .line 1134
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    .line 1135
    iput-object p3, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    .line 1136
    iput-object p7, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierText:Ljava/lang/String;

    .line 1137
    iput p8, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mID:I

    .line 1138
    iput-object p9, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mDescription:Ljava/lang/String;

    .line 1139
    invoke-virtual {p0, p4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setX(F)V

    .line 1140
    invoke-virtual {p0, p5}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setY(F)V

    .line 1141
    invoke-virtual {p0, p6}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->setHasNotifier(Z)V

    .line 1142
    return-void
.end method


# virtual methods
.method public getHasNotifier()Z
    .locals 1

    .prologue
    .line 1161
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mHasNotifier:Z

    return v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mID:I

    return v0
.end method

.method public getNormalDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    return-object v0
.end method

.method public getNotifierDrawable()Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    return-object v0
.end method

.method public getNotifyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierText:Ljava/lang/String;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mLeftX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mTopY:F

    return v0
.end method

.method public setHasNotifier(Z)V
    .locals 2
    .parameter "bHasNotifier"

    .prologue
    .line 1165
    if-eqz p1, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    .line 1170
    :goto_0
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mHasNotifier:Z

    .line 1171
    return-void

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    sget-object v1, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setState([I)V

    goto :goto_0
.end method

.method public setNormalDrawable(Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;)V
    .locals 0
    .parameter "newNormal"

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    .line 1150
    return-void
.end method

.method public setNotifierDrawable(Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;)V
    .locals 0
    .parameter "newNotifier"

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    .line 1158
    return-void
.end method

.method public setNotifyText(Ljava/lang/String;)V
    .locals 0
    .parameter "newText"

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierText:Ljava/lang/String;

    .line 1175
    return-void
.end method

.method public setX(F)V
    .locals 3
    .parameter "x"

    .prologue
    .line 1186
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mLeftX:F

    .line 1187
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setX(F)V

    .line 1188
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setX(F)V

    .line 1189
    return-void
.end method

.method public setY(F)V
    .locals 3
    .parameter "y"

    .prologue
    .line 1196
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mTopY:F

    .line 1197
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setY(F)V

    .line 1198
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNormalDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView$Cell;->mNotifierDrawable:Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/SmartTargetDrawable;->setY(F)V

    .line 1199
    return-void
.end method
