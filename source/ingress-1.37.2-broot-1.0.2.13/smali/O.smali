.class final LO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/ac;


# instance fields
.field private synthetic a:LN;


# direct methods
.method constructor <init>(LN;)V
    .locals 0

    iput-object p1, p0, LO;->a:LN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V
    .locals 11

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v2, "R"

    invoke-direct {v0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v2, "X"

    invoke-direct {v0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v2, "U"

    invoke-direct {v0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v2, "C"

    invoke-direct {v0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v2, "M"

    invoke-direct {v0, v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    const/16 v0, 0x9

    if-ge v4, v0, :cond_4

    const/16 v0, 0x8

    if-ge v4, v0, :cond_1

    add-int/lit8 v0, v4, 0x1

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    move-result-object v0

    const/high16 v3, 0x4220

    iget-object v5, p0, LO;->a:LN;

    iget v5, v5, LN;->a:F

    mul-float/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v0, 0x8

    if-ge v4, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "L"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {v3, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v3, -0x4080

    const/4 v5, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, 0x4180

    iget-object v8, p0, LO;->a:LN;

    iget v8, v8, LN;->a:F

    mul-float/2addr v7, v8

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    const/4 v0, 0x5

    new-array v5, v0, [Lcom/nianticproject/ingress/shared/af;

    const/4 v0, 0x0

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v5, v0

    const/4 v0, 0x1

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v5, v0

    const/4 v0, 0x2

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->m:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v5, v0

    const/4 v0, 0x3

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->j:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v5, v0

    const/4 v0, 0x4

    sget-object v3, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    aput-object v3, v5, v0

    array-length v6, v5

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    iget-object v0, p0, LO;->a:LN;

    invoke-static {v0}, LN;->a(LN;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, LO;->a:LN;

    invoke-static {v8}, LN;->a(LN;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v7, LQ;

    iget-object v8, p0, LO;->a:LN;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, LQ;-><init>(LN;B)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v7, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, v7, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    const/high16 v7, -0x4080

    const/high16 v8, -0x4080

    const/high16 v9, -0x4080

    const/high16 v10, -0x4080

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v2, v0

    goto/16 :goto_1

    :cond_2
    const-string v0, "Total"

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/a/a/c;

    move-result-object v0

    const/high16 v2, 0x4180

    iget-object v3, p0, LO;->a:LN;

    iget v3, v3, LN;->a:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "Shields"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->k:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v4, v0

    const/4 v0, 0x3

    new-array v5, v0, [Lcom/nianticproject/ingress/gameentity/components/l;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->b:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v5, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->d:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v5, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->e:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v5, v0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LO;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;[Ljava/lang/String;[Ljava/lang/Object;[Lcom/nianticproject/ingress/gameentity/components/l;)V

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "Heat Sink"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const-string v2, "Multi-hack"

    aput-object v2, v3, v0

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->e:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->h:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v4, v0

    const/4 v0, 0x3

    new-array v5, v0, [Lcom/nianticproject/ingress/gameentity/components/l;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->b:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v5, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->d:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v5, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->e:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v5, v0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LO;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;[Ljava/lang/String;[Ljava/lang/Object;[Lcom/nianticproject/ingress/gameentity/components/l;)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "Link Amp"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->f:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Lcom/nianticproject/ingress/gameentity/components/l;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->d:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v5, v0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LO;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;[Ljava/lang/String;[Ljava/lang/Object;[Lcom/nianticproject/ingress/gameentity/components/l;)V

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "Force Amp"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const-string v2, "Turret"

    aput-object v2, v3, v0

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->d:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/nianticproject/ingress/shared/af;->l:Lcom/nianticproject/ingress/shared/af;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Lcom/nianticproject/ingress/gameentity/components/l;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->d:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v5, v0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LO;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;[Ljava/lang/String;[Ljava/lang/Object;[Lcom/nianticproject/ingress/gameentity/components/l;)V

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "ADA Refactor"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const-string v2, "JARVIS Virus"

    aput-object v2, v3, v0

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/c;->a:Lcom/nianticproject/ingress/gameentity/components/c;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/c;->b:Lcom/nianticproject/ingress/gameentity/components/c;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Lcom/nianticproject/ingress/gameentity/components/l;

    const/4 v0, 0x0

    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/l;->e:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v2, v5, v0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LO;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;[Ljava/lang/String;[Ljava/lang/Object;[Lcom/nianticproject/ingress/gameentity/components/l;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v0, p0, LO;->a:LN;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v3, ""

    invoke-direct {v2, v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-static {v0, v2}, LN;->b(LN;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, LO;->a:LN;

    invoke-static {v0}, LN;->a(LN;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v0

    const/high16 v2, -0x4080

    const/4 v3, 0x0

    const/high16 v4, -0x4080

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->k()Lcom/a/a/c;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    return-void
.end method

.method private a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;[Ljava/lang/String;[Ljava/lang/Object;[Lcom/nianticproject/ingress/gameentity/components/l;)V
    .locals 13

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    move-result-object v2

    const/high16 v3, 0x4220

    iget-object v4, p0, LO;->a:LN;

    iget v4, v4, LN;->a:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v3, p3, v1

    invoke-direct {v2, v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/c;->b(Ljava/lang/Integer;)Lcom/a/a/c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v2

    const/high16 v3, -0x4080

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->k()Lcom/a/a/c;

    new-instance v3, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-object v2, p0, LO;->a:LN;

    invoke-static {v2}, LN;->b(LN;)Ljava/util/Map;

    move-result-object v2

    aget-object v4, p4, v1

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v4, v2, [Lcom/nianticproject/ingress/gameentity/components/l;

    const/4 v2, 0x0

    sget-object v5, Lcom/nianticproject/ingress/gameentity/components/l;->b:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    sget-object v5, Lcom/nianticproject/ingress/gameentity/components/l;->d:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    sget-object v5, Lcom/nianticproject/ingress/gameentity/components/l;->e:Lcom/nianticproject/ingress/gameentity/components/l;

    aput-object v5, v4, v2

    array-length v5, v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    move-object/from16 v0, p5

    invoke-static {v0, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/a/a/c;

    move-result-object v6

    const/high16 v7, -0x4080

    const/high16 v8, -0x4080

    const/high16 v9, -0x4080

    const/high16 v10, -0x4080

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    new-instance v7, LQ;

    iget-object v8, p0, LO;->a:LN;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, LQ;-><init>(LN;B)V

    iget-object v8, v7, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->getLabel()Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    invoke-static {p2, v6}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/gameentity/components/l;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v8, v7, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v8

    const/high16 v9, -0x4080

    const/high16 v10, -0x4080

    const/high16 v11, -0x4080

    const/high16 v12, -0x4080

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/a/a/c;->a(FFFF)Lcom/a/a/c;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 7

    iget-object v0, p0, LO;->a:LN;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;-><init>()V

    invoke-static {v0, v1}, LN;->a(LN;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    iget-object v0, p0, LO;->a:LN;

    invoke-static {v0}, LN;->a(LN;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    move-result-object v0

    const-string v1, "nav-button-clear-down"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->down:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p0, LO;->a:LN;

    invoke-static {v0}, LN;->a(LN;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    move-result-object v0

    const-string v1, "nav-button-clear"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->up:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v0, p0, LO;->a:LN;

    invoke-static {v0}, LN;->a(LN;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    move-result-object v0

    const-string v1, "default-font"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getFont(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    const v2, 0x40d33333

    iget-object v3, p0, LO;->a:LN;

    iget v3, v3, LN;->a:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    iget-object v1, p0, LO;->a:LN;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v3, ""

    invoke-direct {v2, v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    invoke-static {v1, v2}, LN;->a(LN;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-direct {p0, p1, v0}, LO;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Table;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setFillParent(Z)V

    iget-object v2, p0, LO;->a:LN;

    new-instance v3, Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    sget-object v5, LJ;->a:Lcom/nianticproject/ingress/common/inventory/i;

    sget-object v6, Lcom/nianticproject/ingress/common/ui/widget/ag;->MOD_ITEMS:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/nianticproject/ingress/common/ui/widget/aa;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;ILcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/ui/widget/ag;)V

    invoke-static {v2, v3}, LN;->a(LN;Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    iget-object v2, p0, LO;->a:LN;

    invoke-static {v2}, LN;->a(LN;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/widget/aa;->a()V

    iget-object v2, p0, LO;->a:LN;

    invoke-static {v2}, LN;->a(LN;)Lcom/nianticproject/ingress/common/ui/widget/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->n()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->f()Lcom/a/a/c;

    move-result-object v0

    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Lcom/a/a/c;->e(F)Lcom/a/a/c;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public final a(F)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final dispose()V
    .locals 0

    return-void
.end method
