.class final Lcom/google/a/c/lg;
.super Lcom/google/a/c/hx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/hx",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:J

.field private e:I

.field private f:Lcom/google/a/c/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation
.end field

.field private g:Lcom/google/a/c/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation
.end field

.field private h:Lcom/google/a/c/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation
.end field

.field private i:Lcom/google/a/c/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 531
    invoke-direct {p0}, Lcom/google/a/c/hx;-><init>()V

    .line 532
    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 533
    iput-object p1, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    .line 534
    iput p2, p0, Lcom/google/a/c/lg;->b:I

    .line 535
    int-to-long v2, p2

    iput-wide v2, p0, Lcom/google/a/c/lg;->d:J

    .line 536
    iput v1, p0, Lcom/google/a/c/lg;->c:I

    .line 537
    iput v1, p0, Lcom/google/a/c/lg;->e:I

    .line 538
    iput-object v4, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 539
    iput-object v4, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 540
    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/a/c/lg;)I
    .locals 1
    .parameter

    .prologue
    .line 517
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    return v0
.end method

.method static synthetic a(Lcom/google/a/c/lg;Lcom/google/a/c/lg;)Lcom/google/a/c/lg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/google/a/c/lg;->i:Lcom/google/a/c/lg;

    return-object p1
.end method

.method static synthetic a(Lcom/google/a/c/lg;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/a/c/lg;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/lg;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/a/c/lg;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;I)Lcom/google/a/c/lg;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Lcom/google/a/c/lg;

    invoke-direct {v0, p1, p2}, Lcom/google/a/c/lg;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 555
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    iget-object v1, p0, Lcom/google/a/c/lg;->i:Lcom/google/a/c/lg;

    invoke-static {p0, v0, v1}, Lcom/google/a/c/ky;->a(Lcom/google/a/c/lg;Lcom/google/a/c/lg;Lcom/google/a/c/lg;)V

    .line 556
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/a/c/lg;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/a/c/lg;->e:I

    .line 557
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 558
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 559
    return-object p0
.end method

.method static synthetic b(Lcom/google/a/c/lg;)J
    .locals 2
    .parameter

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/a/c/lg;Lcom/google/a/c/lg;)Lcom/google/a/c/lg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/google/a/c/lg;->h:Lcom/google/a/c/lg;

    return-object p1
.end method

.method static synthetic b(Lcom/google/a/c/lg;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/a/c/lg;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/lg;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/a/c/lg;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;I)Lcom/google/a/c/lg;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v0, Lcom/google/a/c/lg;

    invoke-direct {v0, p1, p2}, Lcom/google/a/c/lg;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 564
    iget-object v0, p0, Lcom/google/a/c/lg;->h:Lcom/google/a/c/lg;

    iget-object v1, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-static {v0, v1, p0}, Lcom/google/a/c/ky;->a(Lcom/google/a/c/lg;Lcom/google/a/c/lg;Lcom/google/a/c/lg;)V

    .line 565
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/a/c/lg;->e:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/a/c/lg;->e:I

    .line 566
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 567
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 568
    return-object p0
.end method

.method private b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/a/c/lg;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 898
    :goto_0
    iget-object v0, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 899
    if-gez v0, :cond_2

    .line 900
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    if-nez v0, :cond_1

    .line 904
    :cond_0
    :goto_1
    return-object p0

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-direct {v0, p1, p2}, Lcom/google/a/c/lg;->b(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/a/c/lg;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/lg;

    move-object p0, v0

    goto :goto_1

    .line 901
    :cond_2
    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/a/c/lg;)I
    .locals 1
    .parameter

    .prologue
    .line 517
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    return v0
.end method

