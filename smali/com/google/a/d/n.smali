.class public final Lcom/google/a/d/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/d/l;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public strictfp constructor <init>(Lcom/google/a/d/l;)V
    .locals 1
    .parameter

    .prologue
    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput-object p1, p0, Lcom/google/a/d/n;->b:Lcom/google/a/d/l;

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/a/d/n;->a:Ljava/util/ArrayList;

    .line 722
    return-void
.end method


# virtual methods
.method public final strictfp a()I
    .locals 1

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/google/a/d/n;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 750
    iget v0, p0, Lcom/google/a/d/n;->d:I

    return v0
.end method

.method public final strictfp a(Lcom/google/a/d/y;Lcom/google/a/d/y;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 729
    iget-object v2, p0, Lcom/google/a/d/n;->b:Lcom/google/a/d/l;

    invoke-virtual {v2, v0}, Lcom/google/a/d/l;->a(I)V

    .line 730
    iget-object v2, p0, Lcom/google/a/d/n;->b:Lcom/google/a/d/l;

    invoke-virtual {v2}, Lcom/google/a/d/l;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/google/a/d/n;->c:Z

    .line 731
    iget-boolean v0, p0, Lcom/google/a/d/n;->c:Z

    if-eqz v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/google/a/d/n;->b:Lcom/google/a/d/l;

    invoke-virtual {v0}, Lcom/google/a/d/l;->b()V

    .line 733
    iput v1, p0, Lcom/google/a/d/n;->d:I

    .line 734
    iget-object v0, p0, Lcom/google/a/d/n;->b:Lcom/google/a/d/l;

    invoke-virtual {v0}, Lcom/google/a/d/l;->c()I

    move-result v0

    iput v0, p0, Lcom/google/a/d/n;->e:I

    .line 743
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 730
    goto :goto_0

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/google/a/d/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 737
    iget-object v0, p0, Lcom/google/a/d/n;->b:Lcom/google/a/d/l;

    iget-object v2, p0, Lcom/google/a/d/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/a/d/l;->a(Lcom/google/a/d/y;Lcom/google/a/d/y;Ljava/util/List;)V

    .line 738
    iput v1, p0, Lcom/google/a/d/n;->f:I

    .line 739
    iget-object v0, p0, Lcom/google/a/d/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/google/a/d/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/a/d/n;->d:I

    goto :goto_1
.end method

.method public final strictfp b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 757
    iget-boolean v2, p0, Lcom/google/a/d/n;->c:Z

    if-eqz v2, :cond_2

    .line 758
    iget v2, p0, Lcom/google/a/d/n;->d:I

    iget v3, p0, Lcom/google/a/d/n;->e:I

    if-ge v2, v3, :cond_1

    .line 760
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 758
    goto :goto_0

    .line 760
    :cond_2
    iget v2, p0, Lcom/google/a/d/n;->f:I

    iget-object v3, p0, Lcom/google/a/d/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final strictfp c()V
    .locals 2

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/google/a/d/n;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 769
    iget-boolean v0, p0, Lcom/google/a/d/n;->c:Z

    if-eqz v0, :cond_1

    .line 770
    iget v0, p0, Lcom/google/a/d/n;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/n;->d:I

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget v0, p0, Lcom/google/a/d/n;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/n;->f:I

    .line 773
    iget v0, p0, Lcom/google/a/d/n;->f:I

    iget-object v1, p0, Lcom/google/a/d/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 774
    iget-object v0, p0, Lcom/google/a/d/n;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/a/d/n;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/a/d/n;->d:I

    goto :goto_0
.end method
