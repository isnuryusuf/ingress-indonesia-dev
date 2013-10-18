.class public final Lcom/nianticproject/ingress/common/itemupgrade/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Set;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/common/model/ab;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/ui/widget/c;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/components/Resonator;",
            ">;",
            "Lcom/nianticproject/ingress/common/model/k;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ")",
            "Lcom/nianticproject/ingress/common/model/ab;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 438
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateRechargeModel"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 439
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/t;->c:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/missions/tutorial/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/nianticproject/ingress/common/model/ab;->a:Lcom/nianticproject/ingress/common/model/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return-object v0

    .line 442
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v1, :cond_1

    .line 443
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->B:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Ljava/lang/Enum;)V

    .line 444
    sget-object v0, Lcom/nianticproject/ingress/common/model/ab;->a:Lcom/nianticproject/ingress/common/model/ab;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 447
    :cond_1
    :try_start_2
    invoke-static {p0, p3}, Lcom/nianticproject/ingress/common/itemupgrade/a;->c(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    sget-object v0, Lcom/nianticproject/ingress/common/model/ab;->a:Lcom/nianticproject/ingress/common/model/ab;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 481
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 450
    :cond_2
    :try_start_3
    invoke-static {p0, p3}, Lcom/nianticproject/ingress/common/itemupgrade/a;->d(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    sget-object v0, Lcom/nianticproject/ingress/common/model/ab;->a:Lcom/nianticproject/ingress/common/model/ab;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 481
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 455
    :cond_3
    :try_start_4
    invoke-interface {p3}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v7

    .line 458
    if-eqz v7, :cond_4

    .line 459
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v2

    invoke-interface {p3}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v3

    invoke-interface {p3}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v4

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/util/Set;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;J)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p4, :cond_7

    .line 463
    const/4 v9, 0x0

    .line 464
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-virtual {v7}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v3

    invoke-interface {p3}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v4

    invoke-interface {p3}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v5

    invoke-interface {p3}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v1

    int-to-long v7, v1

    move-object v1, p4

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/f;Ljava/util/Set;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;JJ)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    move-object v1, v0

    move v0, v9

    .line 473
    :goto_1
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 474
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V

    .line 475
    if-eqz v0, :cond_5

    sget-object v0, Lcom/nianticproject/ingress/common/model/ab;->b:Lcom/nianticproject/ingress/common/model/ab;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 481
    :goto_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    .line 470
    :cond_4
    :try_start_5
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->q:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    goto :goto_1

    .line 475
    :cond_5
    sget-object v0, Lcom/nianticproject/ingress/common/model/ab;->c:Lcom/nianticproject/ingress/common/model/ab;

    goto :goto_2

    .line 477
    :cond_6
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Ljava/lang/Enum;)V

    .line 478
    sget-object v0, Lcom/nianticproject/ingress/common/model/ab;->a:Lcom/nianticproject/ingress/common/model/ab;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 481
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_7
    move-object v1, v0

    move v0, v6

    goto :goto_1
.end method

