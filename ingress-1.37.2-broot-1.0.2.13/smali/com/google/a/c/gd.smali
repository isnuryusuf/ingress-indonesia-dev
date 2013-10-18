.class abstract Lcom/google/a/c/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/a/c/gi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gi",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/a/c/hb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/fi",
            "<TK;TV;>.com/google/a/c/hb;"
        }
    .end annotation
.end field

.field h:Lcom/google/a/c/hb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/fi",
            "<TK;TV;>.com/google/a/c/hb;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/a/c/fi;


# direct methods
.method constructor <init>(Lcom/google/a/c/fi;)V
    .locals 1
    .parameter

    .prologue
    .line 3619
    iput-object p1, p0, Lcom/google/a/c/gd;->i:Lcom/google/a/c/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3620
    iget-object v0, p1, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/gd;->b:I

    .line 3621
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/c/gd;->c:I

    .line 3622
    invoke-direct {p0}, Lcom/google/a/c/gd;->b()V

    .line 3623
    return-void
.end method

.method private a(Lcom/google/a/c/gh;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3684
    :try_start_0
    invoke-interface {p1}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v0

    .line 3685
    iget-object v1, p0, Lcom/google/a/c/gd;->i:Lcom/google/a/c/fi;

    invoke-virtual {v1, p1}, Lcom/google/a/c/fi;->b(Lcom/google/a/c/gh;)Ljava/lang/Object;

    move-result-object v1

    .line 3686
    if-eqz v1, :cond_0

    .line 3687
    new-instance v2, Lcom/google/a/c/hb;

    iget-object v3, p0, Lcom/google/a/c/gd;->i:Lcom/google/a/c/fi;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/a/c/hb;-><init>(Lcom/google/a/c/fi;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/a/c/gd;->g:Lcom/google/a/c/hb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3688
    iget-object v0, p0, Lcom/google/a/c/gd;->d:Lcom/google/a/c/gi;

    invoke-virtual {v0}, Lcom/google/a/c/gi;->b()V

    const/4 v0, 0x1

    .line 3691
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/c/gd;->d:Lcom/google/a/c/gi;

    invoke-virtual {v0}, Lcom/google/a/c/gi;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/a/c/gd;->d:Lcom/google/a/c/gi;

    invoke-virtual {v1}, Lcom/google/a/c/gi;->b()V

    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 3628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/c/gd;->g:Lcom/google/a/c/hb;

    .line 3630
    invoke-direct {p0}, Lcom/google/a/c/gd;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3648
    :cond_0
    :goto_0
    return-void

    .line 3634
    :cond_1
    invoke-direct {p0}, Lcom/google/a/c/gd;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3638
    :cond_2
    iget v0, p0, Lcom/google/a/c/gd;->b:I

    if-ltz v0, :cond_0

    .line 3639
    iget-object v0, p0, Lcom/google/a/c/gd;->i:Lcom/google/a/c/fi;

    iget-object v0, v0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    iget v1, p0, Lcom/google/a/c/gd;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/a/c/gd;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/a/c/gd;->d:Lcom/google/a/c/gi;

    .line 3640
    iget-object v0, p0, Lcom/google/a/c/gd;->d:Lcom/google/a/c/gi;

    iget v0, v0, Lcom/google/a/c/gi;->b:I

    if-eqz v0, :cond_2

    .line 3641
    iget-object v0, p0, Lcom/google/a/c/gd;->d:Lcom/google/a/c/gi;

    iget-object v0, v0, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/a/c/gd;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3642
    iget-object v0, p0, Lcom/google/a/c/gd;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/gd;->c:I

    .line 3643
    invoke-direct {p0}, Lcom/google/a/c/gd;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 3654
    iget-object v0, p0, Lcom/google/a/c/gd;->f:Lcom/google/a/c/gh;

    if-eqz v0, :cond_1

    .line 3655
    iget-object v0, p0, Lcom/google/a/c/gd;->f:Lcom/google/a/c/gh;

    invoke-interface {v0}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gd;->f:Lcom/google/a/c/gh;

    :goto_0
    iget-object v0, p0, Lcom/google/a/c/gd;->f:Lcom/google/a/c/gh;

    if-eqz v0, :cond_1

    .line 3656
    iget-object v0, p0, Lcom/google/a/c/gd;->f:Lcom/google/a/c/gh;

    invoke-direct {p0, v0}, Lcom/google/a/c/gd;->a(Lcom/google/a/c/gh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3657
    const/4 v0, 0x1

    .line 3661
    :goto_1
    return v0

    .line 3655
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/gd;->f:Lcom/google/a/c/gh;

    invoke-interface {v0}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/gd;->f:Lcom/google/a/c/gh;

    goto :goto_0

    .line 3661
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 3668
    :cond_0
    iget v0, p0, Lcom/google/a/c/gd;->c:I

    if-ltz v0, :cond_2

    .line 3669
    iget-object v0, p0, Lcom/google/a/c/gd;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/a/c/gd;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/a/c/gd;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    iput-object v0, p0, Lcom/google/a/c/gd;->f:Lcom/google/a/c/gh;

    if-eqz v0, :cond_0

    .line 3670
    iget-object v0, p0, Lcom/google/a/c/gd;->f:Lcom/google/a/c/gh;

    invoke-direct {p0, v0}, Lcom/google/a/c/gd;->a(Lcom/google/a/c/gh;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/a/c/gd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3671
    :cond_1
    const/4 v0, 0x1

    .line 3675
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/google/a/c/hb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/fi",
            "<TK;TV;>.com/google/a/c/hb;"
        }
    .end annotation

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/google/a/c/gd;->g:Lcom/google/a/c/hb;

    if-nez v0, :cond_0

    .line 3704
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3706
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/gd;->g:Lcom/google/a/c/hb;

    iput-object v0, p0, Lcom/google/a/c/gd;->h:Lcom/google/a/c/hb;

    .line 3707
    invoke-direct {p0}, Lcom/google/a/c/gd;->b()V

    .line 3708
    iget-object v0, p0, Lcom/google/a/c/gd;->h:Lcom/google/a/c/hb;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/google/a/c/gd;->g:Lcom/google/a/c/hb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/google/a/c/gd;->h:Lcom/google/a/c/hb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 3713
    iget-object v0, p0, Lcom/google/a/c/gd;->i:Lcom/google/a/c/fi;

    iget-object v1, p0, Lcom/google/a/c/gd;->h:Lcom/google/a/c/hb;

    invoke-virtual {v1}, Lcom/google/a/c/hb;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/fi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/c/gd;->h:Lcom/google/a/c/hb;

    .line 3715
    return-void

    .line 3712
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
