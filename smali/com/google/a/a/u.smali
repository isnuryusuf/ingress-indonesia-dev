.class final Lcom/google/a/a/u;
.super Lcom/google/a/a/f;
.source "SourceFile"


# instance fields
.field final p:Lcom/google/a/a/f;

.field final q:Lcom/google/a/a/f;


# direct methods
.method constructor <init>(Lcom/google/a/a/f;Lcom/google/a/a/f;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "CharMatcher.or("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/a/a/u;-><init>(Lcom/google/a/a/f;Lcom/google/a/a/f;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method private constructor <init>(Lcom/google/a/a/f;Lcom/google/a/a/f;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    invoke-direct {p0, p3}, Lcom/google/a/a/f;-><init>(Ljava/lang/String;)V

    .line 726
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/f;

    iput-object v0, p0, Lcom/google/a/a/u;->p:Lcom/google/a/a/f;

    .line 727
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/f;

    iput-object v0, p0, Lcom/google/a/a/u;->q:Lcom/google/a/a/f;

    .line 728
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/a/a/f;
    .locals 3
    .parameter

    .prologue
    .line 748
    new-instance v0, Lcom/google/a/a/u;

    iget-object v1, p0, Lcom/google/a/a/u;->p:Lcom/google/a/a/f;

    iget-object v2, p0, Lcom/google/a/a/u;->q:Lcom/google/a/a/f;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/a/a/u;-><init>(Lcom/google/a/a/f;Lcom/google/a/a/f;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 720
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/a/a/f;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final b(C)Z
    .locals 1
    .parameter

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/a/a/u;->p:Lcom/google/a/a/f;

    invoke-virtual {v0, p1}, Lcom/google/a/a/f;->b(C)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/a/a/u;->q:Lcom/google/a/a/f;

    invoke-virtual {v0, p1}, Lcom/google/a/a/f;->b(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
