.class public final Lcom/nianticproject/ingress/common/u/aw;
.super Lcom/google/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/f/g",
        "<",
        "Lcom/nianticproject/ingress/common/u/av;",
        "Lcom/nianticproject/ingress/common/u/aw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/u/ax;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Ljava/lang/Object;

.field private h:Lcom/nianticproject/ingress/common/u/at;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:F

.field private m:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1466
    invoke-direct {p0}, Lcom/google/f/g;-><init>()V

    .line 1771
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    .line 1860
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    .line 1905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    .line 1950
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    .line 2022
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->g:Ljava/lang/Object;

    .line 2058
    invoke-static {}, Lcom/nianticproject/ingress/common/u/at;->c()Lcom/nianticproject/ingress/common/u/at;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->h:Lcom/nianticproject/ingress/common/u/at;

    .line 1467
    return-void
.end method

.method static synthetic d()Lcom/nianticproject/ingress/common/u/aw;
    .locals 1

    .prologue
    .line 1461
    new-instance v0, Lcom/nianticproject/ingress/common/u/aw;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/aw;-><init>()V

    return-object v0
.end method

.method private e()Lcom/nianticproject/ingress/common/u/aw;
    .locals 2

    .prologue
    .line 1506
    new-instance v0, Lcom/nianticproject/ingress/common/u/aw;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/aw;-><init>()V

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->f()Lcom/nianticproject/ingress/common/u/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/aw;->a(Lcom/nianticproject/ingress/common/u/av;)Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    return-object v0
.end method

.method private f()Lcom/nianticproject/ingress/common/u/av;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1532
    new-instance v2, Lcom/nianticproject/ingress/common/u/av;

    invoke-direct {v2, v1}, Lcom/nianticproject/ingress/common/u/av;-><init>(C)V

    .line 1533
    iget v3, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1535
    iget v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    .line 1536
    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    .line 1537
    iget v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1539
    :cond_0
    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;Ljava/util/List;)Ljava/util/List;

    .line 1540
    iget v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1541
    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    .line 1542
    iget v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1544
    :cond_1
    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/nianticproject/ingress/common/u/av;->b(Lcom/nianticproject/ingress/common/u/av;Ljava/util/List;)Ljava/util/List;

    .line 1545
    iget v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1546
    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    .line 1547
    iget v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1549
    :cond_2
    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/nianticproject/ingress/common/u/av;->c(Lcom/nianticproject/ingress/common/u/av;Ljava/util/List;)Ljava/util/List;

    .line 1550
    iget v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 1551
    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    .line 1552
    iget v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1554
    :cond_3
    iget-object v4, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/nianticproject/ingress/common/u/av;->d(Lcom/nianticproject/ingress/common/u/av;Ljava/util/List;)Ljava/util/List;

    .line 1555
    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_b

    .line 1558
    :goto_0
    iget-wide v4, p0, Lcom/nianticproject/ingress/common/u/aw;->f:J

    invoke-static {v2, v4, v5}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;J)J

    .line 1559
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 1560
    or-int/lit8 v0, v0, 0x2

    .line 1562
    :cond_4
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/aw;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 1564
    or-int/lit8 v0, v0, 0x4

    .line 1566
    :cond_5
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/aw;->h:Lcom/nianticproject/ingress/common/u/at;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/at;

    .line 1567
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 1568
    or-int/lit8 v0, v0, 0x8

    .line 1570
    :cond_6
    iget v1, p0, Lcom/nianticproject/ingress/common/u/aw;->i:I

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;I)I

    .line 1571
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 1572
    or-int/lit8 v0, v0, 0x10

    .line 1574
    :cond_7
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/u/aw;->j:Z

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;Z)Z

    .line 1575
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 1576
    or-int/lit8 v0, v0, 0x20

    .line 1578
    :cond_8
    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/u/aw;->k:Z

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/av;->b(Lcom/nianticproject/ingress/common/u/av;Z)Z

    .line 1579
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 1580
    or-int/lit8 v0, v0, 0x40

    .line 1582
    :cond_9
    iget v1, p0, Lcom/nianticproject/ingress/common/u/aw;->l:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;F)F

    .line 1583
    and-int/lit16 v1, v3, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_a

    .line 1584
    or-int/lit16 v0, v0, 0x80

    .line 1586
    :cond_a
    iget v1, p0, Lcom/nianticproject/ingress/common/u/aw;->m:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/av;->b(Lcom/nianticproject/ingress/common/u/av;F)F

    .line 1587
    invoke-static {v2, v0}, Lcom/nianticproject/ingress/common/u/av;->b(Lcom/nianticproject/ingress/common/u/av;I)I

    .line 1588
    return-object v2

    :cond_b
    move v0, v1

    goto :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1774
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1775
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    .line 1776
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1778
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 1862
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1863
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    .line 1864
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1866
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1907
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1908
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    .line 1909
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1911
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 1952
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1953
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    .line 1954
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1956
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/f/b;
    .locals 1

    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->e()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)Lcom/nianticproject/ingress/common/u/aw;
    .locals 2
    .parameter

    .prologue
    .line 1930
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->i()V

    .line 1931
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1933
    return-object p0
.end method

.method public final a(I)Lcom/nianticproject/ingress/common/u/aw;
    .locals 2
    .parameter

    .prologue
    .line 1885
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->h()V

    .line 1886
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1888
    return-object p0
