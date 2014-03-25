.class public abstract Landroid/filterfw/core/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# static fields
.field static final STATUS_ERROR:I = 0x6

.field static final STATUS_FINISHED:I = 0x5

.field static final STATUS_PREINIT:I = 0x0

.field static final STATUS_PREPARED:I = 0x2

.field static final STATUS_PROCESSING:I = 0x3

.field static final STATUS_RELEASED:I = 0x7

.field static final STATUS_SLEEPING:I = 0x4

.field static final STATUS_UNPREPARED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Filter"


# instance fields
.field private mCurrentTimestamp:J

.field private mFramesToRelease:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mFramesToSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mInputCount:I

.field private mInputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/InputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOpen:Z

.field private mLogVerbose:Z

.field private mName:Ljava/lang/String;

.field private mOutputCount:I

.field private mOutputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/filterfw/core/OutputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mSleepDelay:I

.field private mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Landroid/filterfw/core/Filter;->mInputCount:I

    .line 60
    iput v0, p0, Landroid/filterfw/core/Filter;->mOutputCount:I

    .line 68
    iput v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 69
    iput-boolean v1, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    .line 78
    iput-object p1, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mFramesToSet:Ljava/util/HashMap;

    .line 81
    iput v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 83
    const-string v0, "Filter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    .line 84
    return-void
.end method

