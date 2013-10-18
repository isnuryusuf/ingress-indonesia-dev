.class public final Lcom/nianticproject/ingress/common/playerprofile/af;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final b:F

.field private final c:F

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field private f:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V

    .line 95
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 96
    iput p2, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->b:F

    .line 97
    iput p3, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->c:F

    .line 98
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/af;->b()Lcom/nianticproject/ingress/common/playerprofile/ai;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/common/playerprofile/af;->a(Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;Lcom/nianticproject/ingress/common/playerprofile/ai;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;Lcom/nianticproject/ingress/common/playerprofile/ai;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 360
    sget-object v0, Lcom/nianticproject/ingress/common/playerprofile/ah;->a:[I

    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/playerprofile/ai;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Tab "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :pswitch_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->c()Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 364
    :pswitch_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :pswitch_2
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :pswitch_3
    invoke-virtual {p0}, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a()V
    .locals 14

    .prologue
    const/high16 v13, 0x4140

    const/high16 v12, -0x3f00

    const/4 v5, 0x1

    const/high16 v11, 0x4180

    const/4 v3, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/af;->reset()V

    .line 117
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget v1, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->b:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setWidth(F)V

    .line 125
    invoke-static {}, Lcom/google/a/c/jc;->c()Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;

    .line 128
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ai;->values()[Lcom/nianticproject/ingress/common/playerprofile/ai;

    move-result-object v6

    array-length v7, v6

    move v1, v3

    :goto_0
    if-ge v1, v7, :cond_2

    aget-object v8, v6, v1

    .line 130
    invoke-virtual {v2, v8}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 131
    invoke-static {v0, v8}, Lcom/nianticproject/ingress/common/playerprofile/af;->a(Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;Lcom/nianticproject/ingress/common/playerprofile/ai;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 136
    invoke-virtual {v2, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ai;->values()[Lcom/nianticproject/ingress/common/playerprofile/ai;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 145
    :cond_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/af;->b()Lcom/nianticproject/ingress/common/playerprofile/ai;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ai;

    add-int/lit8 v4, v2, 0x1

    if-nez v2, :cond_6

    move v6, v5

    :goto_3
    if-eqz v1, :cond_8

    if-ne v0, v1, :cond_7

    move v2, v5

    :goto_4
    if-nez v6, :cond_4

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v10, "vertical-separator"

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getPatch(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/c;->h()Lcom/a/a/c;

    move-result-object v6

    invoke-static {v11}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v6

    invoke-static {v11}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    :cond_4
    new-instance v6, Lcom/nianticproject/ingress/common/playerprofile/aj;

    iget-object v9, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-direct {v6, v9, v0}, Lcom/nianticproject/ingress/common/playerprofile/aj;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/playerprofile/ai;)V

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ag;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/playerprofile/ag;-><init>(Lcom/nianticproject/ingress/common/playerprofile/af;)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->add(Lcom/badlogic/gdx/scenes/scene2d/ui/Button;)V

    if-eqz v2, :cond_5

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Button;->setChecked(Z)V

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    move v6, v3

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    move v2, v6

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x41c0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x41c0

    invoke-virtual {v0, v1}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 154
    invoke-static {}, Lcom/google/a/c/eq;->b()Ljava/util/LinkedList;

    move-result-object v1

    .line 156
    invoke-static {}, Lcom/google/a/c/al;->i()Lcom/google/a/c/al;

    move-result-object v2

    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;

    .line 160
    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/af;->a(Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 161
    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->b()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual {v2, v5}, Lcom/google/a/c/al;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 167
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_b

    .line 169
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_b
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 179
    :cond_c
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-virtual {v2, v0}, Lcom/google/a/c/al;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 182
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 183
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v7, "profiles-category-background"

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v8, "profiles-category"

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v13}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v1

    invoke-static {v13}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    move-result-object v1

    iget v7, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->c:F

    invoke-virtual {v1, v7}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v1

    const/high16 v7, 0x4100

    invoke-static {v7}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v7, "profiles-category"

    const-class v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v7

    neg-float v7, v7

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    iget-object v8, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v8

    neg-float v8, v8

    const v9, 0x3dcccccd

    mul-float/2addr v8, v9

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-direct {v9, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v12}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 186
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;

    .line 187
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v7, Lcom/nianticproject/ingress/common/ui/widget/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;->a()Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v9, "profiles-metric-name"

    const-class v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v1, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v7, v8, v1, v3}, Lcom/nianticproject/ingress/common/ui/widget/g;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    iget v7, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->c:F

    invoke-virtual {v1, v7}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->g()Lcom/a/a/c;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/af;->a(Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    const-string/jumbo v8, "profiles-metric-value"

    const-class v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-direct {v7, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v0, 0x10

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v0

    invoke-static {v12}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    goto :goto_6

    .line 193
    :cond_f
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/af;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-static {v1}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    .line 195
    return-void

    :cond_10
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/af;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/af;->a()V

    return-void
.end method

.method private b()Lcom/nianticproject/ingress/common/playerprofile/ai;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    if-nez v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-object v0

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->getChecked()Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ButtonGroup;->getChecked()Lcom/badlogic/gdx/scenes/scene2d/ui/Button;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/aj;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/aj;->a()Lcom/nianticproject/ingress/common/playerprofile/ai;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/FormattedAggregateMetric;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/af;->d:Ljava/util/List;

    .line 107
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/playerprofile/af;->a()V

    .line 108
    return-void
.end method
