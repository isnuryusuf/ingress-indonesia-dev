.class public final Lcom/nianticproject/ingress/common/c/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/nianticproject/ingress/common/c/bi;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/bi;",
            ">;"
        }
    .end annotation
.end field

.field private k:F

.field private l:F

.field private m:Z

.field private n:I

.field private o:J

.field private p:I

.field private q:I


# direct methods
.method private constructor <init>(FFZIZZZZLjava/lang/String;Lcom/nianticproject/ingress/common/c/bp;Lcom/nianticproject/ingress/common/c/bq;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZIZZZZ",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/c/bp;",
            "Lcom/nianticproject/ingress/common/c/bq;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/common/c/bi;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput v0, p0, Lcom/nianticproject/ingress/common/c/bn;->n:I

    .line 345
    iput v0, p0, Lcom/nianticproject/ingress/common/c/bn;->p:I

    .line 347
    iput v0, p0, Lcom/nianticproject/ingress/common/c/bn;->q:I

    .line 378
    iput p1, p0, Lcom/nianticproject/ingress/common/c/bn;->k:F

    .line 379
    iput p2, p0, Lcom/nianticproject/ingress/common/c/bn;->l:F

    .line 380
    iput-boolean p3, p0, Lcom/nianticproject/ingress/common/c/bn;->c:Z

    .line 381
    iput-boolean p5, p0, Lcom/nianticproject/ingress/common/c/bn;->e:Z

    .line 382
    iput-boolean p6, p0, Lcom/nianticproject/ingress/common/c/bn;->f:Z

    .line 383
    iput p4, p0, Lcom/nianticproject/ingress/common/c/bn;->d:I

    .line 384
    iput-boolean p7, p0, Lcom/nianticproject/ingress/common/c/bn;->g:Z

    .line 385
    iput-boolean p8, p0, Lcom/nianticproject/ingress/common/c/bn;->h:Z

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    .line 390
    iput-object p9, p0, Lcom/nianticproject/ingress/common/c/bn;->i:Ljava/lang/String;

    .line 391
    invoke-virtual {p10}, Lcom/nianticproject/ingress/common/c/bp;->a()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bn;->a:I

    .line 392
    invoke-virtual {p11}, Lcom/nianticproject/ingress/common/c/bq;->a()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bn;->b:I

    .line 393
    return-void
.end method

.method synthetic constructor <init>(FFZIZZZZLjava/lang/String;Lcom/nianticproject/ingress/common/c/bp;Lcom/nianticproject/ingress/common/c/bq;Ljava/util/Collection;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct/range {p0 .. p12}, Lcom/nianticproject/ingress/common/c/bn;-><init>(FFZIZZZZLjava/lang/String;Lcom/nianticproject/ingress/common/c/bp;Lcom/nianticproject/ingress/common/c/bq;Ljava/util/Collection;)V

    return-void
.end method

.method private a(Z)Lcom/nianticproject/ingress/common/c/bi;
    .locals 4
    .parameter

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bn;->z()Z

    move-result v1

    .line 584
    const/4 v0, 0x0

    .line 586
    iget v2, p0, Lcom/nianticproject/ingress/common/c/bn;->q:I

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 587
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    iget v1, p0, Lcom/nianticproject/ingress/common/c/bn;->q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    .line 588
    if-eqz p1, :cond_0

    .line 589
    iget v1, p0, Lcom/nianticproject/ingress/common/c/bn;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nianticproject/ingress/common/c/bn;->q:I

    .line 602
    :cond_0
    :goto_0
    return-object v0

    .line 591
    :cond_1
    if-nez v1, :cond_2

    iget v2, p0, Lcom/nianticproject/ingress/common/c/bn;->n:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/common/c/bn;->d:I

    if-ge v2, v3, :cond_0

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    .line 594
    if-eqz p1, :cond_0

    .line 596
    const/4 v2, 0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/c/bn;->q:I

    .line 597
    if-nez v1, :cond_0

    .line 598
    iget v1, p0, Lcom/nianticproject/ingress/common/c/bn;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nianticproject/ingress/common/c/bn;->n:I

    goto :goto_0
.end method

.method private a(Lcom/nianticproject/ingress/common/c/bi;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->i:Ljava/lang/String;

    .line 502
    :goto_0
    return-object v0

    .line 499
    :cond_0
    if-eqz p1, :cond_1

    .line 500
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/bi;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 502
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()Z
    .locals 2

    .prologue
    .line 457
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bn;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(FF)Lcom/nianticproject/ingress/common/c/bn;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 424
    const/4 v0, 0x0

    .line 425
    iget v2, p0, Lcom/nianticproject/ingress/common/c/bn;->k:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3cf5c28f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 426
    iput p1, p0, Lcom/nianticproject/ingress/common/c/bn;->k:F

    move v0, v1

    .line 429
    :cond_0
    iget v2, p0, Lcom/nianticproject/ingress/common/c/bn;->l:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3ba3d70a

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 430
    iput p2, p0, Lcom/nianticproject/ingress/common/c/bn;->l:F

    .line 433
    :goto_0
    if-eqz v1, :cond_1

    .line 434
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/c/bn;->k:F

    iget v2, p0, Lcom/nianticproject/ingress/common/c/bn;->l:F

    invoke-interface {v0, p0, v1, v2}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;FF)V

    .line 436
    :cond_1
    return-object p0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/c/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    return-object v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bn;->k:F

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bn;->l:F

    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 690
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bn;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    return-object v0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->c:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->e:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 755
    if-ne p0, p1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v0

    .line 758
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 759
    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 762
    goto :goto_0

    .line 764
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/common/c/bn;

    .line 765
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bn;->c:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/common/c/bn;->c:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 766
    goto :goto_0

    .line 768
    :cond_4
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bn;->m:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/common/c/bn;->m:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 769
    goto :goto_0

    .line 771
    :cond_5
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bn;->f:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/common/c/bn;->f:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 772
    goto :goto_0

    .line 774
    :cond_6
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bn;->g:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/common/c/bn;->g:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 775
    goto :goto_0

    .line 777
    :cond_7
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bn;->i:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 778
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bn;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/common/c/bn;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 779
    goto :goto_0

    .line 781
    :cond_8
    iget-object v2, p1, Lcom/nianticproject/ingress/common/c/bn;->i:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 782
    goto :goto_0

    .line 784
    :cond_9
    iget v2, p0, Lcom/nianticproject/ingress/common/c/bn;->d:I

    iget v3, p1, Lcom/nianticproject/ingress/common/c/bn;->d:I

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 785
    goto :goto_0

    .line 787
    :cond_a
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    if-nez v2, :cond_b

    .line 788
    iget-object v2, p1, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    .line 789
    goto :goto_0

    .line 791
    :cond_b
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 792
    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->f:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->g:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->h:Z

    return v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 667
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bn;->a(Z)Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 734
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bn;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 741
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/nianticproject/ingress/common/c/bn;->b:I

    add-int/2addr v0, v4

    .line 742
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    .line 743
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/nianticproject/ingress/common/c/bn;->d:I

    add-int/2addr v0, v4

    .line 744
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 745
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->f:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    .line 746
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->g:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    .line 747
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/nianticproject/ingress/common/c/bn;->h:Z

    if-eqz v4, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 748
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->i:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v3

    :goto_5
    add-int/2addr v0, v1

    .line 749
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    if-nez v1, :cond_6

    :goto_6
    add-int/2addr v0, v3

    .line 750
    return v0

    :cond_0
    move v0, v2

    .line 742
    goto :goto_0

    :cond_1
    move v0, v2

    .line 744
    goto :goto_1

    :cond_2
    move v0, v2

    .line 745
    goto :goto_2

    :cond_3
    move v0, v2

    .line 746
    goto :goto_3

    :cond_4
    move v1, v2

    .line 747
    goto :goto_4

    .line 748
    :cond_5
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 749
    :cond_6
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_6
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bn;->a(Z)Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bn;->a(Lcom/nianticproject/ingress/common/c/bi;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->m:Z

    return v0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->m:Z

    .line 529
    return-void
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bn;->a:I

    return v0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bn;->b:I

    return v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bn;->m:Z

    .line 550
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/c/e;->b(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 551
    return-void
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/c/bn;->y()Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v0

    return-object v0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 557
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/c/e;->c(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 558
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 564
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/c/e;->d(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 565
    return-void
.end method

.method public final q()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 571
    iput v0, p0, Lcom/nianticproject/ingress/common/c/bn;->q:I

    .line 572
    iput v0, p0, Lcom/nianticproject/ingress/common/c/bn;->n:I

    .line 573
    return-void
.end method

.method public final r()Lcom/nianticproject/ingress/common/c/bi;
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bn;->a(Z)Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 682
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final s()Lcom/nianticproject/ingress/common/c/g;
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bn;->a(Z)Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ba;->a()Lcom/nianticproject/ingress/common/c/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bh;->a()Lcom/nianticproject/ingress/common/c/g;

    move-result-object v0

    .line 623
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/g;->c:Lcom/nianticproject/ingress/common/c/g;

    goto :goto_0
.end method

.method public final t()J
    .locals 2

    .prologue
    .line 632
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/c/bn;->o:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 699
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    .line 700
    const-string/jumbo v2, "none"

    .line 701
    const-string/jumbo v1, "unknown"

    .line 708
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 709
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    .line 710
    if-eqz v0, :cond_2

    .line 711
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/ba;->toString()Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bn;->a(Lcom/nianticproject/ingress/common/c/bi;)Ljava/lang/String;

    move-result-object v0

    .line 715
    :goto_0
    const-string/jumbo v2, "{firstClip=%s clipIndex=%d channel=%s aliveTime=%d volume=%.2f prioirty=%d"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    iget v1, p0, Lcom/nianticproject/ingress/common/c/bn;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    aput-object v0, v5, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/nianticproject/ingress/common/c/bn;->o:J

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v10

    iget v0, p0, Lcom/nianticproject/ingress/common/c/bn;->k:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v11

    const/4 v0, 0x5

    iget v1, p0, Lcom/nianticproject/ingress/common/c/bn;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v4, v2, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 719
    const-string/jumbo v0, " timeout=%d expired=%s exclusive=%s layered=%s dampen=%s persistent=%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/nianticproject/ingress/common/c/bn;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bn;->m:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v8

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bn;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v9

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bn;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v10

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bn;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x5

    iget-boolean v5, p0, Lcom/nianticproject/ingress/common/c/bn;->f:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v4, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 721
    const-string/jumbo v0, " trackLooping=%s clips="

    new-array v1, v8, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bn;->z()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v4, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v1, v3

    .line 722
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bn;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    .line 724
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, " [%s]"

    :goto_2
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-virtual {v4, v2, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 722
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 724
    :cond_0
    const-string/jumbo v2, " %s"

    goto :goto_2

    .line 726
    :cond_1
    const-string/jumbo v0, "}"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 727
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    .line 729
    return-object v0

    :cond_2
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_0
.end method

.method public final u()J
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bn;->p:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/c/bn;->o:J

    .line 647
    return-void
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/nianticproject/ingress/common/c/bn;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bn;->p:I

    .line 654
    return-void
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bn;->p:I

    .line 661
    return-void
.end method

.method public final y()Lcom/nianticproject/ingress/common/c/bi;
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bn;->a(Z)Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v0

    .line 673
    if-nez v0, :cond_0

    .line 674
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 676
    :cond_0
    return-object v0
.end method