.method private final addAndSetFinalPorts(Landroid/filterfw/core/KeyValueMap;)V
    .locals 12
    .parameter "values"

    .prologue
    .line 570
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 572
    .local v3, filterClass:Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/reflect/Field;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v2, v1, v6

    .line 573
    .local v2, field:Ljava/lang/reflect/Field;
    const-class v9, Landroid/filterfw/core/GenerateFinalPort;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, annotation:Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 574
    check-cast v4, Landroid/filterfw/core/GenerateFinalPort;

    .line 575
    .local v4, generator:Landroid/filterfw/core/GenerateFinalPort;
    invoke-interface {v4}, Landroid/filterfw/core/GenerateFinalPort;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 576
    .local v8, name:Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Landroid/filterfw/core/GenerateFinalPort;->hasDefault()Z

    move-result v5

    .line 577
    .local v5, hasDefault:Z
    const/4 v9, 0x1

    invoke-virtual {p0, v8, v2, v5, v9}, Landroid/filterfw/core/Filter;->addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V

    .line 578
    invoke-virtual {p1, v8}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 579
    invoke-virtual {p1, v8}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Landroid/filterfw/core/Filter;->setImmediateInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    invoke-virtual {p1, v8}, Landroid/filterfw/core/KeyValueMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v4           #generator:Landroid/filterfw/core/GenerateFinalPort;
    .end local v5           #hasDefault:Z
    .end local v8           #name:Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 575
    .restart local v4       #generator:Landroid/filterfw/core/GenerateFinalPort;
    :cond_1
    invoke-interface {v4}, Landroid/filterfw/core/GenerateFinalPort;->name()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 581
    .restart local v5       #hasDefault:Z
    .restart local v8       #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v4}, Landroid/filterfw/core/GenerateFinalPort;->hasDefault()Z

    move-result v9

    if-nez v9, :cond_0

    .line 582
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No value specified for final input port \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' of filter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 587
    .end local v0           #annotation:Ljava/lang/annotation/Annotation;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v4           #generator:Landroid/filterfw/core/GenerateFinalPort;
    .end local v5           #hasDefault:Z
    .end local v8           #name:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final addAnnotatedPorts()V
    .locals 12

    .prologue
    .line 590
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 592
    .local v4, filterClass:Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/reflect/Field;
    array-length v9, v1

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v1           #arr$:[Ljava/lang/reflect/Field;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v3, v1, v8

    .line 593
    .local v3, field:Ljava/lang/reflect/Field;
    const-class v11, Landroid/filterfw/core/GenerateFieldPort;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .local v0, annotation:Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_1

    move-object v5, v0

    .line 594
    check-cast v5, Landroid/filterfw/core/GenerateFieldPort;

    .line 595
    .local v5, generator:Landroid/filterfw/core/GenerateFieldPort;
    invoke-direct {p0, v5, v3}, Landroid/filterfw/core/Filter;->addFieldGenerator(Landroid/filterfw/core/GenerateFieldPort;Ljava/lang/reflect/Field;)V

    .line 592
    .end local v5           #generator:Landroid/filterfw/core/GenerateFieldPort;
    .end local v8           #i$:I
    :cond_0
    :goto_1
    add-int/lit8 v7, v8, 0x1

    .restart local v7       #i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 596
    :cond_1
    const-class v11, Landroid/filterfw/core/GenerateProgramPort;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v5, v0

    .line 597
    check-cast v5, Landroid/filterfw/core/GenerateProgramPort;

    .line 598
    .local v5, generator:Landroid/filterfw/core/GenerateProgramPort;
    invoke-direct {p0, v5, v3}, Landroid/filterfw/core/Filter;->addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V

    goto :goto_1

    .line 599
    .end local v5           #generator:Landroid/filterfw/core/GenerateProgramPort;
    :cond_2
    const-class v11, Landroid/filterfw/core/GenerateProgramPorts;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v6, v0

    .line 600
    check-cast v6, Landroid/filterfw/core/GenerateProgramPorts;

    .line 601
    .local v6, generators:Landroid/filterfw/core/GenerateProgramPorts;
    invoke-interface {v6}, Landroid/filterfw/core/GenerateProgramPorts;->value()[Landroid/filterfw/core/GenerateProgramPort;

    move-result-object v2

    .local v2, arr$:[Landroid/filterfw/core/GenerateProgramPort;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_2
    if-ge v7, v10, :cond_0

    aget-object v5, v2, v7

    .line 602
    .restart local v5       #generator:Landroid/filterfw/core/GenerateProgramPort;
    invoke-direct {p0, v5, v3}, Landroid/filterfw/core/Filter;->addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V

    .line 601
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 606
    .end local v0           #annotation:Ljava/lang/annotation/Annotation;
    .end local v2           #arr$:[Landroid/filterfw/core/GenerateProgramPort;
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v5           #generator:Landroid/filterfw/core/GenerateProgramPort;
    .end local v6           #generators:Landroid/filterfw/core/GenerateProgramPorts;
    .end local v7           #i$:I
    .end local v10           #len$:I
    .restart local v8       #i$:I
    :cond_3
    return-void
.end method

.method private final addFieldGenerator(Landroid/filterfw/core/GenerateFieldPort;Ljava/lang/reflect/Field;)V
    .locals 3
    .parameter "generator"
    .parameter "field"

    .prologue
    .line 609
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, name:Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->hasDefault()Z

    move-result v0

    .line 611
    .local v0, hasDefault:Z
    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v0, v2}, Landroid/filterfw/core/Filter;->addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V

    .line 612
    return-void

    .line 609
    .end local v0           #hasDefault:Z
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateFieldPort;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final addProgramGenerator(Landroid/filterfw/core/GenerateProgramPort;Ljava/lang/reflect/Field;)V
    .locals 6
    .parameter "generator"
    .parameter "field"

    .prologue
    .line 615
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->name()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, name:Ljava/lang/String;
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->variableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, v1

    .line 618
    .local v2, varName:Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->type()Ljava/lang/Class;

    move-result-object v4

    .line 619
    .local v4, varType:Ljava/lang/Class;
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->hasDefault()Z

    move-result v5

    .local v5, hasDefault:Z
    move-object v0, p0

    move-object v3, p2

    .line 620
    invoke-virtual/range {v0 .. v5}, Landroid/filterfw/core/Filter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V

    .line 621
    return-void

    .line 616
    .end local v2           #varName:Ljava/lang/String;
    .end local v4           #varType:Ljava/lang/Class;
    .end local v5           #hasDefault:Z
    :cond_0
    invoke-interface {p1}, Landroid/filterfw/core/GenerateProgramPort;->variableName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private final closePorts()V
    .locals 6

    .prologue
    .line 694
    iget-boolean v3, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v3, :cond_0

    const-string v3, "Filter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing all ports on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 696
    .local v1, inputPort:Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->close()V

    goto :goto_0

    .line 698
    .end local v1           #inputPort:Landroid/filterfw/core/InputPort;
    :cond_1
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/OutputPort;

    .line 699
    .local v2, outputPort:Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->close()V

    goto :goto_1

    .line 701
    .end local v2           #outputPort:Landroid/filterfw/core/OutputPort;
    :cond_2
    return-void
.end method

.method private final filterMustClose()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 704
    iget-object v4, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 705
    .local v1, inputPort:Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->filterMustClose()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 706
    iget-boolean v4, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v4, :cond_1

    const-string v4, "Filter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must close due to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .end local v1           #inputPort:Landroid/filterfw/core/InputPort;
    :cond_1
    :goto_0
    return v3

    .line 710
    :cond_2
    iget-object v4, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/OutputPort;

    .line 711
    .local v2, outputPort:Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->filterMustClose()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 712
    iget-boolean v4, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v4, :cond_1

    const-string v4, "Filter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must close due to port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 716
    .end local v2           #outputPort:Landroid/filterfw/core/OutputPort;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private final initFinalPorts(Landroid/filterfw/core/KeyValueMap;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    .line 559
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    .line 560
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->addAndSetFinalPorts(Landroid/filterfw/core/KeyValueMap;)V

    .line 561
    return-void
.end method

.method private final initRemainingPorts(Landroid/filterfw/core/KeyValueMap;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 564
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->addAnnotatedPorts()V

    .line 565
    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->setupPorts()V

    .line 566
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->setInitialInputValues(Landroid/filterfw/core/KeyValueMap;)V

    .line 567
    return-void
.end method

.method private final inputConditionsMet()Z
    .locals 5

    .prologue
    .line 674
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 675
    .local v1, port:Landroid/filterfw/core/FilterPort;
    invoke-virtual {v1}, Landroid/filterfw/core/FilterPort;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 676
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input condition not met: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_1
    const/4 v2, 0x0

    .line 680
    .end local v1           #port:Landroid/filterfw/core/FilterPort;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static final isAvailable(Ljava/lang/String;)Z
    .locals 5
    .parameter "filterName"

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 94
    .local v0, contextClassLoader:Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 100
    .local v2, filterClass:Ljava/lang/Class;
    :try_start_1
    const-class v4, Landroid/filterfw/core/Filter;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    const/4 v3, 0x1

    .end local v2           #filterClass:Ljava/lang/Class;
    :goto_0
    return v3

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 101
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v2       #filterClass:Ljava/lang/Class;
    :catch_1
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method private final outputConditionsMet()Z
    .locals 5

    .prologue
    .line 684
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 685
    .local v1, port:Landroid/filterfw/core/FilterPort;
    invoke-virtual {v1}, Landroid/filterfw/core/FilterPort;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 686
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output condition not met: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_1
    const/4 v2, 0x0

    .line 690
    .end local v1           #port:Landroid/filterfw/core/FilterPort;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private postProcess()V
    .locals 4

    .prologue
    .line 745
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 746
    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postProcess() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v1, "debug.effect.processout.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, processout:Ljava/lang/String;
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 749
    invoke-static {}, Landroid/filterfw/core/Frame;->wait3DReady()V

    .line 750
    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postProcess() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " glReadPixels done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v0           #processout:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private preProcess()V
    .locals 4

    .prologue
    .line 734
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 735
    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preProcess() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v1, "debug.effect.processin.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, processin:Ljava/lang/String;
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 738
    invoke-static {}, Landroid/filterfw/core/Frame;->wait3DReady()V

    .line 739
    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preProcess() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " glReadPixels done"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v0           #processin:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private final releasePulledFrames(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 667
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/Frame;

    .line 668
    .local v0, frame:Landroid/filterfw/core/Frame;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/filterfw/core/FrameManager;->releaseFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    goto :goto_0

    .line 670
    .end local v0           #frame:Landroid/filterfw/core/Frame;
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 671
    return-void
.end method

.method private saveOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 4
    .parameter "name"
    .parameter "frame"

    .prologue
    .line 721
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_1

    .line 722
    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveOutput() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v1, "debug.effect.save.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, string:Ljava/lang/String;
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 725
    :cond_0
    instance-of v1, p2, Landroid/filterfw/core/GLFrame;

    if-eqz v1, :cond_1

    .line 726
    invoke-static {}, Landroid/filterfw/core/Frame;->wait3DReady()V

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/filterfw/core/Frame;->saveFrame(Ljava/lang/String;)V

    .line 731
    .end local v0           #string:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private final setImmediateInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 630
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting immediate value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 632
    .local v0, port:Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 633
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/filterfw/core/SimpleFrame;->wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SimpleFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterPort;->setFrame(Landroid/filterfw/core/Frame;)V

    .line 634
    return-void
.end method

.method private final setInitialInputValues(Landroid/filterfw/core/KeyValueMap;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 624
    invoke-virtual {p1}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 625
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 627
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private final transferInputFrames(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 637
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 638
    .local v1, inputPort:Landroid/filterfw/core/InputPort;
    invoke-virtual {v1, p1}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    goto :goto_0

    .line 640
    .end local v1           #inputPort:Landroid/filterfw/core/InputPort;
    :cond_0
    return-void
.end method

.method private final wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;
    .locals 7
    .parameter "inputName"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 643
    invoke-static {p2, v4}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 644
    .local v1, inputFormat:Landroid/filterfw/core/MutableFrameFormat;
    if-nez p2, :cond_0

    .line 647
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v6

    invoke-virtual {v6}, Landroid/filterfw/core/InputPort;->getPortFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 648
    .local v3, portFormat:Landroid/filterfw/core/FrameFormat;
    if-nez v3, :cond_1

    move-object v2, v5

    .line 649
    .local v2, portClass:Ljava/lang/Class;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    .line 653
    .end local v2           #portClass:Ljava/lang/Class;
    .end local v3           #portFormat:Landroid/filterfw/core/FrameFormat;
    :cond_0
    instance-of v6, p2, Ljava/lang/Number;

    if-nez v6, :cond_2

    instance-of v6, p2, Ljava/lang/Boolean;

    if-nez v6, :cond_2

    instance-of v6, p2, Ljava/lang/String;

    if-nez v6, :cond_2

    instance-of v6, p2, Ljava/io/Serializable;

    if-eqz v6, :cond_2

    .line 659
    .local v4, shouldSerialize:Z
    :goto_1
    if-eqz v4, :cond_3

    new-instance v0, Landroid/filterfw/core/SerializedFrame;

    invoke-direct {v0, v1, v5}, Landroid/filterfw/core/SerializedFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    .line 662
    .local v0, frame:Landroid/filterfw/core/Frame;
    :goto_2
    invoke-virtual {v0, p2}, Landroid/filterfw/core/Frame;->setObjectValue(Ljava/lang/Object;)V

    .line 663
    return-object v0

    .line 648
    .end local v0           #frame:Landroid/filterfw/core/Frame;
    .end local v4           #shouldSerialize:Z
    .restart local v3       #portFormat:Landroid/filterfw/core/FrameFormat;
    :cond_1
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 653
    .end local v3           #portFormat:Landroid/filterfw/core/FrameFormat;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 659
    .restart local v4       #shouldSerialize:Z
    :cond_3
    new-instance v0, Landroid/filterfw/core/SimpleFrame;

    invoke-direct {v0, v1, v5}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    goto :goto_2
.end method


# virtual methods
.method protected addFieldPort(Ljava/lang/String;Ljava/lang/reflect/Field;ZZ)V
    .locals 6
    .parameter "name"
    .parameter "field"
    .parameter "hasDefault"
    .parameter "isFinal"

    .prologue
    const/4 v5, 0x1

    .line 365
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 368
    if-eqz p4, :cond_1

    new-instance v0, Landroid/filterfw/core/FinalPort;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/filterfw/core/FinalPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 373
    .local v0, fieldPort:Landroid/filterfw/core/InputPort;
    :goto_0
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    .line 376
    .local v1, format:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v1}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 379
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    return-void

    .line 368
    .end local v0           #fieldPort:Landroid/filterfw/core/InputPort;
    .end local v1           #format:Landroid/filterfw/core/MutableFrameFormat;
    :cond_1
    new-instance v0, Landroid/filterfw/core/FieldPort;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/filterfw/core/FieldPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    goto :goto_0
.end method

.method protected addInputPort(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 309
    return-void
.end method

.method protected addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .locals 4
    .parameter "name"
    .parameter "formatMask"

    .prologue
    .line 320
    new-instance v0, Landroid/filterfw/core/StreamPort;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/StreamPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 321
    .local v0, port:Landroid/filterfw/core/InputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 324
    return-void
.end method

.method protected addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "outputName"
    .parameter "inputName"

    .prologue
    .line 354
    new-instance v0, Landroid/filterfw/core/OutputPort;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/OutputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 355
    .local v0, port:Landroid/filterfw/core/OutputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    invoke-virtual {p0, p2}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/OutputPort;->setBasePort(Landroid/filterfw/core/InputPort;)V

    .line 357
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    return-void
.end method

.method protected addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V
    .locals 4
    .parameter "name"
    .parameter "format"

    .prologue
    .line 336
    new-instance v0, Landroid/filterfw/core/OutputPort;

    invoke-direct {v0, p0, p1}, Landroid/filterfw/core/OutputPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V

    .line 337
    .local v0, port:Landroid/filterfw/core/OutputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 339
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    return-void
.end method

.method protected addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    .locals 8
    .parameter "name"
    .parameter "varName"
    .parameter "field"
    .parameter "varType"
    .parameter "hasDefault"

    .prologue
    const/4 v7, 0x1

    .line 388
    invoke-virtual {p3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 391
    new-instance v0, Landroid/filterfw/core/ProgramPort;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/filterfw/core/ProgramPort;-><init>(Landroid/filterfw/core/Filter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Z)V

    .line 394
    .local v0, programPort:Landroid/filterfw/core/InputPort;
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    invoke-static {p4, v7}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v6

    .line 397
    .local v6, format:Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v6}, Landroid/filterfw/core/InputPort;->setPortFormat(Landroid/filterfw/core/FrameFormat;)V

    .line 400
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void
.end method

.method final declared-synchronized canProcess()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 509
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking if can process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/filterfw/core/Filter;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    iget v1, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 511
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->inputConditionsMet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/filterfw/core/Filter;->outputConditionsMet()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 513
    :cond_1
    monitor-exit p0

    return v0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final clearInputs()V
    .locals 3

    .prologue
    .line 527
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 528
    .local v1, inputPort:Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->clear()V

    goto :goto_0

    .line 530
    .end local v1           #inputPort:Landroid/filterfw/core/InputPort;
    :cond_0
    return-void
.end method

.method final clearOutputs()V
    .locals 3

    .prologue
    .line 533
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 534
    .local v1, outputPort:Landroid/filterfw/core/OutputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->clear()V

    goto :goto_0

    .line 536
    .end local v1           #outputPort:Landroid/filterfw/core/OutputPort;
    :cond_0
    return-void
.end method

.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 194
    return-void
.end method

.method protected closeOutputPort(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/OutputPort;->close()V

    .line 405
    return-void
.end method

.method protected delayNextProcess(I)V
    .locals 1
    .parameter "millisecs"

    .prologue
    .line 169
    iput p1, p0, Landroid/filterfw/core/Filter;->mSleepDelay:I

    .line 170
    const/4 v0, 0x4

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 171
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "name"
    .parameter "context"

    .prologue
    .line 275
    return-void
.end method

.method public getFilterClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;
    .locals 2
    .parameter "portName"

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 181
    .local v0, inputPort:Landroid/filterfw/core/InputPort;
    invoke-virtual {v0}, Landroid/filterfw/core/InputPort;->getSourceFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    return-object v1
.end method

.method public final getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;
    .locals 4
    .parameter "portName"

    .prologue
    .line 228
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to access input port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before Filter has been initialized!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/InputPort;

    .line 233
    .local v0, result:Landroid/filterfw/core/InputPort;
    if-nez v0, :cond_1

    .line 234
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown input port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_1
    return-object v0
.end method

.method final getInputPorts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/filterfw/core/InputPort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumberOfConnectedInputs()I
    .locals 4

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, c:I
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/InputPort;

    .line 202
    .local v2, inputPort:Landroid/filterfw/core/InputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/InputPort;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v2           #inputPort:Landroid/filterfw/core/InputPort;
    :cond_1
    return v0
.end method

.method public final getNumberOfConnectedOutputs()I
    .locals 4

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, c:I
    iget-object v3, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/OutputPort;

    .line 212
    .local v2, outputPort:Landroid/filterfw/core/OutputPort;
    invoke-virtual {v2}, Landroid/filterfw/core/OutputPort;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v2           #outputPort:Landroid/filterfw/core/OutputPort;
    :cond_1
    return v0
.end method

.method public final getNumberOfInputs()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getNumberOfOutputs()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1
    .parameter "portName"
    .parameter "inputFormat"

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;
    .locals 4
    .parameter "portName"

    .prologue
    .line 241
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to access output port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before Filter has been initialized!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/OutputPort;

    .line 246
    .local v0, result:Landroid/filterfw/core/OutputPort;
    if-nez v0, :cond_1

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown output port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_1
    return-object v0
.end method

.method final getOutputPorts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/filterfw/core/OutputPort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getSleepDelay()I
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0xfa

    return v0
.end method

.method final declared-synchronized getStatus()I
    .locals 1

    .prologue
    .line 442
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/core/ProtocolException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 135
    .local v0, valueMap:Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V

    .line 136
    return-void
.end method

.method protected initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "program"
    .parameter "context"

    .prologue
    .line 290
    if-eqz p1, :cond_1

    .line 291
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mInputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/InputPort;

    .line 292
    .local v1, inputPort:Landroid/filterfw/core/InputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->getTarget()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 293
    invoke-virtual {v1, p2}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    goto :goto_0

    .line 297
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #inputPort:Landroid/filterfw/core/InputPort;
    :cond_1
    return-void
.end method

.method public final varargs initWithAssignmentList([Ljava/lang/Object;)V
    .locals 1
    .parameter "keyValues"

    .prologue
    .line 128
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 129
    .local v0, valueMap:Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V

    .line 131
    return-void
.end method

.method public final initWithAssignmentString(Ljava/lang/String;)V
    .locals 4
    .parameter "assignments"

    .prologue
    .line 120
    :try_start_0
    new-instance v2, Landroid/filterfw/io/TextGraphReader;

    invoke-direct {v2}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    invoke-virtual {v2, p1}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v1

    .line 121
    .local v1, valueMap:Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {p0, v1}, Landroid/filterfw/core/Filter;->initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-void

    .line 122
    .end local v1           #valueMap:Landroid/filterfw/core/KeyValueMap;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/filterfw/io/GraphIOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/filterfw/io/GraphIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final initWithValueMap(Landroid/filterfw/core/KeyValueMap;)V
    .locals 1
    .parameter "valueMap"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->initFinalPorts(Landroid/filterfw/core/KeyValueMap;)V

    .line 112
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->initRemainingPorts(Landroid/filterfw/core/KeyValueMap;)V

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 116
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    return v0
.end method

.method final notifyFieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .parameter "name"
    .parameter "context"

    .prologue
    .line 539
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 540
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/Filter;->fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V

    .line 542
    :cond_1
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 185
    return-void
.end method

.method final openOutputs()V
    .locals 5

    .prologue
    .line 518
    iget-boolean v2, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "Filter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening all output ports on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    iget-object v2, p0, Landroid/filterfw/core/Filter;->mOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/core/OutputPort;

    .line 520
    .local v1, outputPort:Landroid/filterfw/core/OutputPort;
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    invoke-virtual {v1}, Landroid/filterfw/core/OutputPort;->open()V

    goto :goto_0

    .line 524
    .end local v1           #outputPort:Landroid/filterfw/core/OutputPort;
    :cond_2
    return-void
.end method

.method protected parametersUpdated(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, updated:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method final declared-synchronized performClose(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    if-eqz v0, :cond_1

    .line 492
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    .line 494
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 495
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->close(Landroid/filterfw/core/FilterContext;)V

    .line 496
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->closePorts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    :cond_1
    monitor-exit p0

    return-void

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized performOpen(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 450
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z

    if-nez v0, :cond_5

    .line 451
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    if-ne v0, v1, :cond_1

    .line 452
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->prepare(Landroid/filterfw/core/FilterContext;)V

    .line 454
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 456
    :cond_1
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    if-ne v0, v3, :cond_3

    .line 457
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_2
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->open(Landroid/filterfw/core/FilterContext;)V

    .line 459
    const/4 v0, 0x3

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    .line 461
    :cond_3
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    if-eq v0, v4, :cond_4

    .line 462
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was brought into invalid state during "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "opening (state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/core/Filter;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 465
    :cond_4
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/filterfw/core/Filter;->mIsOpen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :cond_5
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized performProcess(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->preProcess()V

    .line 472
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already torn down!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 475
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->transferInputFrames(Landroid/filterfw/core/FilterContext;)V

    .line 476
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 477
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performOpen(Landroid/filterfw/core/FilterContext;)V

    .line 479
    :cond_1
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    .line 481
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->process(Landroid/filterfw/core/FilterContext;)V

    .line 482
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;->releasePulledFrames(Landroid/filterfw/core/FilterContext;)V

    .line 483
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->filterMustClose()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    .line 487
    :cond_3
    invoke-direct {p0}, Landroid/filterfw/core/Filter;->postProcess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    monitor-exit p0

    return-void
.end method

.method final declared-synchronized performTearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x7

    .line 501
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    .line 502
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    if-eq v0, v1, :cond_0

    .line 503
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 504
    const/4 v0, 0x7

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_0
    monitor-exit p0

    return-void

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 163
    return-void
.end method

.method public abstract process(Landroid/filterfw/core/FilterContext;)V
.end method

.method protected final pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;
    .locals 5
    .parameter "name"

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/InputPort;->pullFrame()Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 264
    .local v0, result:Landroid/filterfw/core/Frame;
    iget-wide v1, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    .line 266
    iget-boolean v1, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "Filter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default-setting current timestamp from input port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/Filter;->mFramesToRelease:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    return-object v0
.end method

.method final declared-synchronized pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 2
    .parameter "inputName"
    .parameter "frame"

    .prologue
    .line 545
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 546
    .local v0, port:Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 549
    :cond_0
    invoke-virtual {v0, p2}, Landroid/filterfw/core/FilterPort;->pushFrame(Landroid/filterfw/core/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    .line 545
    .end local v0           #port:Landroid/filterfw/core/FilterPort;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final declared-synchronized pushInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "inputName"
    .parameter "value"

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Filter;->wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    monitor-exit p0

    return-void

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 4
    .parameter "name"
    .parameter "frame"

    .prologue
    .line 254
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 255
    iget-boolean v0, p0, Landroid/filterfw/core/Filter;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "Filter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default-setting output Frame timestamp on port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-wide v0, p0, Landroid/filterfw/core/Filter;->mCurrentTimestamp:J

    invoke-virtual {p2, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 258
    :cond_1
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->pushFrame(Landroid/filterfw/core/Frame;)V

    .line 259
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Filter;->saveOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 260
    return-void
.end method

.method public setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 2
    .parameter "inputName"
    .parameter "frame"

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    .line 152
    .local v0, port:Landroid/filterfw/core/FilterPort;
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/filterfw/core/FilterPort;->open()V

    .line 155
    :cond_0
    invoke-virtual {v0, p2}, Landroid/filterfw/core/FilterPort;->setFrame(Landroid/filterfw/core/Frame;)V

    .line 156
    return-void
.end method

.method public final setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "inputName"
    .parameter "value"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Filter;->wrapInputValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/Filter;->setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 160
    return-void
.end method

.method protected setWaitsOnInputPort(Ljava/lang/String;Z)V
    .locals 1
    .parameter "portName"
    .parameter "waits"

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->setBlocking(Z)V

    .line 416
    return-void
.end method

.method protected setWaitsOnOutputPort(Ljava/lang/String;Z)V
    .locals 1
    .parameter "portName"
    .parameter "waits"

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getOutputPort(Ljava/lang/String;)Landroid/filterfw/core/OutputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/OutputPort;->setBlocking(Z)V

    .line 426
    return-void
.end method

.method public abstract setupPorts()V
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 197
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/Filter;->getFilterClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transferInputPortFrame(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .parameter "name"
    .parameter "context"

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->getInputPort(Ljava/lang/String;)Landroid/filterfw/core/InputPort;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/filterfw/core/InputPort;->transfer(Landroid/filterfw/core/FilterContext;)V

    .line 283
    return-void
.end method

.method final declared-synchronized unsetStatus(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/filterfw/core/Filter;->mStatus:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/filterfw/core/Filter;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
