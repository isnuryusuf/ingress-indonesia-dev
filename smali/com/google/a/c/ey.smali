.class public final Lcom/google/a/c/ey;
.super Lcom/google/a/c/bu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/bu",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Lcom/google/a/c/gk;

.field g:Lcom/google/a/c/gk;

.field h:J

.field i:J

.field j:Lcom/google/a/c/fa;

.field k:Lcom/google/a/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/google/a/a/bw;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 139
    invoke-direct {p0}, Lcom/google/a/c/bu;-><init>()V

    .line 119
    iput v0, p0, Lcom/google/a/c/ey;->c:I

    .line 120
    iput v0, p0, Lcom/google/a/c/ey;->d:I

    .line 121
    iput v0, p0, Lcom/google/a/c/ey;->e:I

    .line 126
    iput-wide v1, p0, Lcom/google/a/c/ey;->h:J

    .line 127
    iput-wide v1, p0, Lcom/google/a/c/ey;->i:J

    .line 139
    return-void
.end method


# virtual methods
.method final b()I
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/google/a/c/ey;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/a/c/ey;->c:I

    goto :goto_0
.end method

.method public final c()Lcom/google/a/c/ey;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    iget v0, p0, Lcom/google/a/c/ey;->d:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/google/a/c/ey;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 247
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 248
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/a/c/ey;->d:I

    .line 249
    return-object p0

    :cond_0
    move v0, v2

    .line 245
    goto :goto_0
.end method

.method final d()I
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/google/a/c/ey;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/a/c/ey;->d:I

    goto :goto_0
.end method

.method final e()Lcom/google/a/c/gk;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/a/c/ey;->f:Lcom/google/a/c/gk;

    sget-object v1, Lcom/google/a/c/gk;->a:Lcom/google/a/c/gk;

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gk;

    return-object v0
.end method

.method public final f()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/google/a/c/ey;->b:Z

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/a/c/ey;->b()I

    move-result v1

    const/high16 v2, 0x3f40

    invoke-virtual {p0}, Lcom/google/a/c/ey;->d()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 544
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/c/ey;->j:Lcom/google/a/c/fa;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/a/c/fi;

    invoke-direct {v0, p0}, Lcom/google/a/c/fi;-><init>(Lcom/google/a/c/ey;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/a/c/ez;

    invoke-direct {v0, p0}, Lcom/google/a/c/ez;-><init>(Lcom/google/a/c/ey;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    .line 634
    invoke-static {p0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    .line 635
    iget v1, p0, Lcom/google/a/c/ey;->c:I

    if-eq v1, v3, :cond_0

    .line 636
    const-string/jumbo v1, "initialCapacity"

    iget v2, p0, Lcom/google/a/c/ey;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;I)Lcom/google/a/a/ah;

    .line 638
    :cond_0
    iget v1, p0, Lcom/google/a/c/ey;->d:I

    if-eq v1, v3, :cond_1

    .line 639
    const-string/jumbo v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/a/c/ey;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;I)Lcom/google/a/a/ah;

    .line 641
    :cond_1
    iget v1, p0, Lcom/google/a/c/ey;->e:I

    if-eq v1, v3, :cond_2

    .line 642
    const-string/jumbo v1, "maximumSize"

    iget v2, p0, Lcom/google/a/c/ey;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;I)Lcom/google/a/a/ah;

    .line 644
    :cond_2
    iget-wide v1, p0, Lcom/google/a/c/ey;->h:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 645
    const-string/jumbo v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/a/c/ey;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 647
    :cond_3
    iget-wide v1, p0, Lcom/google/a/c/ey;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 648
    const-string/jumbo v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/a/c/ey;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 650
    :cond_4
    iget-object v1, p0, Lcom/google/a/c/ey;->f:Lcom/google/a/c/gk;

    if-eqz v1, :cond_5

    .line 651
    const-string/jumbo v1, "keyStrength"

    iget-object v2, p0, Lcom/google/a/c/ey;->f:Lcom/google/a/c/gk;

    invoke-virtual {v2}, Lcom/google/a/c/gk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 653
    :cond_5
    iget-object v1, p0, Lcom/google/a/c/ey;->g:Lcom/google/a/c/gk;

    if-eqz v1, :cond_6

    .line 654
    const-string/jumbo v1, "valueStrength"

    iget-object v2, p0, Lcom/google/a/c/ey;->g:Lcom/google/a/c/gk;

    invoke-virtual {v2}, Lcom/google/a/c/gk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 656
    :cond_6
    iget-object v1, p0, Lcom/google/a/c/ey;->k:Lcom/google/a/a/x;

    if-eqz v1, :cond_7

    .line 657
    const-string/jumbo v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/a/a/ah;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 659
    :cond_7
    iget-object v1, p0, Lcom/google/a/c/ey;->a:Lcom/google/a/c/fg;

    if-eqz v1, :cond_8

    .line 660
    const-string/jumbo v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/a/a/ah;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 662
    :cond_8
    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