.method public static a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 617
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateUseFlipCardModel"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 619
    const/16 v0, 0x3e8

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 629
    :goto_0
    return-void

    .line 626
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 491
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateAddModModel"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 493
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    sget-object v0, Lcom/nianticproject/ingress/shared/ae;->d:Lcom/nianticproject/ingress/shared/ae;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 556
    :goto_0
    return-void

    .line 499
    :cond_0
    :try_start_1
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Modable;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Modable;

    .line 500
    if-eqz v0, :cond_3

    .line 501
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/model/k;->k()Ljava/lang/String;

    move-result-object v3

    move v2, v1

    .line 502
    :goto_1
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/nianticproject/ingress/shared/Mod;->getInstallingUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 503
    :cond_2
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->b()Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->b()I

    move-result v0

    .line 504
    if-lt v1, v0, :cond_3

    .line 505
    sget-object v0, Lcom/nianticproject/ingress/shared/p;->n:Lcom/nianticproject/ingress/shared/p;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 511
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->h()Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    move-result-object v3

    .line 512
    const v0, 0x7fffffff

    .line 517
    invoke-static {p2}, Lcom/nianticproject/ingress/common/gameentity/a;->b(Lcom/nianticproject/ingress/common/model/k;)Ljava/util/Map;

    move-result-object v4

    .line 519
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 520
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 521
    const-class v6, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v1, v6}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    .line 522
    if-eqz v1, :cond_4

    .line 524
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v1

    .line 527
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->a(Lcom/nianticproject/ingress/shared/af;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    .line 528
    goto :goto_2

    .line 530
    :cond_5
    invoke-static {p0, p2, v2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 555
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    .line 533
    :cond_6
    :try_start_3
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->d(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    .line 555
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    .line 537
    :cond_7
    :try_start_4
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 538
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->canTeamLinkMods(Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 539
    const-string/jumbo v0, "Enemy Portal"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 555
    :goto_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    .line 540
    :cond_8
    :try_start_5
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 541
    sget-object v0, Lcom/nianticproject/ingress/shared/ae;->d:Lcom/nianticproject/ingress/shared/ae;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Ljava/lang/Enum;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 555
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 543
    :cond_9
    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/common/gameentity/g;->c()Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Ljava/util/Set;)Lcom/google/a/a/aj;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v1

    if-nez v1, :cond_a

    .line 547
    const-string/jumbo v0, "No Mod"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 548
    :cond_a
    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 549
    const-string/jumbo v0, "No usable Mod"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 551
    :cond_b
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public static a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateHackModel"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/t;->a:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/missions/tutorial/t;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 226
    :goto_0
    return-void

    .line 199
    :cond_0
    :try_start_1
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 200
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    .line 201
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/k;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/shared/ai;)I

    move-result v0

    .line 204
    invoke-static {p0, p2, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 208
    :cond_1
    :try_start_2
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->d(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 213
    :cond_2
    :try_start_3
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    sget-object v0, Lcom/nianticproject/ingress/shared/ae;->d:Lcom/nianticproject/ingress/shared/ae;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Ljava/lang/Enum;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 219
    :cond_3
    :try_start_4
    invoke-interface {p3}, Lcom/nianticproject/ingress/common/h/l;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 220
    const-string/jumbo v0, "Hacking..."

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 222
    :cond_4
    const/4 v0, 0x1

    :try_start_5
    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 225
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    :try_start_0
    const-string/jumbo v2, "ActionModels.updateStartModModel"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    .line 84
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v3

    .line 87
    invoke-static {p1, v3}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    if-eqz p4, :cond_1

    .line 92
    const-string/jumbo v1, "UPGRADE"

    .line 93
    const-string/jumbo v0, "portal"

    .line 105
    :goto_0
    invoke-interface {p0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a()Z

    move-result v3

    invoke-interface {p0, v3, v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/t;->c:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/missions/tutorial/t;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 133
    :goto_1
    return-void

    .line 95
    :cond_1
    :try_start_1
    const-string/jumbo v1, "UPGRADE"

    goto :goto_0

    .line 98
    :cond_2
    if-eqz p4, :cond_3

    .line 99
    const-string/jumbo v1, "UPGRADE"

    .line 100
    const-string/jumbo v0, "status"

    goto :goto_0

    .line 102
    :cond_3
    const-string/jumbo v1, "MOD STATUS"

    goto :goto_0

    .line 112
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 116
    :cond_5
    :try_start_2
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->d(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 132
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 120
    :cond_6
    :try_start_3
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    .line 121
    sget-object v0, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    if-ne v2, v0, :cond_7

    .line 124
    const-string/jumbo v0, "Neutral Portal."

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 132
    :goto_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 125
    :cond_7
    :try_start_4
    invoke-interface {p3}, Lcom/nianticproject/ingress/common/h/l;->c()Z

    move-result v0

    if-nez v0, :cond_8

    .line 127
    const-string/jumbo v0, "Not available"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 132
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 129
    :cond_8
    const/4 v0, 0x1

    :try_start_5
    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public static a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/scanner/ed;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 639
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateDestinationModel"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 640
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/t;->c:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/missions/tutorial/t;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p2}, Lcom/nianticproject/ingress/common/scanner/ed;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    const/4 v0, 0x1

    const-string/jumbo v1, "CANCEL"

    const-string/jumbo v2, "target"

    invoke-interface {p0, v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :cond_0
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 649
    return-void

    .line 644
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    const-string/jumbo v1, "TARGET"

    const-string/jumbo v2, "portal"

    invoke-interface {p0, v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private static a(Lcom/nianticproject/ingress/common/ui/widget/c;Ljava/lang/Enum;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/ui/widget/c;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 756
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/c;->a()Lcom/nianticproject/ingress/common/ui/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/c;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 757
    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method private static a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;I)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 693
    :try_start_0
    const-string/jumbo v1, "ActionModels.updateXmState"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 694
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/common/itemupgrade/a;->c(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 701
    :goto_0
    return v0

    .line 697
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v1

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 698
    sget-object v1, Lcom/nianticproject/ingress/shared/ae;->t:Lcom/nianticproject/ingress/shared/ae;

    invoke-static {p0, v1}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 701
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private static a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/missions/tutorial/t;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 742
    const-class v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialConstraints;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialConstraints;

    .line 743
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/nianticproject/ingress/common/missions/tutorial/TutorialConstraints;->permits(Lcom/nianticproject/ingress/common/missions/tutorial/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    :cond_0
    const/4 v0, 0x0

    .line 747
    :goto_0
    return v0

    .line 746
    :cond_1
    const-string/jumbo v0, "Not available"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/gameentity/components/i;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 657
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateDropModel"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 658
    invoke-static {p0, p1}, Lcom/nianticproject/ingress/common/itemupgrade/a;->d(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static b(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateFireUntargetedRadialWeaponModel"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 567
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->d(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/gameentity/i;->a(Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;)I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v2

    const-class v0, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/shared/e;->c:Lcom/nianticproject/ingress/shared/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 575
    :goto_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v1

    if-nez v1, :cond_4

    .line 576
    sget-object v1, Lcom/nianticproject/ingress/common/itemupgrade/b;->a:[I

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/Result;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 580
    const-string/jumbo v0, "Cosmic Rays"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :cond_0
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 588
    return-void

    .line 573
    :cond_1
    :try_start_1
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/AccessLevel;

    invoke-interface {p1, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/AccessLevel;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/components/AccessLevel;->usage(I)Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->a()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/shared/e;->h:Lcom/nianticproject/ingress/shared/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/EmpWeapon;->canBeFired()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/nianticproject/ingress/shared/e;->i:Lcom/nianticproject/ingress/shared/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_0

    .line 577
    :pswitch_0
    const-string/jumbo v0, "Weapon not available"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 587
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 578
    :pswitch_1
    :try_start_2
    const-string/jumbo v0, "Access level insufficient"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 583
    :cond_4
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 235
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateStartLinkModel"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 236
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v0

    .line 238
    sget-object v2, Lcom/nianticproject/ingress/common/missions/tutorial/t;->c:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    invoke-static {p0, p1, v2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/missions/tutorial/t;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 282
    :goto_0
    return-void

    .line 242
    :cond_0
    :try_start_1
    sget-object v2, Lcom/nianticproject/ingress/shared/model/d;->h:Lcom/nianticproject/ingress/shared/model/d;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/shared/model/d;->a()I

    move-result v2

    invoke-static {p0, p2, v2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 246
    :cond_1
    :try_start_2
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->d(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 250
    :cond_2
    :try_start_3
    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    if-ne v0, v2, :cond_3

    .line 251
    const-string/jumbo v0, "Wrong faction"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 252
    :cond_3
    :try_start_4
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    if-eq v0, v2, :cond_4

    .line 253
    const-string/jumbo v0, "Enemy Portal"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 281
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 254
    :cond_4
    :try_start_5
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 255
    sget-object v0, Lcom/nianticproject/ingress/shared/ae;->d:Lcom/nianticproject/ingress/shared/ae;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Ljava/lang/Enum;)V

    goto :goto_1

    .line 257
    :cond_5
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/Portal;

    .line 258
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getLinkedResonatorGuids()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_6

    move v0, v1

    .line 260
    :goto_2
    if-eqz v0, :cond_7

    .line 262
    const-string/jumbo v0, "Resonator slot available"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 263
    :cond_7
    invoke-interface {p3}, Lcom/nianticproject/ingress/common/h/l;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 266
    const-string/jumbo v0, "Deploying..."

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :cond_8
    sget-object v1, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    .line 269
    invoke-static {p2, v1}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/shared/af;)Lcom/google/a/a/aj;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z

    move-result v2

    if-nez v2, :cond_9

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/af;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 273
    :cond_9
    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No usable "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/af;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 276
    :cond_a
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method

.method public static b(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/common/h/l;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    :try_start_0
    const-string/jumbo v2, "ActionModels.updateStartResonateModel"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 142
    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    .line 143
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/model/k;->h()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v2

    .line 146
    invoke-static {p1, v2}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 149
    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/model/k;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    if-eqz p4, :cond_1

    .line 151
    const-string/jumbo v1, "DEPLOY"

    .line 152
    const-string/jumbo v0, "resonator"

    .line 164
    :goto_0
    invoke-interface {p0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a()Z

    move-result v2

    invoke-interface {p0, v2, v1, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/t;->b:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    invoke-static {p0, p1, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/common/missions/tutorial/t;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 186
    :goto_1
    return-void

    .line 154
    :cond_1
    :try_start_1
    const-string/jumbo v1, "DEPLOY"

    goto :goto_0

    .line 157
    :cond_2
    if-eqz p4, :cond_3

    .line 158
    const-string/jumbo v1, "DEPLOY"

    .line 159
    const-string/jumbo v0, "status"

    goto :goto_0

    .line 161
    :cond_3
    const-string/jumbo v1, "RES STATUS"

    goto :goto_0

    .line 171
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/nianticproject/ingress/common/itemupgrade/a;->a(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 175
    :cond_5
    :try_start_2
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/common/itemupgrade/a;->d(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 179
    :cond_6
    :try_start_3
    invoke-interface {p3}, Lcom/nianticproject/ingress/common/h/l;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 180
    const-string/jumbo v0, "Not available"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    :goto_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_1

    .line 182
    :cond_7
    const/4 v0, 0x1

    :try_start_4
    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 185
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private static c(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 711
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateXmDepletedState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 712
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->b()Lcom/nianticproject/ingress/shared/f;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/f;->b:Lcom/nianticproject/ingress/shared/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/shared/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const-string/jumbo v0, "Need more XM"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x1

    .line 716
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method private static d(Lcom/nianticproject/ingress/common/ui/widget/c;Lcom/nianticproject/ingress/common/model/k;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 726
    :try_start_0
    const-string/jumbo v0, "ActionModels.updateLocationState"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 727
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/model/k;->g()Lcom/nianticproject/ingress/common/ad;

    move-result-object v0

    .line 728
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->G()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ad;->c()F

    move-result v0

    const/high16 v1, 0x447a

    cmpl-float v0, v0, v1

## Change from nez -- Really Disable Location Inaccurate file a.smali  
    if-nez v0, :cond_0

    .line 730
    const-string/jumbo v0, "Location inaccurate"

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/ui/widget/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x1

    .line 733
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
