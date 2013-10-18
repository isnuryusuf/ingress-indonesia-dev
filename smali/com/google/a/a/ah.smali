.class public final Lcom/google/a/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/a/a/ai;

.field private c:Lcom/google/a/a/ai;

.field private d:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Lcom/google/a/a/ai;

    invoke-direct {v0, v1}, Lcom/google/a/a/ai;-><init>(B)V

    iput-object v0, p0, Lcom/google/a/a/ah;->b:Lcom/google/a/a/ai;

    .line 291
    iget-object v0, p0, Lcom/google/a/a/ah;->b:Lcom/google/a/a/ai;

    iput-object v0, p0, Lcom/google/a/a/ah;->c:Lcom/google/a/a/ai;

    .line 292
    iput-boolean v1, p0, Lcom/google/a/a/ah;->d:Z

    .line 298
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/a/ah;->a:Ljava/lang/String;

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/google/a/a/ah;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()Lcom/google/a/a/ai;
    .locals 2

    .prologue
    .line 497
    new-instance v0, Lcom/google/a/a/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/a/a/ai;-><init>(B)V

    .line 498
    iget-object v1, p0, Lcom/google/a/a/ah;->c:Lcom/google/a/a/ai;

    iput-object v0, v1, Lcom/google/a/a/ai;->c:Lcom/google/a/a/ai;

    iput-object v0, p0, Lcom/google/a/a/ah;->c:Lcom/google/a/a/ai;

    .line 499
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/google/a/a/ah;->a()Lcom/google/a/a/ai;

    move-result-object v1

    .line 510
    iput-object p2, v1, Lcom/google/a/a/ai;->b:Ljava/lang/Object;

    .line 511
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/google/a/a/ai;->a:Ljava/lang/String;

    .line 512
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/a/a/ah;
    .locals 1
    .parameter

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/google/a/a/ah;->a()Lcom/google/a/a/ai;

    move-result-object v0

    iput-object p1, v0, Lcom/google/a/a/ai;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lcom/google/a/a/ah;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/a/ah;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/google/a/a/ah;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/a/ah;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lcom/google/a/a/ah;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/google/a/a/ah;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/a/ah;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 477
    iget-boolean v2, p0, Lcom/google/a/a/ah;->d:Z

    .line 478
    const-string/jumbo v1, ""

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/a/a/ah;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 481
    iget-object v0, p0, Lcom/google/a/a/ah;->b:Lcom/google/a/a/ai;

    iget-object v0, v0, Lcom/google/a/a/ai;->c:Lcom/google/a/a/ai;

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_3

    .line 483
    if-eqz v2, :cond_0

    iget-object v4, v1, Lcom/google/a/a/ai;->b:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 484
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string/jumbo v0, ", "

    .line 487
    iget-object v4, v1, Lcom/google/a/a/ai;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 488
    iget-object v4, v1, Lcom/google/a/a/ai;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    :cond_1
    iget-object v4, v1, Lcom/google/a/a/ai;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    :cond_2
    iget-object v1, v1, Lcom/google/a/a/ai;->c:Lcom/google/a/a/ai;

    goto :goto_0

    .line 493
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
