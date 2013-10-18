.class public final Lcom/nianticproject/ingress/common/playerprofile/x;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field private final a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nianticproject/ingress/common/j/d;",
            "Lcom/nianticproject/ingress/common/playerprofile/BadgeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/common/j/av;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;I)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/x;->b:Ljava/util/HashMap;

    .line 37
    invoke-static/range {p3 .. p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/x;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .line 38
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static/range {p2 .. p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/x;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 45
    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 47
    move/from16 v0, p4

    int-to-float v1, v0

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 49
    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)V

    .line 50
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 51
    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    int-to-float v3, v8

    invoke-virtual {v2, v3}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v2

    int-to-float v3, v8

    invoke-virtual {v2, v3}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 54
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Ljava/util/List;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;

    move-result-object v2

    .line 56
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/nianticproject/ingress/common/playerprofile/x;->a(Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/BadgeView;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;I)V

    .line 59
    const-string/jumbo v1, "profiles-badge-details-title"

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 61
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 62
    const-string/jumbo v1, "profiles-badge-details-desc"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 64
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 65
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    .line 68
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 69
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 70
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 73
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    .line 78
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v3

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 83
    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x41c0

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    .line 89
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/x;->row()Lcom/a/a/c;

    .line 90
    invoke-virtual {p0, v7}, Lcom/nianticproject/ingress/common/playerprofile/x;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x41c0

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->i(F)Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x41c0

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->k(F)Lcom/a/a/c;

    .line 97
    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 98
    const-string/jumbo v1, "tile-diag"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->getTiledDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    .line 100
    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 101
    move/from16 v0, p4

    int-to-float v1, v0

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    float-to-int v11, v1

    .line 103
    const/4 v2, 0x0

    .line 104
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 105
    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 108
    invoke-virtual {p1}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v7, v1

    move v8, v2

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;

    .line 109
    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 110
    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Z)V

    .line 111
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 112
    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    int-to-float v3, v11

    invoke-virtual {v2, v3}, Lcom/a/a/c;->b(F)Lcom/a/a/c;

    move-result-object v2

    int-to-float v3, v11

    invoke-virtual {v2, v3}, Lcom/a/a/c;->c(F)Lcom/a/a/c;

    .line 116
    const-string/jumbo v2, "profiles-badge-details-tier-value"

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 118
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 119
    invoke-virtual {v13, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    .line 122
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1, v4, v11}, Lcom/nianticproject/ingress/common/playerprofile/x;->a(Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/BadgeView;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;I)V

    .line 125
    const/4 v1, 0x3

    if-ne v8, v1, :cond_1

    .line 126
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    .line 127
    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 131
    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    const/high16 v3, 0x4100

    invoke-static {v3}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/c;->g()Lcom/a/a/c;

    .line 135
    const/4 v8, 0x0

    .line 138
    :goto_1
    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v2

    const v3, 0x3eaaaaab

    invoke-static {v3}, Lcom/a/a/e;->a(F)Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/a/a/c;->a(Lcom/a/a/e;)Lcom/a/a/c;

    .line 141
    add-int/lit8 v2, v8, 0x1

    move-object v7, v1

    move v8, v2

    .line 142
    goto/16 :goto_0

    .line 143
    :cond_0
    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x4180

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x4180

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->j(F)Lcom/a/a/c;

    .line 149
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/x;->row()Lcom/a/a/c;

    .line 150
    invoke-virtual {p0, v9}, Lcom/nianticproject/ingress/common/playerprofile/x;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->g()Lcom/a/a/c;

    move-result-object v1

    const/high16 v2, 0x4100

    invoke-static {v2}, Lcom/nianticproject/ingress/common/w/l;->a(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/a/c;->h(F)Lcom/a/a/c;

    .line 155
    return-void

    :cond_1
    move-object v1, v7

    goto :goto_1
.end method

.method private a(Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/BadgeView;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/x;->b:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievementTier;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p4}, Lcom/nianticproject/ingress/common/j/av;->a(Ljava/lang/String;I)Lcom/nianticproject/ingress/common/j/d;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/x;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/d;

    .line 188
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/j/d;->d()V

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method public final act(F)V
    .locals 5
    .parameter

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->act(F)V

    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/x;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/common/j/d;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/j/d;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/j/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/j/d;->b()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/x;->a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeView;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/playerprofile/BadgeView;)Lcom/nianticproject/ingress/common/playerprofile/BadgeView;

    goto :goto_0

    .line 184
    :cond_2
    return-void
.end method
