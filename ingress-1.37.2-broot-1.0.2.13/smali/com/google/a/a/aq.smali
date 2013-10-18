.class final Lcom/google/a/a/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/a/ao;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/a/a/ao",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/a/a/ao",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/a/a/ao",
            "<-TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Lcom/google/a/a/aq;->a:Ljava/util/List;

    .line 338
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/google/a/a/aq;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 342
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/a/a/aq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/google/a/a/aq;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/ao;

    invoke-interface {v0, p1}, Lcom/google/a/a/ao;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :goto_1
    return v2

    .line 342
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 347
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 354
    instance-of v0, p1, Lcom/google/a/a/aq;

    if-eqz v0, :cond_0

    .line 355
    check-cast p1, Lcom/google/a/a/aq;

    .line 356
    iget-object v0, p0, Lcom/google/a/a/aq;->a:Ljava/util/List;

    iget-object v1, p1, Lcom/google/a/a/aq;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/a/a/aq;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x12472c2c

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "And("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/a/a/ap;->a()Lcom/google/a/a/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/a/aq;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/a/a/ab;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
