.class public final Lcom/nianticproject/ingress/shared/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/knobs/PortalKnobBundle;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/knobs/PortalKnobBundle;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/ab;->a:Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    .line 38
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;JILjava/lang/String;Lcom/nianticproject/ingress/gameentity/components/Resonator;)Lcom/nianticproject/ingress/shared/Result;
    .locals 6
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
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/google/a/d/u;",
            "Lcom/nianticproject/ingress/shared/ai;",
            "JI",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/gameentity/components/Resonator;",
            ")",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 178
    if-eqz p9, :cond_1

    const/4 v0, 0x1

    move v3, v0

    .line 179
    :goto_0
    if-nez p2, :cond_2

    move-object v0, v2

    .line 181
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v1

    sget-object v4, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    if-eq v1, v4, :cond_3

    .line 182
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->h:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    .line 242
    :goto_2
    return-object v0

    .line 178
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 179
    :cond_2
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    goto :goto_1

    .line 184
    :cond_3
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getLevel()I

    move-result v1

    .line 185
    if-le v1, p7, :cond_4

    .line 186
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->y:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_2

    .line 188
    :cond_4
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->p:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_2

    .line 191
    :cond_5
    invoke-static {p3}, Lcom/nianticproject/ingress/shared/b/a;->b(Lcom/google/a/d/u;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    move-result-object v0

    .line 192
    invoke-static {v0, p1}, Lcom/nianticproject/ingress/shared/ac;->a(Lcom/nianticproject/ingress/gameentity/components/LocationE6;Lcom/nianticproject/ingress/gameentity/components/Portal;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 193
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->q:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_2

    .line 196
    :cond_6
    invoke-static {}, Lcom/nianticproject/ingress/common/q;->h()Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    move-result-object v4

    .line 198
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getFreeSlots()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->isEmpty()Z

    move-result v0

    .line 199
    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    .line 200
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->m:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_2

    .line 202
    :cond_7
    if-nez v0, :cond_8

    if-eqz v3, :cond_8

    .line 203
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->n:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_2

    .line 206
    :cond_8
    if-eqz v3, :cond_9

    invoke-interface {p9}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLevel()I

    move-result v0

    if-gt v1, v0, :cond_9

    .line 207
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->v:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto :goto_2

    .line 213
    :cond_9
    invoke-interface {p1, p8}, Lcom/nianticproject/ingress/gameentity/components/Portal;->resonatorLevelsForOwner(Ljava/lang/String;)Lcom/google/a/c/ht;

    move-result-object v5

    .line 214
    if-eqz v3, :cond_a

    .line 215
    invoke-interface {p9}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/google/a/c/ht;->remove(Ljava/lang/Object;)Z

    .line 217
    :cond_a
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    invoke-interface {p2, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "missing ResourceWithLevels component: entity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ResourceWithLevels;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/google/a/c/ht;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/ab;->a:Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->a()Lcom/nianticproject/ingress/shared/ResonatorLimits;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v5}, Lcom/nianticproject/ingress/shared/ResonatorLimits;->a(Lcom/google/a/c/ht;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 220
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->F:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto/16 :goto_2

    .line 223
    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v4, v1}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->c(I)I

    move-result v0

    int-to-long v0, v0

    .line 225
    :goto_3
    cmp-long v0, v0, p5

    if-ltz v0, :cond_e

    .line 226
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->b:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto/16 :goto_2

    .line 223
    :cond_d
    invoke-virtual {v4, v1}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->b(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_3

    .line 230
    :cond_e
    if-eqz v3, :cond_10

    .line 231
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p9}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLinkedPortalGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 232
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->w:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto/16 :goto_2

    .line 234
    :cond_f
    invoke-interface {p9}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getEntityGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->resonatorOwner(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-nez v0, :cond_10

    .line 238
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->E:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto/16 :goto_2

    .line 242
    :cond_10
    invoke-static {v2}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/components/Resonator;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;JILjava/lang/String;)Lcom/nianticproject/ingress/shared/Result;
    .locals 10
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
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/gameentity/components/Resonator;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/google/a/d/u;",
            "Lcom/nianticproject/ingress/shared/ai;",
            "JI",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/nianticproject/ingress/shared/ab;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;JILjava/lang/String;Lcom/nianticproject/ingress/gameentity/components/Resonator;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;JILjava/lang/String;)Lcom/nianticproject/ingress/shared/Result;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/google/a/d/u;",
            "Lcom/nianticproject/ingress/shared/ai;",
            "JI",
            "Ljava/lang/String;",
            ")",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/nianticproject/ingress/shared/ab;->a(Lcom/nianticproject/ingress/gameentity/components/Portal;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/ai;JILjava/lang/String;Lcom/nianticproject/ingress/gameentity/components/Resonator;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/components/Portal;Ljava/lang/String;Lcom/nianticproject/ingress/shared/r;)Lcom/nianticproject/ingress/shared/Result;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/nianticproject/ingress/gameentity/components/Portal;",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/r;",
            ")",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Ljava/lang/Void;",
            "Lcom/nianticproject/ingress/shared/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

    .line 50
    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->o:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v1

    .line 73
    :cond_0
    :goto_0
    return-object v1

    .line 54
    :cond_1
    const-class v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {p1, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    .line 55
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    invoke-interface {p1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/Resonator;

    .line 56
    if-nez v2, :cond_2

    .line 57
    sget-object v0, Lcom/nianticproject/ingress/shared/ad;->e:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/Resonator;->getLevel()I

    move-result v2

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v5

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;->getTeam()Lcom/nianticproject/ingress/shared/ai;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/ai;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Lcom/nianticproject/ingress/shared/ad;->p:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v1

    .line 62
    :goto_1
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/Result;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 64
    invoke-static {v3}, Lcom/nianticproject/ingress/gameentity/components/b;->a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/ai;

    move-result-object v6

    .line 65
    invoke-interface {p1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7, v2, p4, p3}, Lcom/nianticproject/ingress/gameentity/components/Portal;->addLinkedResonator(Ljava/lang/String;ILcom/nianticproject/ingress/shared/r;Ljava/lang/String;)V

    .line 66
    sget-object v2, Lcom/nianticproject/ingress/shared/ai;->c:Lcom/nianticproject/ingress/shared/ai;

    if-ne v6, v2, :cond_0

    .line 67
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/Captured;

    invoke-interface {v3, v2}, Lcom/nianticproject/ingress/gameentity/f;->remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    .line 68
    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;

    invoke-direct {v2, v4, v5, p3}, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;-><init>(JLjava/lang/String;)V

    invoke-interface {v3, v2}, Lcom/nianticproject/ingress/gameentity/f;->add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V

    .line 69
    const-class v2, Lcom/nianticproject/ingress/gameentity/components/ControllingTeam;

    invoke-interface {v3, v2}, Lcom/nianticproject/ingress/gameentity/f;->remove(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/DynamicComponent;

    .line 70
    invoke-interface {v3, v0}, Lcom/nianticproject/ingress/gameentity/f;->add(Lcom/nianticproject/ingress/gameentity/DynamicComponent;)V

    goto :goto_0

    .line 60
    :cond_3
    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getFreeSlots()Lcom/google/a/c/du;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/a/c/du;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v1, Lcom/nianticproject/ingress/shared/ad;->m:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getIndexPoint()Lcom/google/a/d/u;

    move-result-object v5

    invoke-interface {p2}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    const-class v6, Lcom/nianticproject/ingress/gameentity/components/PlayerActionRange;

    invoke-interface {v1, v6}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/PlayerActionRange;

    if-eqz v1, :cond_5

    invoke-interface {v1, v5}, Lcom/nianticproject/ingress/gameentity/components/PlayerActionRange;->inRange(Lcom/google/a/d/u;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_6

    sget-object v1, Lcom/nianticproject/ingress/shared/ad;->q:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2, p3}, Lcom/nianticproject/ingress/gameentity/components/Portal;->resonatorLevelsForOwner(Ljava/lang/String;)Lcom/google/a/c/ht;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/a/c/ht;->a(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/nianticproject/ingress/shared/ab;->a:Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    invoke-virtual {v5}, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;->a()Lcom/nianticproject/ingress/shared/ResonatorLimits;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/nianticproject/ingress/shared/ResonatorLimits;->a(I)I

    move-result v1

    if-lt v4, v1, :cond_7

    sget-object v1, Lcom/nianticproject/ingress/shared/ad;->F:Lcom/nianticproject/ingress/shared/ad;

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/Result;->b(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/Result;->a(Ljava/lang/Object;)Lcom/nianticproject/ingress/shared/Result;

    move-result-object v1

    goto/16 :goto_1
.end method