.method private c()Lcom/google/a/c/lg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 779
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    .line 780
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/a/c/lg;->b:I

    .line 781
    iget-object v1, p0, Lcom/google/a/c/lg;->h:Lcom/google/a/c/lg;

    iget-object v2, p0, Lcom/google/a/c/lg;->i:Lcom/google/a/c/lg;

    invoke-static {v1, v2}, Lcom/google/a/c/ky;->a(Lcom/google/a/c/lg;Lcom/google/a/c/lg;)V

    .line 782
    iget-object v1, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    if-nez v1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 800
    :goto_0
    return-object v0

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    if-nez v1, :cond_1

    .line 785
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    goto :goto_0

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    iget v1, v1, Lcom/google/a/c/lg;->e:I

    iget-object v2, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    iget v2, v2, Lcom/google/a/c/lg;->e:I

    if-lt v1, v2, :cond_2

    .line 787
    iget-object v1, p0, Lcom/google/a/c/lg;->h:Lcom/google/a/c/lg;

    .line 789
    iget-object v2, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-direct {v2, v1}, Lcom/google/a/c/lg;->j(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;

    move-result-object v2

    iput-object v2, v1, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 790
    iget-object v2, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    iput-object v2, v1, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 791
    iget v2, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/a/c/lg;->c:I

    .line 792
    iget-wide v2, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/a/c/lg;->d:J

    .line 793
    invoke-direct {v1}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object v0

    goto :goto_0

    .line 795
    :cond_2
    iget-object v1, p0, Lcom/google/a/c/lg;->i:Lcom/google/a/c/lg;

    .line 796
    iget-object v2, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    invoke-direct {v2, v1}, Lcom/google/a/c/lg;->i(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;

    move-result-object v2

    iput-object v2, v1, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 797
    iget-object v2, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    iput-object v2, v1, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 798
    iget v2, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/google/a/c/lg;->c:I

    .line 799
    iget-wide v2, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/a/c/lg;->d:J

    .line 800
    invoke-direct {v1}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/a/c/lg;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 909
    :goto_0
    iget-object v0, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 910
    if-lez v0, :cond_2

    .line 911
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    if-nez v0, :cond_1

    .line 915
    :cond_0
    :goto_1
    return-object p0

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    invoke-direct {v0, p1, p2}, Lcom/google/a/c/lg;->c(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/a/c/lg;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/lg;

    move-object p0, v0

    goto :goto_1

    .line 912
    :cond_2
    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    if-nez v0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/a/c/lg;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-static {v0}, Lcom/google/a/c/lg;->l(Lcom/google/a/c/lg;)I

    move-result v0

    iget-object v1, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    invoke-static {v1}, Lcom/google/a/c/lg;->l(Lcom/google/a/c/lg;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/lg;->e:I

    .line 836
    return-void
.end method

.method static synthetic e(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-static {v0}, Lcom/google/a/c/ky;->a(Lcom/google/a/c/lg;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    invoke-static {v1}, Lcom/google/a/c/ky;->a(Lcom/google/a/c/lg;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    iget v0, p0, Lcom/google/a/c/lg;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-static {v2}, Lcom/google/a/c/lg;->k(Lcom/google/a/c/lg;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    invoke-static {v2}, Lcom/google/a/c/lg;->k(Lcom/google/a/c/lg;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 840
    invoke-direct {p0}, Lcom/google/a/c/lg;->d()V

    .line 841
    return-void
.end method

.method private f()Lcom/google/a/c/lg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/google/a/c/lg;->g()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 856
    invoke-direct {p0}, Lcom/google/a/c/lg;->d()V

    .line 857
    :goto_0
    return-object p0

    .line 846
    :sswitch_0
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    invoke-direct {v0}, Lcom/google/a/c/lg;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    invoke-direct {v0}, Lcom/google/a/c/lg;->i()Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/google/a/c/lg;->h()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 851
    :sswitch_1
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-direct {v0}, Lcom/google/a/c/lg;->g()I

    move-result v0

    if-gez v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-direct {v0}, Lcom/google/a/c/lg;->h()Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 854
    :cond_1
    invoke-direct {p0}, Lcom/google/a/c/lg;->i()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 844
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic f(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    return-object v0
.end method

.method private g()I
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-static {v0}, Lcom/google/a/c/lg;->l(Lcom/google/a/c/lg;)I

    move-result v0

    iget-object v1, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    invoke-static {v1}, Lcom/google/a/c/lg;->l(Lcom/google/a/c/lg;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic g(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/a/c/lg;->i:Lcom/google/a/c/lg;

    return-object v0
.end method

.method private h()Lcom/google/a/c/lg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 867
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 868
    iget-object v1, v0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    iput-object v1, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 869
    iput-object p0, v0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 870
    iget-wide v1, p0, Lcom/google/a/c/lg;->d:J

    iput-wide v1, v0, Lcom/google/a/c/lg;->d:J

    .line 871
    iget v1, p0, Lcom/google/a/c/lg;->c:I

    iput v1, v0, Lcom/google/a/c/lg;->c:I

    .line 872
    invoke-direct {p0}, Lcom/google/a/c/lg;->e()V

    .line 873
    invoke-direct {v0}, Lcom/google/a/c/lg;->d()V

    .line 874
    return-object v0

    .line 866
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/a/c/lg;->h:Lcom/google/a/c/lg;

    return-object v0
.end method

.method private i()Lcom/google/a/c/lg;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 879
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 880
    iget-object v1, v0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    iput-object v1, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 881
    iput-object p0, v0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 882
    iget-wide v1, p0, Lcom/google/a/c/lg;->d:J

    iput-wide v1, v0, Lcom/google/a/c/lg;->d:J

    .line 883
    iget v1, p0, Lcom/google/a/c/lg;->c:I

    iput v1, v0, Lcom/google/a/c/lg;->c:I

    .line 884
    invoke-direct {p0}, Lcom/google/a/c/lg;->e()V

    .line 885
    invoke-direct {v0}, Lcom/google/a/c/lg;->d()V

    .line 886
    return-object v0

    .line 878
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/lg",
            "<TE;>;)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 812
    :goto_0
    return-object v0

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    invoke-direct {v0, p1}, Lcom/google/a/c/lg;->i(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 810
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 811
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    iget v2, p1, Lcom/google/a/c/lg;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 812
    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object v0

    goto :goto_0
.end method

.method private j(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/lg",
            "<TE;>;)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    if-nez v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 824
    :goto_0
    return-object v0

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    invoke-direct {v0, p1}, Lcom/google/a/c/lg;->j(Lcom/google/a/c/lg;)Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 822
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 823
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    iget v2, p1, Lcom/google/a/c/lg;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 824
    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object v0

    goto :goto_0
.end method

.method private static k(Lcom/google/a/c/lg;)J
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/lg",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 890
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    goto :goto_0
.end method

.method private static l(Lcom/google/a/c/lg;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/lg",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 894
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/a/c/lg;->e:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 543
    :goto_0
    iget-object v1, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 544
    if-gez v1, :cond_2

    .line 545
    iget-object v1, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    if-nez v1, :cond_1

    .line 549
    :cond_0
    :goto_1
    return v0

    .line 545
    :cond_1
    iget-object p0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    goto :goto_0

    .line 546
    :cond_2
    if-lez v1, :cond_3

    .line 547
    iget-object v1, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    goto :goto_0

    .line 549
    :cond_3
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    goto :goto_1
.end method

.method final a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/a/c/lg;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;II[I)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 721
    iget-object v0, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 722
    if-gez v0, :cond_5

    .line 723
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 724
    if-nez v0, :cond_1

    .line 725
    aput v6, p5, v6

    .line 726
    if-nez p3, :cond_0

    if-lez p4, :cond_0

    .line 727
    invoke-direct {p0, p2, p4}, Lcom/google/a/c/lg;->b(Ljava/lang/Object;I)Lcom/google/a/c/lg;

    move-result-object p0

    .line 775
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 732
    invoke-virtual/range {v0 .. v5}, Lcom/google/a/c/lg;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 734
    aget v0, p5, v6

    if-ne v0, p3, :cond_3

    .line 735
    if-nez p4, :cond_4

    aget v0, p5, v6

    if-eqz v0, :cond_4

    .line 736
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 740
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    aget v2, p5, v6

    sub-int v2, p4, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 742
    :cond_3
    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 737
    :cond_4
    if-lez p4, :cond_2

    aget v0, p5, v6

    if-nez v0, :cond_2

    .line 738
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    goto :goto_1

    .line 743
    :cond_5
    if-lez v0, :cond_a

    .line 744
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 745
    if-nez v0, :cond_6

    .line 746
    aput v6, p5, v6

    .line 747
    if-nez p3, :cond_0

    if-lez p4, :cond_0

    .line 748
    invoke-direct {p0, p2, p4}, Lcom/google/a/c/lg;->a(Ljava/lang/Object;I)Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    :cond_6
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 753
    invoke-virtual/range {v0 .. v5}, Lcom/google/a/c/lg;->a(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 755
    aget v0, p5, v6

    if-ne v0, p3, :cond_8

    .line 756
    if-nez p4, :cond_9

    aget v0, p5, v6

    if-eqz v0, :cond_9

    .line 757
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 761
    :cond_7
    :goto_2
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    aget v2, p5, v6

    sub-int v2, p4, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 763
    :cond_8
    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 758
    :cond_9
    if-lez p4, :cond_7

    aget v0, p5, v6

    if-nez v0, :cond_7

    .line 759
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    goto :goto_2

    .line 767
    :cond_a
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    aput v0, p5, v6

    .line 768
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    if-ne p3, v0, :cond_0

    .line 769
    if-nez p4, :cond_b

    .line 770
    invoke-direct {p0}, Lcom/google/a/c/lg;->c()Lcom/google/a/c/lg;

    move-result-object p0

    goto/16 :goto_0

    .line 772
    :cond_b
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    iget v2, p0, Lcom/google/a/c/lg;->b:I

    sub-int v2, p4, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 773
    iput p4, p0, Lcom/google/a/c/lg;->b:I

    goto/16 :goto_0
.end method

.method final a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/a/c/lg;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;I[I)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 576
    iget-object v1, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 577
    if-gez v1, :cond_3

    .line 578
    iget-object v1, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 579
    if-nez v1, :cond_1

    .line 580
    aput v0, p4, v0

    .line 581
    invoke-direct {p0, p2, p3}, Lcom/google/a/c/lg;->b(Ljava/lang/Object;I)Lcom/google/a/c/lg;

    move-result-object p0

    .line 613
    :cond_0
    :goto_0
    return-object p0

    .line 583
    :cond_1
    iget v2, v1, Lcom/google/a/c/lg;->e:I

    .line 585
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/a/c/lg;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/a/c/lg;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 586
    aget v0, p4, v0

    if-nez v0, :cond_2

    .line 587
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 589
    :cond_2
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v3, p3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 590
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    iget v0, v0, Lcom/google/a/c/lg;->e:I

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 591
    :cond_3
    if-lez v1, :cond_6

    .line 592
    iget-object v1, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 593
    if-nez v1, :cond_4

    .line 594
    aput v0, p4, v0

    .line 595
    invoke-direct {p0, p2, p3}, Lcom/google/a/c/lg;->a(Ljava/lang/Object;I)Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 597
    :cond_4
    iget v2, v1, Lcom/google/a/c/lg;->e:I

    .line 599
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/a/c/lg;->a(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/a/c/lg;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 600
    aget v0, p4, v0

    if-nez v0, :cond_5

    .line 601
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 603
    :cond_5
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v3, p3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 604
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    iget v0, v0, Lcom/google/a/c/lg;->e:I

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 608
    :cond_6
    iget v1, p0, Lcom/google/a/c/lg;->b:I

    aput v1, p4, v0

    .line 609
    iget v1, p0, Lcom/google/a/c/lg;->b:I

    int-to-long v1, v1

    int-to-long v3, p3

    add-long/2addr v1, v3

    .line 610
    const-wide/32 v3, 0x7fffffff

    cmp-long v1, v1, v3

    if-gtz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 611
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/a/c/lg;->b:I

    .line 612
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    goto :goto_0
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 926
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    return v0
.end method

.method final b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/a/c/lg;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;I[I)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 617
    iget-object v0, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 618
    if-gez v0, :cond_4

    .line 619
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 620
    if-nez v0, :cond_1

    .line 621
    aput v4, p4, v4

    .line 663
    :cond_0
    :goto_0
    return-object p0

    .line 625
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/a/c/lg;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 627
    aget v0, p4, v4

    if-lez v0, :cond_2

    .line 628
    aget v0, p4, v4

    if-lt p3, v0, :cond_3

    .line 629
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 630
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    aget v2, p4, v4

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 635
    :cond_2
    :goto_1
    aget v0, p4, v4

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 632
    :cond_3
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    goto :goto_1

    .line 636
    :cond_4
    if-lez v0, :cond_8

    .line 637
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 638
    if-nez v0, :cond_5

    .line 639
    aput v4, p4, v4

    goto :goto_0

    .line 643
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/a/c/lg;->b(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 645
    aget v0, p4, v4

    if-lez v0, :cond_6

    .line 646
    aget v0, p4, v4

    if-lt p3, v0, :cond_7

    .line 647
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 648
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    aget v2, p4, v4

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 653
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 650
    :cond_7
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    goto :goto_2

    .line 657
    :cond_8
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    aput v0, p4, v4

    .line 658
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    if-lt p3, v0, :cond_9

    .line 659
    invoke-direct {p0}, Lcom/google/a/c/lg;->c()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 661
    :cond_9
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/google/a/c/lg;->b:I

    .line 662
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    goto :goto_0
.end method

.method final c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/a/c/lg;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;I[I)",
            "Lcom/google/a/c/lg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 668
    iget-object v0, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 669
    if-gez v0, :cond_4

    .line 670
    iget-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 671
    if-nez v0, :cond_1

    .line 672
    aput v2, p4, v2

    .line 673
    if-lez p3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/a/c/lg;->b(Ljava/lang/Object;I)Lcom/google/a/c/lg;

    move-result-object p0

    .line 712
    :cond_0
    :goto_0
    return-object p0

    .line 676
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/a/c/lg;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->f:Lcom/google/a/c/lg;

    .line 678
    if-nez p3, :cond_3

    aget v0, p4, v2

    if-eqz v0, :cond_3

    .line 679
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 684
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    aget v2, p4, v2

    sub-int v2, p3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 685
    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 680
    :cond_3
    if-lez p3, :cond_2

    aget v0, p4, v2

    if-nez v0, :cond_2

    .line 681
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    goto :goto_1

    .line 686
    :cond_4
    if-lez v0, :cond_8

    .line 687
    iget-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 688
    if-nez v0, :cond_5

    .line 689
    aput v2, p4, v2

    .line 690
    if-lez p3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/a/c/lg;->a(Ljava/lang/Object;I)Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 693
    :cond_5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/a/c/lg;->c(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/a/c/lg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/lg;->g:Lcom/google/a/c/lg;

    .line 695
    if-nez p3, :cond_7

    aget v0, p4, v2

    if-eqz v0, :cond_7

    .line 696
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    .line 701
    :cond_6
    :goto_2
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    aget v2, p4, v2

    sub-int v2, p3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 702
    invoke-direct {p0}, Lcom/google/a/c/lg;->f()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 697
    :cond_7
    if-lez p3, :cond_6

    aget v0, p4, v2

    if-nez v0, :cond_6

    .line 698
    iget v0, p0, Lcom/google/a/c/lg;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/c/lg;->c:I

    goto :goto_2

    .line 706
    :cond_8
    iget v0, p0, Lcom/google/a/c/lg;->b:I

    aput v0, p4, v2

    .line 707
    if-nez p3, :cond_9

    .line 708
    invoke-direct {p0}, Lcom/google/a/c/lg;->c()Lcom/google/a/c/lg;

    move-result-object p0

    goto :goto_0

    .line 710
    :cond_9
    iget-wide v0, p0, Lcom/google/a/c/lg;->d:J

    iget v2, p0, Lcom/google/a/c/lg;->b:I

    sub-int v2, p3, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/a/c/lg;->d:J

    .line 711
    iput p3, p0, Lcom/google/a/c/lg;->b:I

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/google/a/c/lg;->a:Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/c/lg;->b:I

    invoke-static {v0, v1}, Lcom/google/a/c/hv;->a(Ljava/lang/Object;I)Lcom/google/a/c/hu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
