.class public final La/a/a/a/b/ap;
.super La/a/a/a/b/n;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/b/n",
        "<TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field protected transient b:La/a/a/a/b/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected c:I

.field protected transient d:La/a/a/a/b/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected transient e:La/a/a/a/b/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected volatile transient f:La/a/a/a/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/c/q",
            "<",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field protected volatile transient g:La/a/a/a/b/cm;

.field protected volatile transient h:La/a/a/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/c/j",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected transient i:Z

.field protected j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected transient k:La/a/a/a/b/cc;

.field private transient l:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, La/a/a/a/b/n;-><init>()V

    .line 89
    invoke-direct {p0}, La/a/a/a/b/ap;->m()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b/ap;->c:I

    .line 96
    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 270
    const/16 v0, 0x30

    new-array v0, v0, [Z

    iput-object v0, p0, La/a/a/a/b/ap;->l:[Z

    .line 271
    return-void
.end method

.method private n()La/a/a/a/b/ap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/b/ap",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1643
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/ap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1648
    iput-object v6, v0, La/a/a/a/b/ap;->g:La/a/a/a/b/cm;

    .line 1649
    iput-object v6, v0, La/a/a/a/b/ap;->h:La/a/a/a/c/j;

    .line 1650
    iput-object v6, v0, La/a/a/a/b/ap;->f:La/a/a/a/c/q;

    .line 1651
    invoke-direct {v0}, La/a/a/a/b/ap;->m()V

    .line 1652
    iget v1, p0, La/a/a/a/b/ap;->c:I

    if-eqz v1, :cond_5

    .line 1654
    new-instance v1, La/a/a/a/b/at;

    invoke-direct {v1}, La/a/a/a/b/at;-><init>()V

    new-instance v2, La/a/a/a/b/at;

    invoke-direct {v2}, La/a/a/a/b/at;-><init>()V

    .line 1656
    iget-object v3, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    invoke-virtual {v1, v3}, La/a/a/a/b/at;->c(La/a/a/a/b/at;)V

    .line 1658
    invoke-virtual {v2, v6}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    move-object v3, v1

    move-object v1, v2

    .line 1660
    :cond_0
    :goto_0
    invoke-virtual {v3}, La/a/a/a/b/at;->d()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1661
    iget-object v4, v3, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    invoke-virtual {v4}, La/a/a/a/b/at;->l()La/a/a/a/b/at;

    move-result-object v4

    .line 1662
    iget-object v5, v1, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    invoke-virtual {v4, v5}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    .line 1663
    invoke-virtual {v4, v1}, La/a/a/a/b/at;->b(La/a/a/a/b/at;)V

    .line 1664
    invoke-virtual {v1, v4}, La/a/a/a/b/at;->c(La/a/a/a/b/at;)V

    .line 1665
    iget-object v3, v3, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 1666
    iget-object v1, v1, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 1685
    :goto_1
    invoke-virtual {v3}, La/a/a/a/b/at;->e()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1686
    iget-object v4, v3, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    invoke-virtual {v4}, La/a/a/a/b/at;->l()La/a/a/a/b/at;

    move-result-object v4

    .line 1687
    iget-object v5, v1, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    invoke-virtual {v4, v5}, La/a/a/a/b/at;->b(La/a/a/a/b/at;)V

    .line 1688
    invoke-virtual {v4, v1}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    .line 1689
    invoke-virtual {v1, v4}, La/a/a/a/b/at;->d(La/a/a/a/b/at;)V

    goto :goto_0

    .line 1646
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 1680
    :cond_1
    iget-object v1, v1, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 1669
    :cond_2
    invoke-virtual {v3}, La/a/a/a/b/at;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1670
    iget-object v3, v3, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 1671
    if-nez v3, :cond_1

    .line 1672
    iput-object v6, v1, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 1673
    iget-object v1, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v1, v0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    .line 1674
    iget-object v1, v0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    iput-object v1, v0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    .line 1675
    :goto_2
    iget-object v1, v0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    iget-object v1, v1, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    if-eqz v1, :cond_3

    iget-object v1, v0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    iget-object v1, v1, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v1, v0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    goto :goto_2

    .line 1676
    :cond_3
    iget-object v1, v0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    iput-object v1, v0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    .line 1677
    :goto_3
    iget-object v1, v0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    iget-object v1, v1, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    if-eqz v1, :cond_5

    iget-object v1, v0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    iget-object v1, v1, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v1, v0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    goto :goto_3

    .line 1682
    :cond_4
    iget-object v3, v3, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 1683
    iget-object v1, v1, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    goto :goto_1

    .line 1693
    :cond_5
    return-object v0
.end method


# virtual methods
.method final a(JJ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, La/a/a/a/b/ap;->k:La/a/a/a/b/cc;

    if-nez v0, :cond_2

    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/a/a/b/ap;->k:La/a/a/a/b/cc;

    invoke-interface {v0}, La/a/a/a/b/cc;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic a()La/a/a/a/b/cl;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, La/a/a/a/b/ap;->f()La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Ljava/lang/Object;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 504
    iput-boolean v1, p0, La/a/a/a/b/ap;->i:Z

    .line 506
    iget-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/ap;->b_:Ljava/lang/Object;

    .line 771
    :goto_0
    return-object v0

    .line 509
    :cond_0
    iget-object v4, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    move v0, v1

    move-object v2, v3

    .line 511
    :goto_1
    iget-wide v5, v4, La/a/a/a/b/at;->a:J

    invoke-virtual {p0, p1, p2, v5, v6}, La/a/a/a/b/ap;->a(JJ)I

    move-result v5

    if-eqz v5, :cond_3

    .line 515
    if-lez v5, :cond_1

    move v0, v7

    :goto_2
    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {v4}, La/a/a/a/b/at;->c()La/a/a/a/b/at;

    move-result-object v2

    if-nez v2, :cond_3a

    iget-object v0, p0, La/a/a/a/b/ap;->b_:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, v1

    .line 515
    goto :goto_2

    .line 521
    :cond_2
    invoke-virtual {v4}, La/a/a/a/b/at;->b()La/a/a/a/b/at;

    move-result-object v2

    if-nez v2, :cond_3a

    iget-object v0, p0, La/a/a/a/b/ap;->b_:Ljava/lang/Object;

    goto :goto_0

    .line 525
    :cond_3
    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    if-nez v5, :cond_4

    invoke-virtual {v4}, La/a/a/a/b/at;->i()La/a/a/a/b/at;

    move-result-object v5

    iput-object v5, p0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    .line 526
    :cond_4
    iget-object v5, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    if-nez v5, :cond_5

    invoke-virtual {v4}, La/a/a/a/b/at;->j()La/a/a/a/b/at;

    move-result-object v5

    iput-object v5, p0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    .line 528
    :cond_5
    invoke-virtual {v4}, La/a/a/a/b/at;->e()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 529
    invoke-virtual {v4}, La/a/a/a/b/at;->d()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 530
    if-eqz v2, :cond_9

    .line 531
    if-eqz v0, :cond_8

    iget-object v5, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    invoke-virtual {v2, v5}, La/a/a/a/b/at;->b(La/a/a/a/b/at;)V

    move v6, v0

    .line 600
    :goto_3
    if-eqz v2, :cond_26

    .line 602
    iget-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    if-ne v2, v0, :cond_18

    move-object v5, v3

    .line 604
    :goto_4
    if-nez v6, :cond_2b

    .line 605
    if-eqz v5, :cond_20

    iget-object v0, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    if-eq v0, v2, :cond_20

    move v0, v7

    .line 606
    :goto_5
    invoke-virtual {v2}, La/a/a/a/b/at;->g()V

    .line 608
    invoke-virtual {v2}, La/a/a/a/b/at;->f()I

    move-result v6

    if-eq v6, v7, :cond_26

    .line 609
    invoke-virtual {v2}, La/a/a/a/b/at;->f()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_38

    .line 611
    iget-object v6, v2, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 614
    invoke-virtual {v6}, La/a/a/a/b/at;->f()I

    move-result v8

    if-ne v8, v10, :cond_25

    .line 619
    iget-object v8, v6, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 620
    iget-object v9, v8, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v9, v6, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 621
    iput-object v6, v8, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 622
    iget-object v9, v8, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v9, v2, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 623
    iput-object v2, v8, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 625
    invoke-virtual {v8}, La/a/a/a/b/at;->f()I

    move-result v9

    if-ne v9, v7, :cond_21

    .line 626
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->a(I)V

    .line 627
    invoke-virtual {v2, v10}, La/a/a/a/b/at;->a(I)V

    .line 640
    :goto_6
    invoke-virtual {v8, v1}, La/a/a/a/b/at;->a(I)V

    .line 642
    invoke-virtual {v8}, La/a/a/a/b/at;->d()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 643
    invoke-virtual {v2, v8}, La/a/a/a/b/at;->b(La/a/a/a/b/at;)V

    .line 644
    invoke-virtual {v8, v1}, La/a/a/a/b/at;->a(Z)V

    .line 646
    :cond_6
    invoke-virtual {v8}, La/a/a/a/b/at;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 647
    invoke-virtual {v6, v8}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    .line 648
    invoke-virtual {v8, v1}, La/a/a/a/b/at;->b(Z)V

    .line 651
    :cond_7
    if-eqz v5, :cond_24

    .line 652
    if-eqz v0, :cond_23

    iput-object v8, v5, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    move v6, v0

    move-object v2, v5

    goto :goto_3

    .line 532
    :cond_8
    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    invoke-virtual {v2, v5}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    move v6, v0

    goto :goto_3

    .line 534
    :cond_9
    if-eqz v0, :cond_a

    iget-object v5, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    :goto_7
    iput-object v5, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    move v6, v0

    goto :goto_3

    :cond_a
    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_7

    .line 537
    :cond_b
    invoke-virtual {v4}, La/a/a/a/b/at;->j()La/a/a/a/b/at;

    move-result-object v5

    iget-object v6, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v6, v5, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 539
    if-eqz v2, :cond_d

    .line 540
    if-eqz v0, :cond_c

    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v5, v2, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    move v6, v0

    goto/16 :goto_3

    .line 541
    :cond_c
    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v5, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    move v6, v0

    goto/16 :goto_3

    .line 543
    :cond_d
    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v5, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    move v6, v0

    goto/16 :goto_3

    .line 547
    :cond_e
    iget-object v5, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 549
    invoke-virtual {v5}, La/a/a/a/b/at;->d()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 550
    iget-object v6, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v6, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 551
    invoke-virtual {v4}, La/a/a/a/b/at;->d()Z

    move-result v6

    invoke-virtual {v5, v6}, La/a/a/a/b/at;->a(Z)V

    .line 552
    invoke-virtual {v5}, La/a/a/a/b/at;->d()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v5}, La/a/a/a/b/at;->j()La/a/a/a/b/at;

    move-result-object v6

    iput-object v5, v6, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 553
    :cond_f
    if-eqz v2, :cond_11

    .line 554
    if-eqz v0, :cond_10

    iput-object v5, v2, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 559
    :goto_8
    invoke-virtual {v4}, La/a/a/a/b/at;->f()I

    move-result v0

    invoke-virtual {v5, v0}, La/a/a/a/b/at;->a(I)V

    move v6, v7

    move-object v2, v5

    .line 561
    goto/16 :goto_3

    .line 555
    :cond_10
    iput-object v5, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_8

    .line 557
    :cond_11
    iput-object v5, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    goto :goto_8

    .line 568
    :cond_12
    :goto_9
    iget-object v6, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 569
    invoke-virtual {v6}, La/a/a/a/b/at;->d()Z

    move-result v8

    if-nez v8, :cond_13

    move-object v5, v6

    .line 570
    goto :goto_9

    .line 573
    :cond_13
    invoke-virtual {v6}, La/a/a/a/b/at;->e()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual {v5, v6}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    .line 576
    :goto_a
    iget-object v8, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v8, v6, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 578
    invoke-virtual {v4}, La/a/a/a/b/at;->d()Z

    move-result v8

    if-nez v8, :cond_14

    .line 579
    invoke-virtual {v4}, La/a/a/a/b/at;->j()La/a/a/a/b/at;

    move-result-object v8

    iput-object v6, v8, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 580
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->a(Z)V

    .line 583
    :cond_14
    iget-object v8, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v8, v6, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 584
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->b(Z)V

    .line 586
    if-eqz v2, :cond_17

    .line 587
    if-eqz v0, :cond_16

    iput-object v6, v2, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 592
    :goto_b
    invoke-virtual {v4}, La/a/a/a/b/at;->f()I

    move-result v0

    invoke-virtual {v6, v0}, La/a/a/a/b/at;->a(I)V

    move v6, v1

    move-object v2, v5

    .line 594
    goto/16 :goto_3

    .line 574
    :cond_15
    iget-object v8, v6, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v8, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_a

    .line 588
    :cond_16
    iput-object v6, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_b

    .line 590
    :cond_17
    iput-object v6, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    goto :goto_b

    :cond_18
    move-object v0, v2

    move-object v5, v2

    .line 602
    :goto_c
    invoke-virtual {v0}, La/a/a/a/b/at;->e()Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v0, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    if-eqz v0, :cond_19

    iget-object v8, v0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    if-eq v8, v2, :cond_1b

    :cond_19
    :goto_d
    invoke-virtual {v5}, La/a/a/a/b/at;->d()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v5, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_d

    :cond_1a
    iget-object v0, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    :cond_1b
    move-object v5, v0

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v5}, La/a/a/a/b/at;->d()Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v5, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    if-eqz v5, :cond_1d

    iget-object v8, v5, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    if-eq v8, v2, :cond_39

    :cond_1d
    :goto_e
    invoke-virtual {v0}, La/a/a/a/b/at;->e()Z

    move-result v5

    if-nez v5, :cond_1e

    iget-object v0, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    goto :goto_e

    :cond_1e
    iget-object v0, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    :goto_f
    move-object v5, v0

    goto/16 :goto_4

    :cond_1f
    iget-object v5, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iget-object v0, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    goto :goto_c

    :cond_20
    move v0, v1

    .line 605
    goto/16 :goto_5

    .line 629
    :cond_21
    invoke-virtual {v8}, La/a/a/a/b/at;->f()I

    move-result v9

    if-nez v9, :cond_22

    .line 630
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->a(I)V

    .line 631
    invoke-virtual {v2, v1}, La/a/a/a/b/at;->a(I)V

    goto/16 :goto_6

    .line 636
    :cond_22
    invoke-virtual {v6, v7}, La/a/a/a/b/at;->a(I)V

    .line 637
    invoke-virtual {v2, v1}, La/a/a/a/b/at;->a(I)V

    goto/16 :goto_6

    .line 653
    :cond_23
    iput-object v8, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    move v6, v0

    move-object v2, v5

    goto/16 :goto_3

    .line 655
    :cond_24
    iput-object v8, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    move v6, v0

    move-object v2, v5

    .line 656
    goto/16 :goto_3

    .line 658
    :cond_25
    if-eqz v5, :cond_28

    .line 659
    if-eqz v0, :cond_27

    iput-object v6, v5, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 664
    :goto_10
    invoke-virtual {v6}, La/a/a/a/b/at;->f()I

    move-result v8

    if-nez v8, :cond_29

    .line 665
    iget-object v0, v6, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v0, v2, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 666
    iput-object v2, v6, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 667
    invoke-virtual {v6, v10}, La/a/a/a/b/at;->a(I)V

    .line 668
    invoke-virtual {v2, v7}, La/a/a/a/b/at;->a(I)V

    .line 768
    :cond_26
    :goto_11
    iput-boolean v7, p0, La/a/a/a/b/ap;->i:Z

    .line 769
    iget v0, p0, La/a/a/a/b/ap;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/a/a/a/b/ap;->c:I

    .line 771
    iget-object v0, v4, La/a/a/a/b/at;->b:Ljava/lang/Object;

    goto/16 :goto_0

    .line 660
    :cond_27
    iput-object v6, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_10

    .line 662
    :cond_28
    iput-object v6, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    goto :goto_10

    .line 673
    :cond_29
    invoke-virtual {v6}, La/a/a/a/b/at;->d()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 674
    invoke-virtual {v2, v7}, La/a/a/a/b/at;->b(Z)V

    .line 675
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->a(Z)V

    .line 679
    :goto_12
    iput-object v2, v6, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 680
    invoke-virtual {v2, v1}, La/a/a/a/b/at;->a(I)V

    .line 681
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->a(I)V

    move v6, v0

    move-object v2, v5

    .line 683
    goto/16 :goto_3

    .line 677
    :cond_2a
    iget-object v8, v6, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v8, v2, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    goto :goto_12

    .line 686
    :cond_2b
    if-eqz v5, :cond_2e

    iget-object v0, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    if-eq v0, v2, :cond_2e

    move v0, v7

    .line 687
    :goto_13
    invoke-virtual {v2}, La/a/a/a/b/at;->h()V

    .line 689
    invoke-virtual {v2}, La/a/a/a/b/at;->f()I

    move-result v6

    if-eq v6, v10, :cond_26

    .line 690
    invoke-virtual {v2}, La/a/a/a/b/at;->f()I

    move-result v6

    const/4 v8, -0x2

    if-ne v6, v8, :cond_38

    .line 692
    iget-object v6, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 695
    invoke-virtual {v6}, La/a/a/a/b/at;->f()I

    move-result v8

    if-ne v8, v7, :cond_33

    .line 700
    iget-object v8, v6, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 701
    iget-object v9, v8, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v9, v6, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 702
    iput-object v6, v8, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 703
    iget-object v9, v8, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v9, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 704
    iput-object v2, v8, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 706
    invoke-virtual {v8}, La/a/a/a/b/at;->f()I

    move-result v9

    if-ne v9, v10, :cond_2f

    .line 707
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->a(I)V

    .line 708
    invoke-virtual {v2, v7}, La/a/a/a/b/at;->a(I)V

    .line 721
    :goto_14
    invoke-virtual {v8, v1}, La/a/a/a/b/at;->a(I)V

    .line 723
    invoke-virtual {v8}, La/a/a/a/b/at;->d()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 724
    invoke-virtual {v6, v8}, La/a/a/a/b/at;->b(La/a/a/a/b/at;)V

    .line 725
    invoke-virtual {v8, v1}, La/a/a/a/b/at;->a(Z)V

    .line 727
    :cond_2c
    invoke-virtual {v8}, La/a/a/a/b/at;->e()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 728
    invoke-virtual {v2, v8}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    .line 729
    invoke-virtual {v8, v1}, La/a/a/a/b/at;->b(Z)V

    .line 732
    :cond_2d
    if-eqz v5, :cond_32

    .line 733
    if-eqz v0, :cond_31

    iput-object v8, v5, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    move v6, v0

    move-object v2, v5

    goto/16 :goto_3

    :cond_2e
    move v0, v1

    .line 686
    goto :goto_13

    .line 710
    :cond_2f
    invoke-virtual {v8}, La/a/a/a/b/at;->f()I

    move-result v9

    if-nez v9, :cond_30

    .line 711
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->a(I)V

    .line 712
    invoke-virtual {v2, v1}, La/a/a/a/b/at;->a(I)V

    goto :goto_14

    .line 717
    :cond_30
    invoke-virtual {v6, v10}, La/a/a/a/b/at;->a(I)V

    .line 718
    invoke-virtual {v2, v1}, La/a/a/a/b/at;->a(I)V

    goto :goto_14

    .line 734
    :cond_31
    iput-object v8, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    move v6, v0

    move-object v2, v5

    goto/16 :goto_3

    .line 736
    :cond_32
    iput-object v8, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    move v6, v0

    move-object v2, v5

    .line 737
    goto/16 :goto_3

    .line 739
    :cond_33
    if-eqz v5, :cond_35

    .line 740
    if-eqz v0, :cond_34

    iput-object v6, v5, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 745
    :goto_15
    invoke-virtual {v6}, La/a/a/a/b/at;->f()I

    move-result v8

    if-nez v8, :cond_36

    .line 746
    iget-object v0, v6, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v0, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 747
    iput-object v2, v6, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 748
    invoke-virtual {v6, v7}, La/a/a/a/b/at;->a(I)V

    .line 749
    invoke-virtual {v2, v10}, La/a/a/a/b/at;->a(I)V

    goto/16 :goto_11

    .line 741
    :cond_34
    iput-object v6, v5, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_15

    .line 743
    :cond_35
    iput-object v6, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    goto :goto_15

    .line 754
    :cond_36
    invoke-virtual {v6}, La/a/a/a/b/at;->e()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 755
    invoke-virtual {v2, v7}, La/a/a/a/b/at;->a(Z)V

    .line 756
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->b(Z)V

    .line 760
    :goto_16
    iput-object v2, v6, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 761
    invoke-virtual {v2, v1}, La/a/a/a/b/at;->a(I)V

    .line 762
    invoke-virtual {v6, v1}, La/a/a/a/b/at;->a(I)V

    move v6, v0

    move-object v2, v5

    .line 764
    goto/16 :goto_3

    .line 758
    :cond_37
    iget-object v8, v6, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v8, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_16

    :cond_38
    move v6, v0

    move-object v2, v5

    goto/16 :goto_3

    :cond_39
    move-object v0, v5

    goto/16 :goto_f

    :cond_3a
    move-object v11, v4

    move-object v4, v2

    move-object v2, v11

    goto/16 :goto_1
.end method

.method public final a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 278
    iput-boolean v1, p0, La/a/a/a/b/ap;->i:Z

    .line 280
    iget-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    if-nez v0, :cond_0

    .line 281
    iget v0, p0, La/a/a/a/b/ap;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/ap;->c:I

    .line 282
    new-instance v0, La/a/a/a/b/at;

    invoke-direct {v0, p1, p2, p3}, La/a/a/a/b/at;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    iput-object v0, p0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    iput-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    .line 283
    iput-boolean v6, p0, La/a/a/a/b/ap;->i:Z

    .line 460
    :goto_0
    iget-object v0, p0, La/a/a/a/b/ap;->b_:Ljava/lang/Object;

    :goto_1
    return-object v0

    .line 286
    :cond_0
    iget-object v4, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    iget-object v3, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    move v0, v1

    move-object v5, v3

    move-object v3, v2

    .line 290
    :goto_2
    iget-wide v7, v4, La/a/a/a/b/at;->a:J

    invoke-virtual {p0, p1, p2, v7, v8}, La/a/a/a/b/ap;->a(JJ)I

    move-result v8

    if-nez v8, :cond_1

    .line 291
    iget-object v0, v4, La/a/a/a/b/at;->b:Ljava/lang/Object;

    .line 292
    iput-object p3, v4, La/a/a/a/b/at;->b:Ljava/lang/Object;

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {v4}, La/a/a/a/b/at;->f()I

    move-result v7

    if-eqz v7, :cond_1b

    move v0, v1

    move-object v3, v4

    .line 302
    :goto_3
    iget-object v9, p0, La/a/a/a/b/ap;->l:[Z

    add-int/lit8 v7, v0, 0x1

    if-lez v8, :cond_3

    move v5, v6

    :goto_4
    aput-boolean v5, v9, v0

    if-eqz v5, :cond_5

    .line 303
    invoke-virtual {v4}, La/a/a/a/b/at;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    iget v0, p0, La/a/a/a/b/ap;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/ap;->c:I

    .line 305
    new-instance v0, La/a/a/a/b/at;

    invoke-direct {v0, p1, p2, p3}, La/a/a/a/b/at;-><init>(JLjava/lang/Object;)V

    .line 307
    iput-boolean v6, p0, La/a/a/a/b/ap;->i:Z

    .line 308
    iget-object v5, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    if-nez v5, :cond_2

    iput-object v0, p0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    .line 310
    :cond_2
    iput-object v4, v0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 311
    iget-object v5, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v5, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 313
    invoke-virtual {v4, v0}, La/a/a/a/b/at;->d(La/a/a/a/b/at;)V

    :goto_5
    move v4, v1

    move-object v7, v3

    .line 345
    :goto_6
    if-eq v7, v0, :cond_a

    .line 346
    iget-object v5, p0, La/a/a/a/b/ap;->l:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_8

    invoke-virtual {v7}, La/a/a/a/b/at;->g()V

    .line 349
    :goto_7
    iget-object v8, p0, La/a/a/a/b/ap;->l:[Z

    add-int/lit8 v5, v4, 0x1

    aget-boolean v4, v8, v4

    if-eqz v4, :cond_9

    iget-object v4, v7, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    :goto_8
    move-object v7, v4

    move v4, v5

    goto :goto_6

    :cond_3
    move v5, v1

    .line 302
    goto :goto_4

    .line 319
    :cond_4
    iget-object v0, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v0

    move v0, v7

    goto :goto_2

    .line 322
    :cond_5
    invoke-virtual {v4}, La/a/a/a/b/at;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    iget v0, p0, La/a/a/a/b/ap;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/a/a/a/b/ap;->c:I

    .line 324
    new-instance v0, La/a/a/a/b/at;

    invoke-direct {v0, p1, p2, p3}, La/a/a/a/b/at;-><init>(JLjava/lang/Object;)V

    .line 326
    iput-boolean v6, p0, La/a/a/a/b/ap;->i:Z

    .line 327
    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    if-nez v5, :cond_6

    iput-object v0, p0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    .line 329
    :cond_6
    iput-object v4, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 330
    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v5, v0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 332
    invoke-virtual {v4, v0}, La/a/a/a/b/at;->c(La/a/a/a/b/at;)V

    goto :goto_5

    .line 338
    :cond_7
    iget-object v0, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v0

    move v0, v7

    goto/16 :goto_2

    .line 347
    :cond_8
    invoke-virtual {v7}, La/a/a/a/b/at;->h()V

    goto :goto_7

    .line 349
    :cond_9
    iget-object v4, v7, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_8

    .line 352
    :cond_a
    invoke-virtual {v3}, La/a/a/a/b/at;->f()I

    move-result v0

    const/4 v4, -0x2

    if-ne v0, v4, :cond_11

    .line 353
    iget-object v0, v3, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 355
    invoke-virtual {v0}, La/a/a/a/b/at;->f()I

    move-result v4

    if-ne v4, v10, :cond_c

    .line 357
    invoke-virtual {v0}, La/a/a/a/b/at;->e()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 358
    invoke-virtual {v0, v1}, La/a/a/a/b/at;->b(Z)V

    .line 359
    invoke-virtual {v3, v0}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    .line 363
    :goto_9
    iput-object v3, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 364
    invoke-virtual {v0, v1}, La/a/a/a/b/at;->a(I)V

    .line 365
    invoke-virtual {v3, v1}, La/a/a/a/b/at;->a(I)V

    .line 452
    :goto_a
    if-nez v2, :cond_19

    iput-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    goto/16 :goto_0

    .line 361
    :cond_b
    iget-object v4, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v4, v3, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto :goto_9

    .line 370
    :cond_c
    iget-object v4, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 371
    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v5, v0, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 372
    iput-object v0, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 373
    iget-object v5, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v5, v3, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 374
    iput-object v3, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 375
    invoke-virtual {v4}, La/a/a/a/b/at;->f()I

    move-result v5

    if-ne v5, v10, :cond_f

    .line 376
    invoke-virtual {v0, v1}, La/a/a/a/b/at;->a(I)V

    .line 377
    invoke-virtual {v3, v6}, La/a/a/a/b/at;->a(I)V

    .line 387
    :goto_b
    invoke-virtual {v4, v1}, La/a/a/a/b/at;->a(I)V

    .line 390
    invoke-virtual {v4}, La/a/a/a/b/at;->d()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 391
    invoke-virtual {v0, v4}, La/a/a/a/b/at;->b(La/a/a/a/b/at;)V

    .line 392
    invoke-virtual {v4, v1}, La/a/a/a/b/at;->a(Z)V

    .line 394
    :cond_d
    invoke-virtual {v4}, La/a/a/a/b/at;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 395
    invoke-virtual {v3, v4}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    .line 396
    invoke-virtual {v4, v1}, La/a/a/a/b/at;->b(Z)V

    :cond_e
    move-object v0, v4

    .line 400
    goto :goto_a

    .line 379
    :cond_f
    invoke-virtual {v4}, La/a/a/a/b/at;->f()I

    move-result v5

    if-nez v5, :cond_10

    .line 380
    invoke-virtual {v0, v1}, La/a/a/a/b/at;->a(I)V

    .line 381
    invoke-virtual {v3, v1}, La/a/a/a/b/at;->a(I)V

    goto :goto_b

    .line 384
    :cond_10
    invoke-virtual {v0, v10}, La/a/a/a/b/at;->a(I)V

    .line 385
    invoke-virtual {v3, v1}, La/a/a/a/b/at;->a(I)V

    goto :goto_b

    .line 401
    :cond_11
    invoke-virtual {v3}, La/a/a/a/b/at;->f()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_18

    .line 402
    iget-object v0, v3, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 404
    invoke-virtual {v0}, La/a/a/a/b/at;->f()I

    move-result v4

    if-ne v4, v6, :cond_13

    .line 406
    invoke-virtual {v0}, La/a/a/a/b/at;->d()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 407
    invoke-virtual {v0, v1}, La/a/a/a/b/at;->a(Z)V

    .line 408
    invoke-virtual {v3, v0}, La/a/a/a/b/at;->b(La/a/a/a/b/at;)V

    .line 412
    :goto_c
    iput-object v3, v0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 413
    invoke-virtual {v0, v1}, La/a/a/a/b/at;->a(I)V

    .line 414
    invoke-virtual {v3, v1}, La/a/a/a/b/at;->a(I)V

    goto :goto_a

    .line 410
    :cond_12
    iget-object v4, v0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v4, v3, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    goto :goto_c

    .line 419
    :cond_13
    iget-object v4, v0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 420
    iget-object v5, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    iput-object v5, v0, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 421
    iput-object v0, v4, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 422
    iget-object v5, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    iput-object v5, v3, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    .line 423
    iput-object v3, v4, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    .line 424
    invoke-virtual {v4}, La/a/a/a/b/at;->f()I

    move-result v5

    if-ne v5, v6, :cond_16

    .line 425
    invoke-virtual {v0, v1}, La/a/a/a/b/at;->a(I)V

    .line 426
    invoke-virtual {v3, v10}, La/a/a/a/b/at;->a(I)V

    .line 436
    :goto_d
    invoke-virtual {v4, v1}, La/a/a/a/b/at;->a(I)V

    .line 439
    invoke-virtual {v4}, La/a/a/a/b/at;->d()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 440
    invoke-virtual {v3, v4}, La/a/a/a/b/at;->b(La/a/a/a/b/at;)V

    .line 441
    invoke-virtual {v4, v1}, La/a/a/a/b/at;->a(Z)V

    .line 443
    :cond_14
    invoke-virtual {v4}, La/a/a/a/b/at;->e()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 444
    invoke-virtual {v0, v4}, La/a/a/a/b/at;->a(La/a/a/a/b/at;)V

    .line 445
    invoke-virtual {v4, v1}, La/a/a/a/b/at;->b(Z)V

    :cond_15
    move-object v0, v4

    .line 449
    goto/16 :goto_a

    .line 428
    :cond_16
    invoke-virtual {v4}, La/a/a/a/b/at;->f()I

    move-result v5

    if-nez v5, :cond_17

    .line 429
    invoke-virtual {v0, v1}, La/a/a/a/b/at;->a(I)V

    .line 430
    invoke-virtual {v3, v1}, La/a/a/a/b/at;->a(I)V

    goto :goto_d

    .line 433
    :cond_17
    invoke-virtual {v0, v6}, La/a/a/a/b/at;->a(I)V

    .line 434
    invoke-virtual {v3, v1}, La/a/a/a/b/at;->a(I)V

    goto :goto_d

    .line 450
    :cond_18
    iget-object v0, p0, La/a/a/a/b/ap;->b_:Ljava/lang/Object;

    goto/16 :goto_1

    .line 454
    :cond_19
    iget-object v1, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    if-ne v1, v3, :cond_1a

    iput-object v0, v2, La/a/a/a/b/at;->c:La/a/a/a/b/at;

    goto/16 :goto_0

    .line 455
    :cond_1a
    iput-object v0, v2, La/a/a/a/b/at;->d:La/a/a/a/b/at;

    goto/16 :goto_0

    :cond_1b
    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_3
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, La/a/a/a/b/ap;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 778
    iget-boolean v1, p0, La/a/a/a/b/ap;->i:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, La/a/a/a/b/ap;->b_:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final b(JJ)La/a/a/a/b/bv;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "La/a/a/a/b/bv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1298
    new-instance v0, La/a/a/a/b/ax;

    move-object v1, p0

    move-wide v2, p1

    move-wide v5, p3

    move v7, v4

    invoke-direct/range {v0 .. v7}, La/a/a/a/b/ax;-><init>(La/a/a/a/b/ap;JZJZ)V

    return-object v0
.end method

.method public final b()La/a/a/a/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/j",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, La/a/a/a/b/ap;->h:La/a/a/a/c/j;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/as;

    invoke-direct {v0, p0}, La/a/a/a/b/as;-><init>(La/a/a/a/b/ap;)V

    iput-object v0, p0, La/a/a/a/b/ap;->h:La/a/a/a/c/j;

    .line 1286
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ap;->h:La/a/a/a/c/j;

    return-object v0
.end method

.method public final b(J)Z
    .locals 1
    .parameter

    .prologue
    .line 1065
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/ap;->c(J)La/a/a/a/b/at;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(J)La/a/a/a/b/at;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    .line 241
    :goto_0
    if-eqz v0, :cond_1

    iget-wide v1, v0, La/a/a/a/b/at;->a:J

    invoke-virtual {p0, p1, p2, v1, v2}, La/a/a/a/b/ap;->a(JJ)I

    move-result v1

    if-eqz v1, :cond_1

    if-gez v1, :cond_0

    invoke-virtual {v0}, La/a/a/a/b/at;->b()La/a/a/a/b/at;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La/a/a/a/b/at;->c()La/a/a/a/b/at;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_1
    return-object v0
.end method

.method public final clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 806
    const/4 v0, 0x0

    iput v0, p0, La/a/a/a/b/ap;->c:I

    .line 807
    iput-object v1, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    .line 808
    iput-object v1, p0, La/a/a/a/b/ap;->f:La/a/a/a/c/q;

    .line 809
    iput-object v1, p0, La/a/a/a/b/ap;->h:La/a/a/a/c/j;

    .line 810
    iput-object v1, p0, La/a/a/a/b/ap;->g:La/a/a/a/b/cm;

    .line 811
    iput-object v1, p0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    iput-object v1, p0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    .line 812
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, La/a/a/a/b/ap;->n()La/a/a/a/b/ap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, La/a/a/a/b/ap;->k:La/a/a/a/b/cc;

    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 793
    new-instance v3, La/a/a/a/b/bg;

    invoke-direct {v3, p0, v0}, La/a/a/a/b/bg;-><init>(La/a/a/a/b/ap;B)V

    .line 796
    iget v1, p0, La/a/a/a/b/ap;->c:I

    .line 797
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    .line 798
    invoke-virtual {v3}, La/a/a/a/b/bg;->next()Ljava/lang/Object;

    move-result-object v1

    .line 799
    if-nez v1, :cond_2

    if-nez p1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 802
    :cond_1
    return v0

    .line 799
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method final d(J)La/a/a/a/b/at;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "La/a/a/a/b/at",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v1, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    iget-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    .line 255
    const/4 v2, 0x0

    .line 257
    :goto_0
    if-eqz v1, :cond_1

    iget-wide v2, v1, La/a/a/a/b/at;->a:J

    invoke-virtual {p0, p1, p2, v2, v3}, La/a/a/a/b/ap;->a(JJ)I

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    if-gez v2, :cond_0

    invoke-virtual {v1}, La/a/a/a/b/at;->b()La/a/a/a/b/at;

    move-result-object v0

    :goto_1
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, La/a/a/a/b/at;->c()La/a/a/a/b/at;

    move-result-object v0

    goto :goto_1

    .line 262
    :cond_1
    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public final e(J)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/ap;->c(J)La/a/a/a/b/at;

    move-result-object v0

    .line 1076
    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/b/ap;->b_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final f(J)La/a/a/a/b/bv;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "La/a/a/a/b/bv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1292
    new-instance v0, La/a/a/a/b/ax;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v5, p1

    invoke-direct/range {v0 .. v7}, La/a/a/a/b/ax;-><init>(La/a/a/a/b/ap;JZJZ)V

    return-object v0
.end method

.method public final f()La/a/a/a/b/cm;
    .locals 2

    .prologue
    .line 1248
    iget-object v0, p0, La/a/a/a/b/ap;->g:La/a/a/a/b/cm;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/aw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/a/a/b/aw;-><init>(La/a/a/a/b/ap;B)V

    iput-object v0, p0, La/a/a/a/b/ap;->g:La/a/a/a/b/cm;

    .line 1249
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ap;->g:La/a/a/a/b/cm;

    return-object v0
.end method

.method public final g(J)La/a/a/a/b/bv;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "La/a/a/a/b/bv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1295
    new-instance v0, La/a/a/a/b/ax;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, La/a/a/a/b/ax;-><init>(La/a/a/a/b/ap;JZJZ)V

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1080
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    return-wide v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, La/a/a/a/b/ap;->b:La/a/a/a/b/at;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1084
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    return-wide v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, La/a/a/a/b/ap;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()La/a/a/a/c/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/q",
            "<",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1176
    iget-object v0, p0, La/a/a/a/b/ap;->f:La/a/a/a/c/q;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/a/b/aq;

    invoke-direct {v0, p0}, La/a/a/a/b/aq;-><init>(La/a/a/a/b/ap;)V

    iput-object v0, p0, La/a/a/a/b/ap;->f:La/a/a/a/c/q;

    .line 1214
    :cond_0
    iget-object v0, p0, La/a/a/a/b/ap;->f:La/a/a/a/c/q;

    return-object v0
.end method

.method public final k()La/a/a/a/b/cc;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, La/a/a/a/b/ap;->k:La/a/a/a/b/cc;

    return-object v0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, La/a/a/a/b/ap;->f()La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()La/a/a/a/c/p;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, La/a/a/a/b/ap;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, La/a/a/a/b/ap;->a(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 786
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/ap;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 787
    iget-boolean v1, p0, La/a/a/a/b/ap;->i:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/b/ap;->b_:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1068
    iget v0, p0, La/a/a/a/b/ap;->c:I

    return v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, La/a/a/a/b/ap;->b()La/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method
