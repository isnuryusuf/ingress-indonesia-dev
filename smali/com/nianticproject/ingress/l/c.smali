.class public final Lcom/nianticproject/ingress/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/l/ae;Ljava/util/ArrayList;[Lcom/nianticproject/ingress/l/ah;I)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/l/ae;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;[",
            "Lcom/nianticproject/ingress/l/ah;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 39
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/visuals/m;->b()Lcom/nianticproject/ingress/common/scanner/visuals/m;

    move-result-object v9

    .line 41
    if-eqz v9, :cond_5

    .line 42
    invoke-virtual {v9}, Lcom/nianticproject/ingress/common/scanner/visuals/m;->c()V

    .line 46
    new-array v1, p3, [D

    .line 47
    new-array v2, p3, [D

    move v0, v8

    .line 49
    :goto_0
    if-ge v0, p3, :cond_0

    .line 50
    aget-object v3, p2, v0

    .line 51
    iget-wide v4, v3, Lcom/nianticproject/ingress/l/ah;->a:D

    aput-wide v4, v1, v0

    .line 52
    iget-wide v3, v3, Lcom/nianticproject/ingress/l/ah;->b:D

    aput-wide v3, v2, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v1, v2}, Lcom/google/a/a/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/nianticproject/ingress/common/scanner/visuals/m;->a(Lcom/google/a/a/ak;)V

    .line 56
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v10

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/location/Location;

    .line 61
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    .line 62
    invoke-virtual {p0, v4}, Lcom/nianticproject/ingress/l/ae;->c(Landroid/location/Location;)D

    move-result-wide v6

    .line 63
    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 69
    :cond_1
    :goto_2
    const v0, 0x3f333333

    iput v0, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 70
    invoke-virtual {v4}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 71
    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 72
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/o;

    invoke-static {v4}, Lcom/nianticproject/ingress/l/ae;->a(Landroid/location/Location;)D

    move-result-wide v2

    invoke-static {v4}, Lcom/nianticproject/ingress/l/ae;->b(Landroid/location/Location;)D

    move-result-wide v4

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/scanner/visuals/o;-><init>(Lcom/badlogic/gdx/graphics/Color;DDD)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_2

    :cond_3
    move v0, v8

    .line 71
    goto :goto_3

    .line 77
    :cond_4
    invoke-virtual {v9, v10}, Lcom/nianticproject/ingress/common/scanner/visuals/m;->a(Ljava/util/List;)V

    .line 79
    :cond_5
    return-void
.end method
