.class public final Lcom/nianticproject/ingress/common/u/ay;
.super Lcom/google/f/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/f/g",
        "<",
        "Lcom/nianticproject/ingress/common/u/ax;",
        "Lcom/nianticproject/ingress/common/u/ay;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:J

.field private d:F

.field private e:F

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/google/f/g;-><init>()V

    .line 779
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/ay;->b:Ljava/lang/Object;

    .line 878
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    .line 513
    return-void
.end method

.method static synthetic d()Lcom/nianticproject/ingress/common/u/ay;
    .locals 1

    .prologue
    .line 507
    new-instance v0, Lcom/nianticproject/ingress/common/u/ay;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/ay;-><init>()V

    return-object v0
.end method

.method private e()Lcom/nianticproject/ingress/common/u/ay;
    .locals 4

    .prologue
    .line 552
    new-instance v0, Lcom/nianticproject/ingress/common/u/ay;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/ay;-><init>()V

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/ay;->f()Lcom/nianticproject/ingress/common/u/ax;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/common/u/ax;->c()Lcom/nianticproject/ingress/common/u/ax;

    move-result-object v2

    if-eq v1, v2, :cond_b

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ay;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/ay;

    :cond_0
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/nianticproject/ingress/common/u/ay;->a(J)Lcom/nianticproject/ingress/common/u/ay;

    :cond_1
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->i()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ay;->a(F)Lcom/nianticproject/ingress/common/u/ay;

    :cond_2
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->j()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->k()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ay;->b(F)Lcom/nianticproject/ingress/common/u/ay;

    :cond_3
    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/ax;->a(Lcom/nianticproject/ingress/common/u/ax;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/ax;->a(Lcom/nianticproject/ingress/common/u/ax;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    iget v2, v0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->l()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->m()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ay;->d(F)Lcom/nianticproject/ingress/common/u/ay;

    :cond_5
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->n()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->o()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ay;->e(F)Lcom/nianticproject/ingress/common/u/ay;

    :cond_6
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->p()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->q()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ay;->f(F)Lcom/nianticproject/ingress/common/u/ay;

    :cond_7
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->r()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->s()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ay;->g(F)Lcom/nianticproject/ingress/common/u/ay;

    :cond_8
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->t()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->u()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ay;->h(F)Lcom/nianticproject/ingress/common/u/ay;

    :cond_9
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->v()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->w()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/u/ay;->i(F)Lcom/nianticproject/ingress/common/u/ay;

    :cond_a
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->x()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/u/ax;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/u/ay;->a(I)Lcom/nianticproject/ingress/common/u/ay;

    :cond_b
    return-object v0

    :cond_c
    invoke-direct {v0}, Lcom/nianticproject/ingress/common/u/ay;->g()V

    iget-object v2, v0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/u/ax;->a(Lcom/nianticproject/ingress/common/u/ax;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private f()Lcom/nianticproject/ingress/common/u/ax;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 578
    new-instance v2, Lcom/nianticproject/ingress/common/u/ax;

    invoke-direct {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;-><init>(C)V

    .line 579
    iget v3, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 581
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_b

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/ay;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->a(Lcom/nianticproject/ingress/common/u/ax;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 586
    or-int/lit8 v0, v0, 0x2

    .line 588
    :cond_0
    iget-wide v4, p0, Lcom/nianticproject/ingress/common/u/ay;->c:J

    invoke-static {v2, v4, v5}, Lcom/nianticproject/ingress/common/u/ax;->a(Lcom/nianticproject/ingress/common/u/ax;J)J

    .line 589
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 590
    or-int/lit8 v0, v0, 0x4

    .line 592
    :cond_1
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->d:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->a(Lcom/nianticproject/ingress/common/u/ax;F)F

    .line 593
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 594
    or-int/lit8 v0, v0, 0x8

    .line 596
    :cond_2
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->e:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->b(Lcom/nianticproject/ingress/common/u/ax;F)F

    .line 597
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 598
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    .line 599
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 601
    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->a(Lcom/nianticproject/ingress/common/u/ax;Ljava/util/List;)Ljava/util/List;

    .line 602
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    .line 603
    or-int/lit8 v0, v0, 0x10

    .line 605
    :cond_4
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->g:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->c(Lcom/nianticproject/ingress/common/u/ax;F)F

    .line 606
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    .line 607
    or-int/lit8 v0, v0, 0x20

    .line 609
    :cond_5
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->h:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->d(Lcom/nianticproject/ingress/common/u/ax;F)F

    .line 610
    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    .line 611
    or-int/lit8 v0, v0, 0x40

    .line 613
    :cond_6
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->i:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->e(Lcom/nianticproject/ingress/common/u/ax;F)F

    .line 614
    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    .line 615
    or-int/lit16 v0, v0, 0x80

    .line 617
    :cond_7
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->j:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->f(Lcom/nianticproject/ingress/common/u/ax;F)F

    .line 618
    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    .line 619
    or-int/lit16 v0, v0, 0x100

    .line 621
    :cond_8
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->k:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->g(Lcom/nianticproject/ingress/common/u/ax;F)F

    .line 622
    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    .line 623
    or-int/lit16 v0, v0, 0x200

    .line 625
    :cond_9
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->l:F

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->h(Lcom/nianticproject/ingress/common/u/ax;F)F

    .line 626
    and-int/lit16 v1, v3, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_a

    .line 627
    or-int/lit16 v0, v0, 0x400

    .line 629
    :cond_a
    iget v1, p0, Lcom/nianticproject/ingress/common/u/ay;->m:I

    invoke-static {v2, v1}, Lcom/nianticproject/ingress/common/u/ax;->a(Lcom/nianticproject/ingress/common/u/ax;I)I

    .line 630
    invoke-static {v2, v0}, Lcom/nianticproject/ingress/common/u/ax;->b(Lcom/nianticproject/ingress/common/u/ax;I)I

    .line 631
    return-object v2

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 880
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 881
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    .line 882
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 884
    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/f/b;
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/ay;->e()Lcom/nianticproject/ingress/common/u/ay;

    move-result-object v0

    return-object v0
.end method

.method public final a(F)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 844
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 845
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ay;->d:F

    .line 847
    return-object p0
.end method

.method public final a(I)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 1057
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 1058
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ay;->m:I

    .line 1060
    return-object p0
.end method

.method public final a(J)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 823
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 824
    iput-wide p1, p0, Lcom/nianticproject/ingress/common/u/ay;->c:J

    .line 826
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 794
    if-nez p1, :cond_0

    .line 795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 797
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 798
    iput-object p1, p0, Lcom/nianticproject/ingress/common/u/ay;->b:Ljava/lang/Object;

    .line 800
    return-object p0
.end method

.method public final synthetic b()Lcom/google/f/g;
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/ay;->e()Lcom/nianticproject/ingress/common/u/ay;

    move-result-object v0

    return-object v0
.end method

.method public final b(F)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 865
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 866
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ay;->e:F

    .line 868
    return-object p0
.end method

.method public final c()Lcom/nianticproject/ingress/common/u/ax;
    .locals 2

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/ay;->f()Lcom/nianticproject/ingress/common/u/ax;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/u/ax;->z()Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    new-instance v0, Lcom/google/f/k;

    invoke-direct {v0}, Lcom/google/f/k;-><init>()V

    throw v0

    .line 564
    :cond_0
    return-object v0
.end method

.method public final c(F)Lcom/nianticproject/ingress/common/u/ay;
    .locals 2
    .parameter

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/ay;->g()V

    .line 904
    iget-object v0, p0, Lcom/nianticproject/ingress/common/u/ay;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/u/ay;->e()Lcom/nianticproject/ingress/common/u/ay;

    move-result-object v0

    return-object v0
.end method

.method public final d(F)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 931
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 932
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ay;->g:F

    .line 934
    return-object p0
.end method

.method public final e(F)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 952
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 953
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ay;->h:F

    .line 955
    return-object p0
.end method

.method public final f(F)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 973
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 974
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ay;->i:F

    .line 976
    return-object p0
.end method

.method public final g(F)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 994
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 995
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ay;->j:F

    .line 997
    return-object p0
.end method

.method public final h(F)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 1015
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 1016
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ay;->k:F

    .line 1018
    return-object p0
.end method

.method public final i(F)Lcom/nianticproject/ingress/common/u/ay;
    .locals 1
    .parameter

    .prologue
    .line 1036
    iget v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/nianticproject/ingress/common/u/ay;->a:I

    .line 1037
    iput p1, p0, Lcom/nianticproject/ingress/common/u/ay;->l:F

    .line 1039
    return-object p0
.end method
