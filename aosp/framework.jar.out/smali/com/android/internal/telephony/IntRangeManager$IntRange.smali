.class Lcom/android/internal/telephony/IntRangeManager$IntRange;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntRangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntRange"
.end annotation


# instance fields
.field final clients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IntRangeManager$ClientRange;",
            ">;"
        }
    .end annotation
.end field

.field endId:I

.field startId:I

.field final synthetic this$0:Lcom/android/internal/telephony/IntRangeManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "startId"
    .parameter "endId"
    .parameter "client"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 69
    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;-><init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 2
    .parameter
    .parameter "clientRange"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iget v0, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    iput v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 80
    iget v0, p2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->endId:I

    iput v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;Lcom/android/internal/telephony/IntRangeManager$IntRange;I)V
    .locals 3
    .parameter
    .parameter "intRange"
    .parameter "numElements"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iget v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    iput v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->startId:I

    .line 97
    iget v1, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    iput v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->endId:I

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    .line 99
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method insert(Lcom/android/internal/telephony/IntRangeManager$ClientRange;)V
    .locals 5
    .parameter "range"

    .prologue
    .line 114
    iget-object v3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 115
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 116
    iget-object v3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 117
    .local v2, nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    iget v3, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    iget v4, v2, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->startId:I

    if-gt v3, v4, :cond_1

    .line 119
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 126
    .end local v2           #nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_0
    :goto_1
    return-void

    .line 115
    .restart local v2       #nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v2           #nextRange:Lcom/android/internal/telephony/IntRangeManager$ClientRange;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IntRangeManager$IntRange;->clients:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
