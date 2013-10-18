.class public LN;
.super Lcom/nianticproject/ingress/common/ui/a;


# instance fields
.field final a:F

.field private a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

.field private a:Lcom/nianticproject/ingress/common/ui/widget/aa;

.field private a:Ljava/util/Map;

.field private b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, LN;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN;->b:Ljava/util/Map;

    sget-object v0, LJ;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, LN;->a:F

    invoke-virtual {p0}, LN;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    new-instance v1, LO;

    invoke-direct {v1, p0}, LO;-><init>(LN;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    return-void
.end method

.method static synthetic a(LN;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 1

    iget-object v0, p0, LN;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object v0
.end method

.method static synthetic a(LN;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, LN;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method static synthetic a(LN;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
    .locals 1

    iget-object v0, p0, LN;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    return-object v0
.end method

.method static synthetic a(LN;Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;)Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;
    .locals 0

    iput-object p1, p0, LN;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton$TextButtonStyle;

    return-object p1
.end method

.method static synthetic a(LN;)Lcom/nianticproject/ingress/common/ui/widget/aa;
    .locals 1

    iget-object v0, p0, LN;->a:Lcom/nianticproject/ingress/common/ui/widget/aa;

    return-object v0
.end method

.method static synthetic a(LN;Lcom/nianticproject/ingress/common/ui/widget/aa;)Lcom/nianticproject/ingress/common/ui/widget/aa;
    .locals 0

    iput-object p1, p0, LN;->a:Lcom/nianticproject/ingress/common/ui/widget/aa;

    return-object p1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string v0, "-"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%,d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(LN;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, LN;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(LN;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iput-object p1, p0, LN;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p1
.end method

.method static synthetic b(LN;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, LN;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, LN;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ;

    iget-object v4, v1, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const/4 v5, 0x0

    invoke-static {v5}, LN;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, v1, LQ;->a:Lcom/nianticproject/ingress/gameentity/f;

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, LN;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ;

    iget-object v4, v1, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    const/4 v5, 0x0

    invoke-static {v5}, LN;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, v1, LQ;->a:Lcom/nianticproject/ingress/gameentity/f;

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v9, 0x8

    new-array v12, v9, [I

    const/4 v9, 0x0

    sget-object v10, LJ;->a:Lcom/nianticproject/ingress/common/g/o;

    invoke-virtual {v10}, Lcom/nianticproject/ingress/common/g/o;->e()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a(Lcom/nianticproject/ingress/common/model/k;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v9, v7

    move v7, v5

    move v5, v3

    move v3, v1

    move/from16 v18, v2

    move v2, v8

    move v8, v6

    move v6, v4

    move/from16 v4, v18

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/inventory/ui/q;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->g()I

    move-result v14

    add-int v10, v2, v14

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->e()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->a()Lcom/nianticproject/ingress/shared/af;

    move-result-object v16

    sget-object v2, LP;->a:[I

    invoke-virtual/range {v16 .. v16}, Lcom/nianticproject/ingress/shared/af;->ordinal()I

    move-result v17

    aget v2, v2, v17

    packed-switch v2, :pswitch_data_0

    move v2, v10

    goto :goto_2

    :pswitch_0
    aget v2, v12, v15

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, LN;->a:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    iput-object v1, v2, LQ;->a:Lcom/nianticproject/ingress/gameentity/f;

    :cond_4
    aget v1, v12, v15

    add-int/2addr v1, v14

    aput v1, v12, v15

    add-int v1, v5, v14

    move v5, v1

    move v2, v10

    goto :goto_2

    :pswitch_1
    add-int/2addr v9, v14

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_5

    add-int/2addr v8, v14

    const/4 v2, 0x1

    :cond_5
    :goto_4
    if-nez v2, :cond_6

    add-int/2addr v7, v14

    const/4 v2, 0x1

    :cond_6
    :goto_5
    if-nez v2, :cond_7

    add-int/2addr v6, v14

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, LN;->a:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ;

    move-object/from16 v18, v2

    move v2, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object/from16 v9, v18

    :goto_6
    if-eqz v9, :cond_8

    iget-object v11, v9, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-static {v14}, LN;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v1

    iput-object v1, v9, LQ;->a:Lcom/nianticproject/ingress/gameentity/f;

    :cond_8
    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v2

    move v2, v10

    goto/16 :goto_2

    :pswitch_2
    add-int v2, v4, v14

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v4, v2

    move v2, v10

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, LN;->b:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->d()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ;

    move-object/from16 v18, v2

    move v2, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object/from16 v9, v18

    goto :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, LN;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->h()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v2

    const-class v15, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {v2, v15}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/gameentity/components/FlipCard;

    invoke-interface {v2}, Lcom/nianticproject/ingress/gameentity/components/FlipCard;->getFlipCardType()Lcom/nianticproject/ingress/gameentity/components/c;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/q;->d()Lcom/nianticproject/ingress/gameentity/components/l;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQ;

    move-object/from16 v18, v2

    move v2, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move-object/from16 v9, v18

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    move v10, v1

    :goto_7
    const/16 v1, 0x8

    if-ge v10, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, LN;->a:Ljava/util/Map;

    sget-object v11, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ;

    iget-object v1, v1, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    aget v11, v12, v10

    invoke-static {v11}, LN;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, LN;->a:Ljava/util/Map;

    sget-object v10, Lcom/nianticproject/ingress/shared/af;->a:Lcom/nianticproject/ingress/shared/af;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/16 v10, 0x8

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ;

    iget-object v1, v1, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-static {v9}, LN;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, LN;->a:Ljava/util/Map;

    sget-object v9, Lcom/nianticproject/ingress/shared/af;->b:Lcom/nianticproject/ingress/shared/af;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/16 v9, 0x8

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ;

    iget-object v1, v1, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-static {v8}, LN;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, LN;->a:Ljava/util/Map;

    sget-object v8, Lcom/nianticproject/ingress/shared/af;->m:Lcom/nianticproject/ingress/shared/af;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/16 v8, 0x8

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ;

    iget-object v1, v1, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-static {v7}, LN;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, LN;->a:Ljava/util/Map;

    sget-object v7, Lcom/nianticproject/ingress/shared/af;->j:Lcom/nianticproject/ingress/shared/af;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/16 v7, 0x8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ;

    iget-object v1, v1, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-static {v6}, LN;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, LN;->a:Ljava/util/Map;

    sget-object v6, Lcom/nianticproject/ingress/shared/af;->g:Lcom/nianticproject/ingress/shared/af;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/16 v6, 0x8

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ;

    iget-object v1, v1, LQ;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;

    invoke-static {v5}, LN;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextButton;->setText(Ljava/lang/String;)V

    sget-object v1, LJ;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v1, v0, LN;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Items: %,d - XM: %,d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v10

    const/4 v2, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v9, v2

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, LN;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Keys:  "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " distinct portals"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, LN;->a:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/ui/widget/aa;->a()V

    return-void

    :pswitch_5
    move v2, v11

    goto/16 :goto_5

    :pswitch_6
    move v2, v11

    goto/16 :goto_4

    :pswitch_7
    move v2, v11

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-class v0, LN;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