.end method

.method public final a(J)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 2009
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 2010
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/u/aw;->f:J

    .line 2012
    return-object p0
.end method

.method public final a(Lcom/google/f/c;)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 1978
    if-nez p1, :cond_0

    .line 1979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1981
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->j()V

    .line 1982
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1984
    return-object p0
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 2066
    if-nez p1, :cond_0

    .line 2067
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2069
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/aw;->h:Lcom/nianticproject/ingress/common/u/at;

    .line 2071
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 2072
    return-object p0
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/av;)Lcom/nianticproject/ingress/common/u/aw;
    .locals 3
    .parameter

    .prologue
    .line 1592
    invoke-static {}, Lcom/nianticproject/ingress/common/u/av;->c()Lcom/nianticproject/ingress/common/u/av;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-object p0

    .line 1593
    :cond_1
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1594
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1595
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    .line 1596
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1603
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->b(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1604
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1605
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->b(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    .line 1606
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1613
    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->c(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1614
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1615
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->c(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    .line 1616
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1623
    :cond_4
    :goto_3
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->d(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1624
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1625
    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->d(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    .line 1626
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1633
    :cond_5
    :goto_4
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1634
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->e()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/u/aw;->a(J)Lcom/nianticproject/ingress/common/u/aw;

    .line 1636
    :cond_6
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1637
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/aw;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/aw;

    .line 1639
    :cond_7
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1640
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->i()Lcom/nianticproject/ingress/common/u/at;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/aw;->h:Lcom/nianticproject/ingress/common/u/at;

    invoke-static {}, Lcom/nianticproject/ingress/common/u/at;->c()Lcom/nianticproject/ingress/common/u/at;

    move-result-object v2

    if-eq v1, v2, :cond_11

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/aw;->h:Lcom/nianticproject/ingress/common/u/at;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/at;->a(Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/au;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/au;->a(Lcom/nianticproject/ingress/common/u/at;)Lcom/nianticproject/ingress/common/u/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/au;->d()Lcom/nianticproject/ingress/common/u/at;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->h:Lcom/nianticproject/ingress/common/u/at;

    :goto_5
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 1642
    :cond_8
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1643
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/aw;->b(I)Lcom/nianticproject/ingress/common/u/aw;

    .line 1645
    :cond_9
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1646
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->m()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/aw;->a(Z)Lcom/nianticproject/ingress/common/u/aw;

    .line 1648
    :cond_a
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1649
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->o()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/aw;->b(Z)Lcom/nianticproject/ingress/common/u/aw;

    .line 1651
    :cond_b
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1652
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->q()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/aw;->b(F)Lcom/nianticproject/ingress/common/u/aw;

    .line 1654
    :cond_c
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/u/av;->s()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/u/aw;->c(F)Lcom/nianticproject/ingress/common/u/aw;

    goto/16 :goto_0

    .line 1598
    :cond_d
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->g()V

    .line 1599
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->a(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1608
    :cond_e
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->h()V

    .line 1609
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->b(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1618
    :cond_f
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->i()V

    .line 1619
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->c(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 1628
    :cond_10
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->j()V

    .line 1629
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/u/av;->d(Lcom/nianticproject/ingress/common/u/av;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 1640
    :cond_11
    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->h:Lcom/nianticproject/ingress/common/u/at;

    goto/16 :goto_5
.end method

.method public final a(Lcom/nianticproject/ingress/common/u/ax;)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 1807
    if-nez p1, :cond_0

    .line 1808
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1810
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->g()V

    .line 1811
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/aw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1813
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 2037
    if-nez p1, :cond_0

    .line 2038
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2040
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 2041
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/aw;->g:Ljava/lang/Object;

    .line 2043
    return-object p0
.end method

.method public final a(Z)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 2130
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 2131
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/u/aw;->j:Z

    .line 2133
    return-object p0
.end method

.method public final synthetic b()Lcom/google/f/g;
    .locals 1

    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->e()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    return-object v0
.end method

.method public final b(F)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 2172
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 2173
    iput p1, p0, Lcom/nianticproject/ingress/common/u/aw;->l:F

    .line 2175
    return-object p0
.end method

.method public final b(I)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 2109
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 2110
    iput p1, p0, Lcom/nianticproject/ingress/common/u/aw;->i:I

    .line 2112
    return-object p0
.end method

.method public final b(Z)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 2151
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 2152
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/u/aw;->k:Z

    .line 2154
    return-object p0
.end method

.method public final c()Lcom/nianticproject/ingress/common/u/av;
    .locals 2

    .prologue
    .line 1514
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->f()Lcom/nianticproject/ingress/common/u/av;

    move-result-object v0

    .line 1515
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/av;->t()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1516
    new-instance v0, Lcom/google/f/k;

    invoke-direct {v0}, Lcom/google/f/k;-><init>()V

    throw v0

    .line 1518
    :cond_0
    return-object v0
.end method

.method public final c(F)Lcom/nianticproject/ingress/common/u/aw;
    .locals 1
    .parameter

    .prologue
    .line 2193
    iget v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/nianticproject/ingress/common/u/aw;->a:I

    .line 2194
    iput p1, p0, Lcom/nianticproject/ingress/common/u/aw;->m:F

    .line 2196
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/aw;->e()Lcom/nianticproject/ingress/common/u/aw;

    move-result-object v0

    return-object v0
.end method
