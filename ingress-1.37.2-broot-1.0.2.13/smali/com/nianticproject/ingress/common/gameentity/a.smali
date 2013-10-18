.class public final Lcom/nianticproject/ingress/common/gameentity/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/shared/af;)Lcom/google/a/a/aj;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/model/k;",
            "Lcom/nianticproject/ingress/shared/af;",
            ")",
            "Lcom/google/a/a/aj",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    const-string/jumbo v0, "InventoryItems.getUsableResources"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 120
    const/4 v1, 0x1

    .line 121
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    goto :goto_0

    .line 126
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/google/a/a/aj;->b(Ljava/lang/Object;)Lcom/google/a/a/aj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 128
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    .line 126
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/google/a/a/aj;->d()Lcom/google/a/a/aj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 128
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/model/k;Ljava/util/Set;)Lcom/google/a/a/aj;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/model/k;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;)",
            "Lcom/google/a/a/aj",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 144
    :try_start_0
    const-string/jumbo v2, "InventoryItems.getUsableResources"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 145
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    .line 146
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 148
    invoke-interface {p0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 150
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 145
    goto :goto_0

    .line 155
    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/a/a/aj;->b(Ljava/lang/Object;)Lcom/google/a/a/aj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 157
    :goto_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    .line 155
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/google/a/a/aj;->d()Lcom/google/a/a/aj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 157
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/model/k;Ljava/lang/String;)Lcom/nianticproject/ingress/common/inventory/ui/q;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 326
    :try_start_0
    const-string/jumbo v0, "InventoryItems.getPortalKeyForPortal"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/shared/af;)Lcom/google/a/a/aj;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/google/a/a/aj;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    move-object v0, v2

    .line 347
    :goto_0
    return-object v0

    .line 333
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 334
    invoke-virtual {v0}, Lcom/google/a/a/aj;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 335
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    .line 336
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 344
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 340
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 342
    invoke-static {p0, v3}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/common/model/k;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/inventory/ui/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 344
    :cond_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Lcom/nianticproject/ingress/common/model/k;Ljava/util/List;)Lcom/nianticproject/ingress/gameentity/f;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/model/k;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            ">;)",
            "Lcom/nianticproject/ingress/gameentity/f;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 168
    :try_start_0
    const-string/jumbo v0, "InventoryItems.getHighestUsableResource"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "use getHighestUsableResonator() instead"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 175
    const v2, 0x7fffffff

    .line 176
    invoke-interface {p0, p1}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v7

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 178
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    .line 179
    if-eqz v1, :cond_4

    .line 180
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getLevel()I

    move-result v6

    .line 181
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 182
    const/4 v9, -0x1

    if-eq v3, v9, :cond_4

    if-lt v3, v2, :cond_0

    if-ne v3, v2, :cond_4

    if-le v6, v5, :cond_4

    :cond_0
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    move v2, v6

    :goto_2
    move-object v4, v1

    move v5, v2

    move v2, v0

    .line 191
    goto :goto_1

    :cond_1
    move v0, v5

    .line 169
    goto :goto_0

    .line 192
    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getEntity()Lcom/nianticproject/ingress/gameentity/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 194
    :goto_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :cond_3
    move-object v0, v7

    .line 192
    goto :goto_3

    .line 194
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_4
    move v0, v2

    move-object v1, v4

    move v2, v5

    goto :goto_2
.end method

.method public static varargs a(Lcom/nianticproject/ingress/common/model/k;[Lcom/nianticproject/ingress/shared/af;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/model/k;",
            "[",
            "Lcom/nianticproject/ingress/shared/af;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    const-string/jumbo v0, "InventoryItems.getResources"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 99
    invoke-static {p1}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 100
    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Lcom/nianticproject/ingress/common/model/k;)Z
    .locals 2
    .parameter

    .prologue
    .line 78
    :try_start_0
    const-string/jumbo v0, "InventoryItems.isInventoryFull"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/nianticproject/ingress/common/gameentity/a;->c(Lcom/nianticproject/ingress/common/model/k;)I

    move-result v0

    .line 80
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->d()Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/knobs/InventoryKnobs;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_0

    .line 82
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x1

    .line 86
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

.method public static a(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/AccessLevel;

    .line 49
    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/nianticproject/ingress/common/model/k;->l()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/components/AccessLevel;->usage(I)Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/gameentity/components/AccessLevel$RestrictedUsageResult;->a()Z

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

.method public static b(Lcom/nianticproject/ingress/common/model/k;)Ljava/util/Map;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/model/k;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    const-string/jumbo v0, "InventoryItems.getUsableInventoryModEntities"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/google/a/c/hc;->e()Ljava/util/TreeMap;

    move-result-object v2

    .line 407
    invoke-static {}, Lcom/nianticproject/ingress/common/gameentity/g;->c()Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/common/model/k;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_1

    .line 410
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    .line 411
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/ModResource;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/ModResource;

    .line 412
    if-eqz v1, :cond_0

    .line 413
    sget-object v4, Lcom/nianticproject/ingress/common/gameentity/g;->a:Ljava/util/HashSet;

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    invoke-static {p0, v0}, Lcom/nianticproject/ingress/common/gameentity/a;->a(Lcom/nianticproject/ingress/common/model/k;Lcom/nianticproject/ingress/gameentity/f;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/ModResource;->getRarity()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/gameentity/components/l;->c()I

    move-result v1

    .line 433
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v2
.end method

.method private static c(Lcom/nianticproject/ingress/common/model/k;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    :try_start_0
    const-string/jumbo v0, "InventoryItems.countInventory"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 60
    invoke-interface {p0}, Lcom/nianticproject/ingress/common/model/k;->m()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 62
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
