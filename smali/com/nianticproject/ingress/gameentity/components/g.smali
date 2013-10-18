.class public final Lcom/nianticproject/ingress/gameentity/components/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 154
    move v1, v0

    move v2, v0

    .line 155
    :goto_0
    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 156
    invoke-interface {p0, v1}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/Mod;->getStatModifiers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 155
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_1
    return v2
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;)J
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-interface/range {p0 .. p0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->linkedModCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 57
    const-wide/16 v4, 0x0

    .line 81
    :cond_0
    :goto_0
    return-wide v4

    .line 59
    :cond_1
    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/h;->a:[I

    invoke-virtual/range {p1 .. p1}, Lcom/nianticproject/ingress/gameentity/components/m;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 81
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 62
    :pswitch_0
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    move-wide v13, v3

    move-wide v4, v13

    move v3, v2

    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v2

    if-ge v3, v2, :cond_0

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lcom/nianticproject/ingress/shared/Mod;->getStatModifiers()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_2

    .line 65
    :pswitch_1
    invoke-interface/range {p0 .. p0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_4

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    move-wide v13, v3

    move-wide v4, v13

    move v3, v2

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->a(ILcom/nianticproject/ingress/gameentity/components/m;)I

    move-result v2

    int-to-long v9, v2

    mul-long/2addr v7, v9

    long-to-double v7, v7

    add-double/2addr v4, v7

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_5
    const-wide v2, 0x408f400000000000L

    div-double v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    goto/16 :goto_0

    .line 70
    :pswitch_2
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v13, v3

    move v3, v2

    move-wide v14, v4

    move-wide v5, v14

    move v4, v13

    :goto_4
    invoke-interface/range {p0 .. p0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v2

    if-ge v3, v2, :cond_8

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Lcom/nianticproject/ingress/shared/Mod;->getStatModifiers()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_5

    :cond_8
    if-lez v4, :cond_9

    long-to-double v2, v5

    int-to-double v5, v4

    div-double/2addr v2, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->a(ILcom/nianticproject/ingress/gameentity/components/m;)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    goto/16 :goto_0

    :cond_9
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .line 73
    :pswitch_3
    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/o;->b:Lcom/nianticproject/ingress/gameentity/components/o;

    invoke-virtual/range {p1 .. p1}, Lcom/nianticproject/ingress/gameentity/components/m;->a()Lcom/nianticproject/ingress/gameentity/components/o;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/gameentity/components/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    invoke-interface/range {p0 .. p0}, Lcom/nianticproject/ingress/gameentity/components/Modable;->maxModCount()I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/gameentity/components/g;->a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_a

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/nianticproject/ingress/gameentity/components/m;->b()I

    move-result v2

    int-to-long v3, v2

    const/4 v2, 0x0

    move-wide v13, v3

    move-wide v4, v13

    move v3, v2

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_b

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    add-int/lit8 v7, v3, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->a(ILcom/nianticproject/ingress/gameentity/components/m;)I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x408f400000000000L

    div-double/2addr v7, v9

    long-to-double v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/nianticproject/ingress/gameentity/components/m;->b()I

    move-result v9

    int-to-double v9, v9

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    long-to-double v11, v11

    mul-double/2addr v7, v11

    sub-double v7, v9, v7

    mul-double/2addr v4, v7

    double-to-long v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/nianticproject/ingress/gameentity/components/m;->b()I

    move-result v2

    int-to-long v7, v2

    div-long/2addr v4, v7

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/nianticproject/ingress/gameentity/components/m;->b()I

    move-result v2

    int-to-long v2, v2

    sub-long v4, v2, v4

    goto/16 :goto_0

    .line 78
    :pswitch_4
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lcom/nianticproject/ingress/gameentity/components/Modable;Lcom/nianticproject/ingress/gameentity/components/m;I)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/Modable;",
            "Lcom/nianticproject/ingress/gameentity/components/m;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p2}, Lcom/google/a/c/eq;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 240
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 241
    invoke-interface {p0, v1}, Lcom/nianticproject/ingress/gameentity/components/Modable;->getLinkedMod(I)Lcom/nianticproject/ingress/shared/Mod;

    move-result-object v0

    .line 242
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 243
    :goto_1
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 242
    :cond_1
    invoke-interface {v0}, Lcom/nianticproject/ingress/shared/Mod;->getStatModifiers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_1

    .line 249
    :cond_2
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    return-object v2
.end method
